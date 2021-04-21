#include "librfu.h"

static void Sio32IDIntr(void);
static void Sio32IDInit(void);
static s32 Sio32IDMain(void);

struct RfuSIO32Id
{
    u8 MS_mode;
    u8 state;
    u16 count;
    u16 send_id;
    u16 recv_id;
    u16 unk8; // unused
    u16 lastId;
};

static struct RfuSIO32Id sRfuSIO32Id;

static const u16 Sio32ConnectionData[] = { 0x494e, 0x544e, 0x4e45, 0x4f44 }; // NINTENDO
static const char Sio32IDLib_Var[] = "Sio32ID_030820";

s32 AgbRFU_checkID(u8 maxTries)
{
    u16 ieBak;
    vu16 *regTMCNTL;
    s32 id;

    // Interrupts must be enabled
    if (REG_IME == 0)
        return -1;
    ieBak = REG_IE;
    gSTWIStatus->state = 10;
    STWI_set_Callback_ID(Sio32IDIntr);
    Sio32IDInit();
    regTMCNTL = &REG_TMCNT_L(gSTWIStatus->timerSelect);
    maxTries *= 8;
    while (--maxTries != 0xFF)
    {
        id = Sio32IDMain();
        if (id != 0)
            break;
        regTMCNTL[1] = 0;
        regTMCNTL[0] = 0;
        regTMCNTL[1] = TIMER_1024CLK | TIMER_ENABLE;
        while (regTMCNTL[0] < 32)
            ;
        regTMCNTL[1] = 0;
        regTMCNTL[0] = 0;
    }
    REG_IME = 0;
    REG_IE = ieBak;
    REG_IME = 1;
    gSTWIStatus->state = 0;
    STWI_set_Callback_ID(NULL);
    return id;
}

static void Sio32IDInit(void)
{
    REG_IME = 0;
    REG_IE &= ~((8 << gSTWIStatus->timerSelect) | INTR_FLAG_SERIAL);
    REG_IME = 1;
    REG_RCNT = 0;
    REG_SIOCNT = SIO_32BIT_MODE;
    REG_SIOCNT |= SIO_INTR_ENABLE | SIO_ENABLE;
    CpuFill32(0, &sRfuSIO32Id, sizeof(struct RfuSIO32Id));
    REG_IF = INTR_FLAG_SERIAL;
}

static s32 Sio32IDMain(void)
{
    switch (sRfuSIO32Id.state)
    {
    case 0:
        sRfuSIO32Id.MS_mode = AGB_CLK_MASTER;
        REG_SIOCNT |= SIO_38400_BPS;
        REG_IME = 0;
        REG_IE |= INTR_FLAG_SERIAL;
        REG_IME = 1;
        sRfuSIO32Id.state = 1;
        *(vu8 *)&REG_SIOCNT |= SIO_ENABLE;
        break;
    case 1:
        if (sRfuSIO32Id.lastId == 0)
        {
            if (sRfuSIO32Id.MS_mode == AGB_CLK_MASTER)
            {
                if (sRfuSIO32Id.count == 0)
                {
                    REG_IME = 0;
                    REG_SIOCNT |= SIO_ENABLE;
                    REG_IME = 1;
                }
            }
            else if (sRfuSIO32Id.send_id != RFU_ID && !sRfuSIO32Id.count)
            {
                REG_IME = 0;
                REG_IE &= ~INTR_FLAG_SERIAL;
                REG_IME = 1;
                REG_SIOCNT = 0;
                REG_SIOCNT = SIO_32BIT_MODE;
                REG_IF = INTR_FLAG_SERIAL;
                REG_SIOCNT |= SIO_INTR_ENABLE | SIO_ENABLE;
                REG_IME = 0;
                REG_IE |= INTR_FLAG_SERIAL;
                REG_IME = 1;
            }
            break;
        }
        else
        {
            sRfuSIO32Id.state = 2;
            // fallthrough
        }
    default:
        return sRfuSIO32Id.lastId;
    }
    return 0;
}

static void Sio32IDIntr(void)
{
    u32 regSIODATA32;
    u16 delay;
    u32 rfuSIO32IdUnk0_times_16;

    regSIODATA32 = REG_SIODATA32;
    if (sRfuSIO32Id.MS_mode != AGB_CLK_MASTER)
        REG_SIOCNT |= SIO_ENABLE;
    rfuSIO32IdUnk0_times_16 = (regSIODATA32 << (16 * sRfuSIO32Id.MS_mode)) >> 16;
    regSIODATA32 = (regSIODATA32 << 16 * (1 - sRfuSIO32Id.MS_mode)) >> 16;
    if (sRfuSIO32Id.lastId == 0)
    {
        u16 backup = rfuSIO32IdUnk0_times_16;
        if (backup == sRfuSIO32Id.recv_id)
        {
            if (sRfuSIO32Id.count < 4)
            {
                backup = (u16)~sRfuSIO32Id.send_id;
                if (sRfuSIO32Id.recv_id == backup)
                {
                    if (regSIODATA32 == (u16)~sRfuSIO32Id.recv_id)
                        ++sRfuSIO32Id.count;
                }
            }
            else
                sRfuSIO32Id.lastId = regSIODATA32;
        }
        else
        {
            sRfuSIO32Id.count = 0;
        }
    }
    if (sRfuSIO32Id.count < 4)
        sRfuSIO32Id.send_id = *(sRfuSIO32Id.count + Sio32ConnectionData);
    else
        sRfuSIO32Id.send_id = RFU_ID;
    sRfuSIO32Id.recv_id = ~regSIODATA32;
    REG_SIODATA32 = (sRfuSIO32Id.send_id << 16 * (1 - sRfuSIO32Id.MS_mode))
                  + (sRfuSIO32Id.recv_id << 16 * sRfuSIO32Id.MS_mode);
    if (sRfuSIO32Id.MS_mode == AGB_CLK_MASTER && (sRfuSIO32Id.count != 0 || regSIODATA32 == 0x494e))
    {
        for (delay = 0; delay < 600; ++delay)
            ;
        if (sRfuSIO32Id.lastId == 0)
            REG_SIOCNT |= SIO_ENABLE;
    }
}
