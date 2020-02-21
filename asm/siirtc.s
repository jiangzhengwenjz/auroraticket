	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

/*
 * Note: 
 * This file is compiled with -O0. 
 */

	thumb_func_start SiiRtcUnprotect
SiiRtcUnprotect: @ 0x0800BDA4
	push {r7, lr}
	mov r7, sp
	bl EnableGpioPortRead
	ldr r0, _0800BDB8 @ =sLocked
	movs r1, #0
	strb r1, [r0]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BDB8: .4byte sLocked

	thumb_func_start SiiRtcProtect
SiiRtcProtect: @ 0x0800BDBC
	push {r7, lr}
	mov r7, sp
	bl DisableGpioPortRead
	ldr r0, _0800BDD0 @ =sLocked
	movs r1, #1
	strb r1, [r0]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BDD0: .4byte sLocked

	thumb_func_start SiiRtcProbe
SiiRtcProbe: @ 0x0800BDD4
	push {r7, lr}
	sub sp, #0x10
	mov r7, sp
	adds r1, r7, #4
	adds r0, r1, #0
	bl SiiRtcGetStatus
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0
	bne _0800BDEE
	movs r0, #0
	b _0800BEA2
_0800BDEE:
	adds r0, r7, #0
	movs r1, #0
	strb r1, [r0]
	adds r0, r7, #4
	ldrb r1, [r0, #7]
	movs r2, #0xc0
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0x80
	beq _0800BE1E
	adds r0, r7, #4
	ldrb r1, [r0, #7]
	movs r2, #0xc0
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0
	bne _0800BE3C
	b _0800BE1E
_0800BE1E:
	bl SiiRtcReset
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0
	bne _0800BE2E
	movs r0, #0
	b _0800BEA2
_0800BE2E:
	adds r1, r7, #0
	adds r0, r7, #0
	adds r1, r7, #0
	ldrb r2, [r1]
	adds r1, r2, #1
	adds r2, r1, #0
	strb r2, [r0]
_0800BE3C:
	adds r1, r7, #4
	adds r0, r1, #0
	bl SiiRtcGetTime
	adds r0, r7, #4
	ldrb r1, [r0, #6]
	movs r2, #0x80
	adds r0, r1, #0
	ands r0, r2
	adds r2, r0, #0
	lsls r1, r2, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0
	beq _0800BE8A
	bl SiiRtcReset
	lsls r1, r0, #0x18
	lsrs r0, r1, #0x18
	cmp r0, #0
	bne _0800BE7C
	adds r0, r7, #0
	ldrb r1, [r0]
	lsls r0, r1, #4
	adds r1, r0, #0
	movs r2, #0xf
	adds r0, r1, #0
	bics r0, r2
	adds r1, r0, #0
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
	adds r0, r1, #0
	b _0800BEA2
_0800BE7C:
	adds r1, r7, #0
	adds r0, r7, #0
	adds r1, r7, #0
	ldrb r2, [r1]
	adds r1, r2, #1
	adds r2, r1, #0
	strb r2, [r0]
_0800BE8A:
	adds r0, r7, #0
	ldrb r1, [r0]
	lsls r0, r1, #4
	adds r1, r0, #0
	movs r2, #1
	adds r0, r1, #0
	orrs r0, r2
	adds r1, r0, #0
	lsls r0, r1, #0x18
	lsrs r1, r0, #0x18
	adds r0, r1, #0
	b _0800BEA2
_0800BEA2:
	add sp, #0x10
	pop {r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start SiiRtcReset
SiiRtcReset: @ 0x0800BEAC
	push {r7, lr}
	sub sp, #0x10
	mov r7, sp
	ldr r0, _0800BEC0 @ =sLocked
	ldrb r1, [r0]
	cmp r1, #1
	bne _0800BEC4
	movs r0, #0
	b _0800BF28
	.align 2, 0
_0800BEC0: .4byte sLocked
_0800BEC4:
	ldr r0, _0800BF1C @ =sLocked
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0800BF20 @ =GPIOPortData
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800BF20 @ =GPIOPortData
	movs r1, #5
	strh r1, [r0]
	ldr r0, _0800BF24 @ =GPIOPortDirection
	movs r1, #7
	strh r1, [r0]
	movs r0, #0x60
	bl WriteCommand
	ldr r0, _0800BF20 @ =GPIOPortData
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800BF20 @ =GPIOPortData
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800BF1C @ =sLocked
	movs r1, #0
	strb r1, [r0]
	adds r0, r7, #4
	ldrb r1, [r0, #7]
	movs r2, #0
	ands r1, r2
	adds r2, r1, #0
	movs r3, #0x40
	adds r1, r2, #0
	orrs r1, r3
	adds r2, r1, #0
	strb r2, [r0, #7]
	adds r1, r7, #4
	adds r0, r1, #0
	bl SiiRtcSetStatus
	adds r1, r7, #0
	strb r0, [r1]
	adds r0, r7, #0
	ldrb r1, [r0]
	adds r0, r1, #0
	b _0800BF28
	.align 2, 0
_0800BF1C: .4byte sLocked
_0800BF20: .4byte GPIOPortData
_0800BF24: .4byte GPIOPortDirection
_0800BF28:
	add sp, #0x10
	pop {r7}
	pop {r1}
	bx r1

	thumb_func_start SiiRtcGetStatus
SiiRtcGetStatus: @ 0x0800BF30
	push {r4, r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, _0800BF44 @ =sLocked
	ldrb r1, [r0]
	cmp r1, #1
	bne _0800BF48
	movs r0, #0
	b _0800BFF4
	.align 2, 0
_0800BF44: .4byte sLocked
_0800BF48:
	ldr r0, _0800BFE8 @ =sLocked
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0800BFEC @ =GPIOPortData
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800BFEC @ =GPIOPortData
	movs r1, #5
	strh r1, [r0]
	ldr r0, _0800BFF0 @ =GPIOPortDirection
	movs r1, #7
	strh r1, [r0]
	movs r0, #0x63
	bl WriteCommand
	ldr r0, _0800BFF0 @ =GPIOPortDirection
	movs r1, #5
	strh r1, [r0]
	bl ReadData
	adds r1, r7, #4
	strb r0, [r1]
	ldr r0, [r7]
	adds r1, r7, #4
	ldrb r2, [r1]
	movs r3, #0xc0
	adds r1, r2, #0
	ands r1, r3
	adds r2, r7, #4
	ldrb r3, [r2]
	movs r4, #0x20
	adds r2, r3, #0
	ands r2, r4
	adds r4, r2, #0
	lsls r3, r4, #0x18
	lsrs r2, r3, #0x18
	lsrs r3, r2, #3
	adds r2, r3, #0
	orrs r1, r2
	adds r2, r7, #4
	ldrb r3, [r2]
	movs r4, #8
	adds r2, r3, #0
	ands r2, r4
	adds r4, r2, #0
	lsls r3, r4, #0x18
	lsrs r2, r3, #0x18
	lsrs r3, r2, #2
	adds r2, r3, #0
	orrs r1, r2
	adds r2, r7, #4
	ldrb r3, [r2]
	movs r4, #2
	adds r2, r3, #0
	ands r2, r4
	adds r4, r2, #0
	lsls r3, r4, #0x18
	lsrs r2, r3, #0x18
	lsrs r3, r2, #1
	adds r2, r3, #0
	orrs r1, r2
	ldrb r2, [r0, #7]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0, #7]
	ldr r0, _0800BFEC @ =GPIOPortData
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800BFEC @ =GPIOPortData
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800BFE8 @ =sLocked
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	b _0800BFF4
	.align 2, 0
_0800BFE8: .4byte sLocked
_0800BFEC: .4byte GPIOPortData
_0800BFF0: .4byte GPIOPortDirection
_0800BFF4:
	add sp, #8
	pop {r4, r7}
	pop {r1}
	bx r1

	thumb_func_start SiiRtcSetStatus
SiiRtcSetStatus: @ 0x0800BFFC
	push {r4, r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, _0800C010 @ =sLocked
	ldrb r1, [r0]
	cmp r1, #1
	bne _0800C014
	movs r0, #0
	b _0800C09C
	.align 2, 0
_0800C010: .4byte sLocked
_0800C014:
	ldr r0, _0800C090 @ =sLocked
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0800C094 @ =GPIOPortData
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800C094 @ =GPIOPortData
	movs r1, #5
	strh r1, [r0]
	adds r0, r7, #4
	ldr r1, [r7]
	ldrb r2, [r1, #7]
	movs r3, #4
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	lsls r1, r2, #3
	ldr r2, [r7]
	ldrb r3, [r2, #7]
	movs r4, #2
	adds r2, r3, #0
	ands r2, r4
	adds r3, r2, #0
	lsls r2, r3, #2
	adds r3, r2, #0
	movs r4, #0x40
	adds r2, r3, #0
	orrs r2, r4
	orrs r1, r2
	ldr r2, [r7]
	ldrb r3, [r2, #7]
	movs r4, #1
	adds r2, r3, #0
	ands r2, r4
	adds r3, r2, #0
	lsls r2, r3, #1
	orrs r1, r2
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _0800C098 @ =GPIOPortDirection
	movs r1, #7
	strh r1, [r0]
	movs r0, #0x62
	bl WriteCommand
	adds r0, r7, #4
	ldrb r1, [r0]
	adds r0, r1, #0
	bl WriteData
	ldr r0, _0800C094 @ =GPIOPortData
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800C094 @ =GPIOPortData
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800C090 @ =sLocked
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	b _0800C09C
	.align 2, 0
_0800C090: .4byte sLocked
_0800C094: .4byte GPIOPortData
_0800C098: .4byte GPIOPortDirection
_0800C09C:
	add sp, #8
	pop {r4, r7}
	pop {r1}
	bx r1

	thumb_func_start SiiRtcGetDateTime
SiiRtcGetDateTime: @ 0x0800C0A4
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, _0800C0B8 @ =sLocked
	ldrb r1, [r0]
	cmp r1, #1
	bne _0800C0BC
	movs r0, #0
	b _0800C14C
	.align 2, 0
_0800C0B8: .4byte sLocked
_0800C0BC:
	ldr r0, _0800C0F0 @ =sLocked
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0800C0F4 @ =GPIOPortData
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800C0F4 @ =GPIOPortData
	movs r1, #5
	strh r1, [r0]
	ldr r0, _0800C0F8 @ =GPIOPortDirection
	movs r1, #7
	strh r1, [r0]
	movs r0, #0x65
	bl WriteCommand
	ldr r0, _0800C0F8 @ =GPIOPortDirection
	movs r1, #5
	strh r1, [r0]
	adds r0, r7, #4
	movs r1, #0
	strb r1, [r0]
_0800C0E6:
	adds r0, r7, #4
	ldrb r1, [r0]
	cmp r1, #6
	bls _0800C0FC
	b _0800C11A
	.align 2, 0
_0800C0F0: .4byte sLocked
_0800C0F4: .4byte GPIOPortData
_0800C0F8: .4byte GPIOPortDirection
_0800C0FC:
	bl ReadData
	adds r1, r7, #4
	ldrb r2, [r1]
	ldr r3, [r7]
	adds r1, r2, r3
	strb r0, [r1]
	adds r1, r7, #4
	adds r0, r7, #4
	adds r1, r7, #4
	ldrb r2, [r1]
	adds r1, r2, #1
	adds r2, r1, #0
	strb r2, [r0]
	b _0800C0E6
_0800C11A:
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r2, [r7]
	adds r1, r2, #4
	ldrb r2, [r1]
	movs r3, #0x7f
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _0800C144 @ =GPIOPortData
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800C144 @ =GPIOPortData
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800C148 @ =sLocked
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	b _0800C14C
	.align 2, 0
_0800C144: .4byte GPIOPortData
_0800C148: .4byte sLocked
_0800C14C:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	thumb_func_start SiiRtcSetDateTime
SiiRtcSetDateTime: @ 0x0800C154
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, _0800C168 @ =sLocked
	ldrb r1, [r0]
	cmp r1, #1
	bne _0800C16C
	movs r0, #0
	b _0800C1E8
	.align 2, 0
_0800C168: .4byte sLocked
_0800C16C:
	ldr r0, _0800C19C @ =sLocked
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0800C1A0 @ =GPIOPortData
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800C1A0 @ =GPIOPortData
	movs r1, #5
	strh r1, [r0]
	ldr r0, _0800C1A4 @ =GPIOPortDirection
	movs r1, #7
	strh r1, [r0]
	movs r0, #0x64
	bl WriteCommand
	adds r0, r7, #4
	movs r1, #0
	strb r1, [r0]
_0800C190:
	adds r0, r7, #4
	ldrb r1, [r0]
	cmp r1, #6
	bls _0800C1A8
	b _0800C1C8
	.align 2, 0
_0800C19C: .4byte sLocked
_0800C1A0: .4byte GPIOPortData
_0800C1A4: .4byte GPIOPortDirection
_0800C1A8:
	adds r0, r7, #4
	ldrb r1, [r0]
	ldr r2, [r7]
	adds r0, r1, r2
	ldrb r1, [r0]
	adds r0, r1, #0
	bl WriteData
	adds r1, r7, #4
	adds r0, r7, #4
	adds r1, r7, #4
	ldrb r2, [r1]
	adds r1, r2, #1
	adds r2, r1, #0
	strb r2, [r0]
	b _0800C190
_0800C1C8:
	ldr r0, _0800C1E0 @ =GPIOPortData
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800C1E0 @ =GPIOPortData
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800C1E4 @ =sLocked
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	b _0800C1E8
	.align 2, 0
_0800C1E0: .4byte GPIOPortData
_0800C1E4: .4byte sLocked
_0800C1E8:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	thumb_func_start SiiRtcGetTime
SiiRtcGetTime: @ 0x0800C1F0
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, _0800C204 @ =sLocked
	ldrb r1, [r0]
	cmp r1, #1
	bne _0800C208
	movs r0, #0
	b _0800C29C
	.align 2, 0
_0800C204: .4byte sLocked
_0800C208:
	ldr r0, _0800C23C @ =sLocked
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0800C240 @ =GPIOPortData
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800C240 @ =GPIOPortData
	movs r1, #5
	strh r1, [r0]
	ldr r0, _0800C244 @ =GPIOPortDirection
	movs r1, #7
	strh r1, [r0]
	movs r0, #0x67
	bl WriteCommand
	ldr r0, _0800C244 @ =GPIOPortDirection
	movs r1, #5
	strh r1, [r0]
	adds r0, r7, #4
	movs r1, #0
	strb r1, [r0]
_0800C232:
	adds r0, r7, #4
	ldrb r1, [r0]
	cmp r1, #2
	bls _0800C248
	b _0800C268
	.align 2, 0
_0800C23C: .4byte sLocked
_0800C240: .4byte GPIOPortData
_0800C244: .4byte GPIOPortDirection
_0800C248:
	bl ReadData
	adds r1, r7, #4
	ldrb r2, [r1]
	ldr r3, [r7]
	adds r1, r2, r3
	adds r2, r1, #4
	strb r0, [r2]
	adds r1, r7, #4
	adds r0, r7, #4
	adds r1, r7, #4
	ldrb r2, [r1]
	adds r1, r2, #1
	adds r2, r1, #0
	strb r2, [r0]
	b _0800C232
_0800C268:
	ldr r1, [r7]
	adds r0, r1, #4
	ldr r2, [r7]
	adds r1, r2, #4
	ldrb r2, [r1]
	movs r3, #0x7f
	adds r1, r2, #0
	ands r1, r3
	adds r2, r1, #0
	strb r2, [r0]
	ldr r0, _0800C294 @ =GPIOPortData
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800C294 @ =GPIOPortData
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800C298 @ =sLocked
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	b _0800C29C
	.align 2, 0
_0800C294: .4byte GPIOPortData
_0800C298: .4byte sLocked
_0800C29C:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	thumb_func_start SiiRtcSetTime
SiiRtcSetTime: @ 0x0800C2A4
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, _0800C2B8 @ =sLocked
	ldrb r1, [r0]
	cmp r1, #1
	bne _0800C2BC
	movs r0, #0
	b _0800C338
	.align 2, 0
_0800C2B8: .4byte sLocked
_0800C2BC:
	ldr r0, _0800C2EC @ =sLocked
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0800C2F0 @ =GPIOPortData
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800C2F0 @ =GPIOPortData
	movs r1, #5
	strh r1, [r0]
	ldr r0, _0800C2F4 @ =GPIOPortDirection
	movs r1, #7
	strh r1, [r0]
	movs r0, #0x66
	bl WriteCommand
	adds r0, r7, #4
	movs r1, #0
	strb r1, [r0]
_0800C2E0:
	adds r0, r7, #4
	ldrb r1, [r0]
	cmp r1, #2
	bls _0800C2F8
	b _0800C31A
	.align 2, 0
_0800C2EC: .4byte sLocked
_0800C2F0: .4byte GPIOPortData
_0800C2F4: .4byte GPIOPortDirection
_0800C2F8:
	adds r0, r7, #4
	ldrb r1, [r0]
	ldr r2, [r7]
	adds r0, r1, r2
	adds r1, r0, #4
	ldrb r2, [r1]
	adds r0, r2, #0
	bl WriteData
	adds r1, r7, #4
	adds r0, r7, #4
	adds r1, r7, #4
	ldrb r2, [r1]
	adds r1, r2, #1
	adds r2, r1, #0
	strb r2, [r0]
	b _0800C2E0
_0800C31A:
	ldr r0, _0800C330 @ =GPIOPortData
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800C330 @ =GPIOPortData
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800C334 @ =sLocked
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	b _0800C338
	.align 2, 0
_0800C330: .4byte GPIOPortData
_0800C334: .4byte sLocked
_0800C338:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	thumb_func_start SiiRtcSetAlarm
SiiRtcSetAlarm: @ 0x0800C340
	push {r4, r7, lr}
	sub sp, #0xc
	mov r7, sp
	str r0, [r7]
	ldr r0, _0800C354 @ =sLocked
	ldrb r1, [r0]
	cmp r1, #1
	bne _0800C358
	movs r0, #0
	b _0800C46C
	.align 2, 0
_0800C354: .4byte sLocked
_0800C358:
	ldr r0, _0800C3C0 @ =sLocked
	movs r1, #1
	strb r1, [r0]
	adds r0, r7, #0
	adds r0, #8
	ldr r1, [r7]
	ldrb r2, [r1, #8]
	movs r3, #0xf
	adds r1, r2, #0
	ands r1, r3
	ldr r2, [r7]
	ldrb r3, [r2, #8]
	lsrs r2, r3, #4
	adds r3, r2, #0
	movs r4, #0xf
	adds r2, r3, #0
	ands r2, r4
	adds r4, r2, #0
	lsls r3, r4, #0x18
	lsrs r2, r3, #0x18
	adds r4, r2, #0
	lsls r3, r4, #2
	adds r3, r3, r2
	lsls r2, r3, #1
	adds r1, r1, r2
	ldrb r2, [r0]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0]
	adds r0, r7, #0
	adds r0, #8
	ldrb r1, [r0]
	cmp r1, #0xb
	bhi _0800C3C4
	adds r0, r7, #0
	adds r0, #8
	ldr r1, [r7]
	ldrb r2, [r0]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	ldrb r1, [r1, #8]
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0]
	b _0800C3E2
	.align 2, 0
_0800C3C0: .4byte sLocked
_0800C3C4:
	adds r0, r7, #0
	adds r0, #8
	ldr r1, [r7]
	ldrb r2, [r1, #8]
	movs r3, #0x80
	adds r1, r2, #0
	orrs r1, r3
	ldrb r2, [r0]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0]
_0800C3E2:
	adds r0, r7, #0
	adds r0, #8
	ldr r1, [r7]
	ldrb r2, [r0, #1]
	movs r3, #0
	ands r2, r3
	adds r3, r2, #0
	ldrb r1, [r1, #9]
	adds r2, r3, #0
	orrs r2, r1
	adds r1, r2, #0
	strb r1, [r0, #1]
	ldr r0, _0800C424 @ =GPIOPortData
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800C424 @ =GPIOPortData
	movs r1, #5
	strh r1, [r0]
	ldr r0, _0800C428 @ =GPIOPortDirection
	movs r1, #7
	strh r1, [r0]
	movs r0, #0x68
	bl WriteCommand
	adds r0, r7, #4
	movs r1, #0
	strb r1, [r0]
_0800C418:
	adds r0, r7, #4
	ldrb r1, [r0]
	cmp r1, #1
	bls _0800C42C
	b _0800C44E
	.align 2, 0
_0800C424: .4byte GPIOPortData
_0800C428: .4byte GPIOPortDirection
_0800C42C:
	adds r0, r7, #0
	adds r0, #8
	adds r1, r7, #4
	ldrb r2, [r1]
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r0, r1, #0
	bl WriteData
	adds r1, r7, #4
	adds r0, r7, #4
	adds r1, r7, #4
	ldrb r2, [r1]
	adds r1, r2, #1
	adds r2, r1, #0
	strb r2, [r0]
	b _0800C418
_0800C44E:
	ldr r0, _0800C464 @ =GPIOPortData
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800C464 @ =GPIOPortData
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800C468 @ =sLocked
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	b _0800C46C
	.align 2, 0
_0800C464: .4byte GPIOPortData
_0800C468: .4byte sLocked
_0800C46C:
	add sp, #0xc
	pop {r4, r7}
	pop {r1}
	bx r1

	thumb_func_start WriteCommand
WriteCommand: @ 0x0800C474
	push {r4, r5, r7, lr}
	sub sp, #4
	mov r7, sp
	adds r1, r0, #0
	adds r2, r7, #0
	strb r1, [r2]
	adds r1, r7, #1
	movs r2, #0
	strb r2, [r1]
_0800C486:
	adds r1, r7, #1
	ldrb r2, [r1]
	cmp r2, #7
	bls _0800C490
	b _0800C510
_0800C490:
	adds r1, r7, #2
	adds r3, r7, #0
	ldrb r2, [r3]
	adds r3, r7, #1
	ldrb r4, [r3]
	movs r5, #7
	subs r3, r5, r4
	asrs r2, r3
	adds r3, r2, #0
	movs r4, #1
	adds r2, r3, #0
	ands r2, r4
	adds r3, r2, #0
	strb r3, [r1]
	ldr r1, _0800C50C @ =GPIOPortData
	adds r2, r7, #2
	ldrb r3, [r2]
	adds r2, r3, #0
	lsls r3, r2, #1
	adds r2, r3, #0
	movs r3, #4
	orrs r2, r3
	adds r3, r2, #0
	strh r3, [r1]
	ldr r1, _0800C50C @ =GPIOPortData
	adds r2, r7, #2
	ldrb r3, [r2]
	adds r2, r3, #0
	lsls r3, r2, #1
	adds r2, r3, #0
	movs r3, #4
	orrs r2, r3
	adds r3, r2, #0
	strh r3, [r1]
	ldr r1, _0800C50C @ =GPIOPortData
	adds r2, r7, #2
	ldrb r3, [r2]
	adds r2, r3, #0
	lsls r3, r2, #1
	adds r2, r3, #0
	movs r3, #4
	orrs r2, r3
	adds r3, r2, #0
	strh r3, [r1]
	ldr r1, _0800C50C @ =GPIOPortData
	adds r2, r7, #2
	ldrb r3, [r2]
	adds r2, r3, #0
	lsls r3, r2, #1
	adds r2, r3, #0
	movs r3, #5
	orrs r2, r3
	adds r3, r2, #0
	strh r3, [r1]
	adds r2, r7, #1
	adds r1, r7, #1
	adds r2, r7, #1
	ldrb r3, [r2]
	adds r2, r3, #1
	adds r3, r2, #0
	strb r3, [r1]
	b _0800C486
	.align 2, 0
_0800C50C: .4byte GPIOPortData
_0800C510:
	add sp, #4
	pop {r4, r5, r7}
	pop {r1}
	bx r1

	thumb_func_start WriteData
WriteData: @ 0x0800C518
	push {r4, r7, lr}
	sub sp, #4
	mov r7, sp
	adds r1, r0, #0
	adds r2, r7, #0
	strb r1, [r2]
	adds r1, r7, #1
	movs r2, #0
	strb r2, [r1]
_0800C52A:
	adds r1, r7, #1
	ldrb r2, [r1]
	cmp r2, #7
	bls _0800C534
	b _0800C5B0
_0800C534:
	adds r1, r7, #2
	adds r3, r7, #0
	ldrb r2, [r3]
	adds r3, r7, #1
	ldrb r4, [r3]
	asrs r2, r4
	adds r3, r2, #0
	movs r4, #1
	adds r2, r3, #0
	ands r2, r4
	adds r3, r2, #0
	strb r3, [r1]
	ldr r1, _0800C5AC @ =GPIOPortData
	adds r2, r7, #2
	ldrb r3, [r2]
	adds r2, r3, #0
	lsls r3, r2, #1
	adds r2, r3, #0
	movs r3, #4
	orrs r2, r3
	adds r3, r2, #0
	strh r3, [r1]
	ldr r1, _0800C5AC @ =GPIOPortData
	adds r2, r7, #2
	ldrb r3, [r2]
	adds r2, r3, #0
	lsls r3, r2, #1
	adds r2, r3, #0
	movs r3, #4
	orrs r2, r3
	adds r3, r2, #0
	strh r3, [r1]
	ldr r1, _0800C5AC @ =GPIOPortData
	adds r2, r7, #2
	ldrb r3, [r2]
	adds r2, r3, #0
	lsls r3, r2, #1
	adds r2, r3, #0
	movs r3, #4
	orrs r2, r3
	adds r3, r2, #0
	strh r3, [r1]
	ldr r1, _0800C5AC @ =GPIOPortData
	adds r2, r7, #2
	ldrb r3, [r2]
	adds r2, r3, #0
	lsls r3, r2, #1
	adds r2, r3, #0
	movs r3, #5
	orrs r2, r3
	adds r3, r2, #0
	strh r3, [r1]
	adds r2, r7, #1
	adds r1, r7, #1
	adds r2, r7, #1
	ldrb r3, [r2]
	adds r2, r3, #1
	adds r3, r2, #0
	strb r3, [r1]
	b _0800C52A
	.align 2, 0
_0800C5AC: .4byte GPIOPortData
_0800C5B0:
	add sp, #4
	pop {r4, r7}
	pop {r1}
	bx r1

	thumb_func_start ReadData
ReadData: @ 0x0800C5B8
	push {r7, lr}
	sub sp, #4
	mov r7, sp
	adds r0, r7, #0
	movs r1, #0
	strb r1, [r0]
_0800C5C4:
	adds r0, r7, #0
	ldrb r1, [r0]
	cmp r1, #7
	bls _0800C5CE
	b _0800C634
_0800C5CE:
	ldr r0, _0800C630 @ =GPIOPortData
	movs r1, #4
	strh r1, [r0]
	ldr r0, _0800C630 @ =GPIOPortData
	movs r1, #4
	strh r1, [r0]
	ldr r0, _0800C630 @ =GPIOPortData
	movs r1, #4
	strh r1, [r0]
	ldr r0, _0800C630 @ =GPIOPortData
	movs r1, #4
	strh r1, [r0]
	ldr r0, _0800C630 @ =GPIOPortData
	movs r1, #4
	strh r1, [r0]
	ldr r0, _0800C630 @ =GPIOPortData
	movs r1, #5
	strh r1, [r0]
	adds r0, r7, #1
	ldr r1, _0800C630 @ =GPIOPortData
	ldrh r2, [r1]
	movs r3, #2
	adds r1, r2, #0
	ands r1, r3
	adds r3, r1, #0
	lsls r2, r3, #0x10
	lsrs r1, r2, #0x10
	lsrs r2, r1, #1
	adds r1, r2, #0
	strb r1, [r0]
	adds r0, r7, #2
	adds r1, r7, #2
	ldrb r2, [r1]
	lsrs r1, r2, #1
	adds r2, r7, #1
	ldrb r3, [r2]
	lsls r2, r3, #7
	orrs r1, r2
	adds r2, r1, #0
	strb r2, [r0]
	adds r1, r7, #0
	adds r0, r7, #0
	adds r1, r7, #0
	ldrb r2, [r1]
	adds r1, r2, #1
	adds r2, r1, #0
	strb r2, [r0]
	b _0800C5C4
	.align 2, 0
_0800C630: .4byte GPIOPortData
_0800C634:
	adds r0, r7, #2
	ldrb r1, [r0]
	adds r0, r1, #0
	b _0800C63C
_0800C63C:
	add sp, #4
	pop {r7}
	pop {r1}
	bx r1

	thumb_func_start EnableGpioPortRead
EnableGpioPortRead: @ 0x0800C644
	push {r7, lr}
	mov r7, sp
	ldr r0, _0800C654 @ =GPIOPortReadEnable
	movs r1, #1
	strh r1, [r0]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800C654: .4byte GPIOPortReadEnable

	thumb_func_start DisableGpioPortRead
DisableGpioPortRead: @ 0x0800C658
	push {r7, lr}
	mov r7, sp
	ldr r0, _0800C668 @ =GPIOPortReadEnable
	movs r1, #0
	strh r1, [r0]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800C668: .4byte GPIOPortReadEnable
