ENTRY(__start)

MEMORY {
    ewram (w!x) : ORIGIN = 0x02000000, LENGTH = 256K
    iwram (w!x) : ORIGIN = 0x03000000, LENGTH = 32K
    rom (rx) : ORIGIN = 0x08000000, LENGTH = 32M
}

SECTIONS {
    ewram (NOLOAD) : ALIGN(4) {
        . = 0x00000000; gUnk_02000000 = .;
        . = 0x00000004; gUnk_02000004 = .;
        . = 0x00000014; gUnk_02000014 = .;
        . = 0x00001000; gUnk_02001000 = .;
        . = 0x00010000; gUnk_02010000 = .;
        . = 0x00010300; gUnk_02010300 = .;
        . = 0x0001032C; gUnk_0201032C = .;
        . = 0x00010330; gUnk_02010330 = .;
        . = 0x000109F0; gUnk_020109F0 = .;
        . = 0x000309F0; *libc.a:impure.o(.data);
        . = ALIGN(4); *libc.a:locale.o(.data);
        . = ALIGN(4); *libc.a:mallocr.o(.data);
        . = 0x00038000; end = .;
        . = 0x00040000;
    } >ewram

    iwram (NOLOAD) : ALIGN(4) {
        . = 0x00000000; gUnk_03000000 = .;
        . = 0x00000010; gUnk_03000010 = .;
        . = 0x00000014; gIntrTable = .;
        . = 0x0000002C; gUnk_0300002C = .;
        . = 0x0000004C; gUnk_0300004C = .;
        . = 0x0000004D; gUnk_0300004D = .;
        . = 0x00000050; gUnk_03000050 = .;
        . = 0x000000F0; gUnk_030000F0 = .;
        . = 0x000000FA; gUnk_030000FA = .;
        . = 0x00000250; gUnk_03000250 = .;
        . = 0x00000750; gUnk_03000750 = .;
        . = 0x00000B50; gUnk_03000B50 = .;
        . = 0x00000B52; gUnk_03000B52 = .;
        . = 0x00000B54; gUnk_03000B54 = .;
        . = 0x00000B58; gUnk_03000B58 = .;
        . = 0x00000B5C; gUnk_03000B5C = .;
        . = 0x00000B5D; gUnk_03000B5D = .;
        . = 0x00000B5E; gUnk_03000B5E = .;
        . = 0x00000B60; gUnk_03000B60 = .;
        . = 0x000019F0; gUnk_030019F0 = .;
        . = 0x000019F4; gUnk_030019F4 = .;
        . = 0x000019F5; gUnk_030019F5 = .;
        . = 0x000019F6; gUnk_030019F6 = .;
        . = 0x000019F8; gUnk_030019F8 = .;
        . = 0x00001A00; gUnk_03001A00 = .;
        . = 0x00001A18; gUnk_03001A18 = .;
        . = 0x00001A42; gUnk_03001A42 = .;
        . = 0x00001B48; gUnk_03001B48 = .;
        . = 0x00001B49; gUnk_03001B49 = .;
        . = 0x00001B4A; gUnk_03001B4A = .;
        . = 0x00001B4B; gUnk_03001B4B = .;
        . = 0x00001B4C; gUnk_03001B4C = .;
        . = 0x00001B4D; gUnk_03001B4D = .;
        . = 0x00001B4E; gUnk_03001B4E = .;
        . = 0x00001B4F; gUnk_03001B4F = .;
        . = 0x00001B50; gUnk_03001B50 = .;
        . = 0x00001B51; gUnk_03001B51 = .;
        . = 0x00001B58; gUnk_03001B58 = .;
        . = 0x00001B68; gUnk_03001B68 = .;
        . = 0x00001B70; gUnk_03001B70 = .;
        . = 0x00001B85; gUnk_03001B85 = .;
        . = 0x00001B86; gUnk_03001B86 = .;
        . = 0x00001B87; gUnk_03001B87 = .;
        . = 0x00001B88; gUnk_03001B88 = .;
        . = 0x00001B8C; gUnk_03001B8C = .;
        . = 0x00001B90; gUnk_03001B90 = .;
        . = 0x00001CE0; gUnk_03001CE0 = .;
        . = 0x00001CF0; gUnk_03001CF0 = .;
        . = 0x00001D00; gUnk_03001D00 = .;
        . = 0x00001D08; gUnk_03001D08 = .;
        . = 0x00001D10; gUnk_03001D10 = .;
        . = 0x00001D18; gUnk_03001D18 = .;
        . = 0x00001D19; gUnk_03001D19 = .;
        . = 0x00001D1A; gUnk_03001D1A = .;
        . = 0x00001D1B; gUnk_03001D1B = .;
        . = 0x00001D1C; gUnk_03001D1C = .;
        . = 0x00001D20; gUnk_03001D20 = .;
        . = 0x00001D2C; gUnk_03001D2C = .;
        . = 0x00001D2D; gUnk_03001D2D = .;
        . = 0x00001D2E; gUnk_03001D2E = .;
        . = 0x00001D2F; gUnk_03001D2F = .;
        . = 0x00001D30; gUnk_03001D30 = .;
        . = 0x00001D31; gUnk_03001D31 = .;
        . = 0x00001D32; gUnk_03001D32 = .;
        . = 0x00001D33; gUnk_03001D33 = .;
        . = 0x00001D34; gUnk_03001D34 = .;
        . = 0x00001D38; gUnk_03001D38 = .;
        . = 0x00001D42; gUnk_03001D42 = .;
        . = 0x00001D43; gUnk_03001D43 = .;
        . = 0x00001D44; gUnk_03001D44 = .;
        . = 0x00001D48; gUnk_03001D48 = .;
        . = 0x00001D58; gUnk_03001D58 = .;
        . = 0x00001D92; gUnk_03001D92 = .;
        . = 0x00001D94; gUnk_03001D94 = .;
        . = 0x000023D8; gUnk_030023D8 = .;
        . = 0x000023DC; gUnk_030023DC = .;
        . = 0x000023DD; gUnk_030023DD = .;
        . = 0x000023DE; gUnk_030023DE = .;
        . = 0x000023DF; gUnk_030023DF = .;
        . = 0x000023E0; gUnk_030023E0 = .;
        . = 0x000023E2; gUnk_030023E2 = .;
        . = 0x000023E4; gUnk_030023E4 = .;
        . = 0x000023E8; gUnk_030023E8 = .;
        . = 0x000023F0;
        . = ALIGN(8); src/librfu_rfu.o(.bss);
        . = ALIGN(8); src/librfu_sio32id.o(.bss);
        . = ALIGN(4); src/siirtc.o(.bss);
        . = ALIGN(8); src/agb_flash.o(.bss);
        . = ALIGN(8); *libc.a:syscalls.o(.bss);
        . = ALIGN(8); *libgcc.a:dp-bit.o(.bss);
        . = ALIGN(8); *libgcc.a:fp-bit.o(.bss);
        . = ALIGN(8); gSTWIStatus = .;
        . = 0x00002510; gRfuSlotStatusUNI = .;
        . = 0x00002520; gUnk_03002520 = .;
        . = 0x00002530; gRfuSlotStatusNI = .;
        . = 0x00002540; gRfuLinkStatus = .;
        . = 0x00002544; gRfuStatic = .;
        . = 0x00002548; gRfuFixed = .;

        . = 0x0000254C; gFlashTimeoutFlag = .;
        . = 0x00002550; PollFlashStatus = .;
        . = 0x00002558; ProgramFlashSector = .;
        . = 0x0000255C; gFlash = .;
        . = 0x0000256C; gFlashMaxTime = .;

        . = 0x00002570; *libc.a:sbrkr.o(COMMON);

        . = 0x00007F00; gUnk_03007F00 = .;
        . = 0x00008000;
    } >iwram

    rom : ALIGN(4) {
        asm/crt0.o(.text);
        asm/code.o(.text);
        asm/link_manager.o(.text);
        asm/code_08004F74.o(.text);
        src/librfu_stwi.o(.text);
        src/librfu_intr.o(.text);
        src/librfu_rfu.o(.text);
        src/librfu_sio32id.o(.text);
        src/siirtc.o(.text);
        src/agb_flash.o(.text);
        asm/libagbsyscall.o(.text);
        *libgcc.a:_call_via_rX.o(.text);
        *libgcc.a:_divsi3.o(.text);
        *libgcc.a:_dvmd_tls.o(.text);
        *libgcc.a:_umodsi3.o(.text);
        *libc.a:memcmp.o(.text);
        *libc.a:memcpy.o(.text);
        *libc.a:memset.o(.text);
        *libc.a:rand.o(.text);
        *libc.a:sprintf.o(.text);
        *libc.a:strcmp.o(.text);
        *libc.a:vfprintf.o(.text);
        *libc.a:wsetup.o(.text);
        *libc.a:dtoa.o(.text);
        *libc.a:fflush.o(.text);
        *libc.a:findfp.o(.text);
        *libc.a:freer.o(.text);
        *libc.a:mtrim.o(.text);
        *libc.a:fvwrite.o(.text);
        *libc.a:fwalk.o(.text);
        *libc.a:locale.o(.text);
        *libc.a:makebuf.o(.text);
        *libc.a:mallocr.o(.text);
        *libc.a:mbtowc_r.o(.text);
        *libc.a:memchr.o(.text);
        *libc.a:memmove.o(.text);
        *libc.a:mlock.o(.text);
        *libc.a:mprec.o(.text);
        *libc.a:s_isinf.o(.text);
        *libc.a:s_isnan.o(.text);
        *libc.a:sbrkr.o(.text);
        *libc.a:stdio.o(.text);
        *libc.a:strlen.o(.text);
        *libc.a:syscalls.o(.text);
        *libc.a:writer.o(.text);
        *libc.a:callocr.o(.text);
        *libc.a:closer.o(.text);
        *libc.a:errno.o(.text);
        *libc.a:fstatr.o(.text);
        *libc.a:libcfunc.o(.text);
        *libc.a:lseekr.o(.text);
        *libc.a:readr.o(.text);
        *libgcc.a:_modsi3.o(.text);
        *libgcc.a:_udivsi3.o(.text);
        *libgcc.a:dp-bit.o(.text);
        *libgcc.a:fp-bit.o(.text);
        *libgcc.a:_lshrdi3.o(.text);
        *libgcc.a:_muldi3.o(.text);
        *libgcc.a:_negdi2.o(.text);
        data/data.o(.rodata);
        src/librfu_rfu.o(.rodata);
        src/librfu_sio32id.o(.rodata);
        src/siirtc.o(.rodata);
        data/data.o(.rodata.808E348);
        *libc.a:vfprintf.o(.rodata);
        *libc.a:dtoa.o(.rodata);
        data/data.o(.rodata.808E448);
        *libc.a:locale.o(.rodata);
        *libc.a:mprec.o(.rodata);
        *libc.a:syscalls.o(.rodata);
        data/data.o(.rodata.808E5D4);
    } >rom

    /* DWARF 2 sections */
    .debug_aranges  0 : { *(.debug_aranges) }
    .debug_pubnames 0 : { *(.debug_pubnames) }
    .debug_info     0 : { *(.debug_info) }
    .debug_abbrev   0 : { *(.debug_abbrev) }
    .debug_line     0 : { *(.debug_line) }
    .debug_frame    0 : { *(.debug_frame) }
    .debug_str      0 : { *(.debug_str) }
    .debug_loc      0 : { *(.debug_loc) }
    .debug_macinfo  0 : { *(.debug_macinfo) }

    /* Discard everything not specifically mentioned above. */
    /DISCARD/ :
    {
        *(*);
    }
}
