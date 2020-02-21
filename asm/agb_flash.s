	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

/*
 * Note: 
 * This file is compiled with -O1. 
 */

	thumb_func_start SwitchFlashBank
SwitchFlashBank: @ 0x0800C66C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r3, _0800C688 @ =0x0E005555
	movs r1, #0xaa
	strb r1, [r3]
	ldr r2, _0800C68C @ =0x0E002AAA
	movs r1, #0x55
	strb r1, [r2]
	movs r1, #0xb0
	strb r1, [r3]
	movs r1, #0xe0
	lsls r1, r1, #0x14
	strb r0, [r1]
	bx lr
	.align 2, 0
_0800C688: .4byte 0x0E005555
_0800C68C: .4byte 0x0E002AAA

	thumb_func_start ReadFlashId
ReadFlashId: @ 0x0800C690
	push {r4, r5, lr}
	sub sp, #0x44
	mov r0, sp
	bl SetReadFlash1
	mov r5, sp
	adds r5, #1
	ldr r2, _0800C6B8 @ =0x0E005555
	movs r0, #0xaa
	strb r0, [r2]
	ldr r1, _0800C6BC @ =0x0E002AAA
	movs r0, #0x55
	strb r0, [r1]
	movs r0, #0x90
	strb r0, [r2]
	add r1, sp, #0x40
	ldr r2, _0800C6C0 @ =0x00004E20
	adds r0, r2, #0
	b _0800C6C8
	.align 2, 0
_0800C6B8: .4byte 0x0E005555
_0800C6BC: .4byte 0x0E002AAA
_0800C6C0: .4byte 0x00004E20
_0800C6C4:
	ldrh r0, [r1]
	subs r0, #1
_0800C6C8:
	strh r0, [r1]
	ldrh r0, [r1]
	cmp r0, #0
	bne _0800C6C4
	ldr r0, _0800C704 @ =0x0E000001
	bl _call_via_r5
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x10
	movs r0, #0xe0
	lsls r0, r0, #0x14
	bl _call_via_r5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	orrs r4, r0
	ldr r1, _0800C708 @ =0x0E005555
	movs r0, #0xaa
	strb r0, [r1]
	ldr r2, _0800C70C @ =0x0E002AAA
	movs r0, #0x55
	strb r0, [r2]
	movs r0, #0xf0
	strb r0, [r1]
	strb r0, [r1]
	add r1, sp, #0x40
	ldr r2, _0800C710 @ =0x00004E20
	adds r0, r2, #0
	b _0800C718
	.align 2, 0
_0800C704: .4byte 0x0E000001
_0800C708: .4byte 0x0E005555
_0800C70C: .4byte 0x0E002AAA
_0800C710: .4byte 0x00004E20
_0800C714:
	ldrh r0, [r1]
	subs r0, #1
_0800C718:
	strh r0, [r1]
	ldrh r0, [r1]
	cmp r0, #0
	bne _0800C714
	adds r0, r4, #0
	add sp, #0x44
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start FlashTimerIntr
FlashTimerIntr: @ 0x0800C72C
	push {lr}
	ldr r1, _0800C74C @ =sTimerCount
	ldrh r0, [r1]
	cmp r0, #0
	beq _0800C748
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800C748
	ldr r1, _0800C750 @ =gFlashTimeoutFlag
	movs r0, #1
	strb r0, [r1]
_0800C748:
	pop {r0}
	bx r0
	.align 2, 0
_0800C74C: .4byte sTimerCount
_0800C750: .4byte gFlashTimeoutFlag

	thumb_func_start SetFlashTimerIntr
SetFlashTimerIntr: @ 0x0800C754
	push {lr}
	adds r2, r1, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bhi _0800C788
	ldr r0, _0800C778 @ =sTimerNum
	strb r1, [r0]
	ldr r1, _0800C77C @ =sTimerReg
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r3, _0800C780 @ =0x04000100
	adds r0, r0, r3
	str r0, [r1]
	ldr r0, _0800C784 @ =FlashTimerIntr
	str r0, [r2]
	movs r0, #0
	b _0800C78A
	.align 2, 0
_0800C778: .4byte sTimerNum
_0800C77C: .4byte sTimerReg
_0800C780: .4byte 0x04000100
_0800C784: .4byte FlashTimerIntr
_0800C788:
	movs r0, #1
_0800C78A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start StartFlashTimer
StartFlashTimer: @ 0x0800C790
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0800C814 @ =gFlashMaxTime
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #1
	ldr r0, [r1]
	adds r2, r2, r0
	ldr r1, _0800C818 @ =sSavedIme
	ldr r0, _0800C81C @ =0x04000208
	mov sb, r0
	ldrh r0, [r0]
	strh r0, [r1]
	movs r3, #0
	mov r1, sb
	strh r3, [r1]
	ldr r0, _0800C820 @ =sTimerReg
	mov r8, r0
	ldr r4, [r0]
	strh r3, [r4, #2]
	ldr r6, _0800C824 @ =0x04000200
	ldr r1, _0800C828 @ =sTimerNum
	mov sl, r1
	ldrb r1, [r1]
	movs r5, #8
	adds r0, r5, #0
	lsls r0, r1
	adds r1, r0, #0
	ldrh r0, [r6]
	orrs r0, r1
	strh r0, [r6]
	ldr r0, _0800C82C @ =gFlashTimeoutFlag
	strb r3, [r0]
	ldr r1, _0800C830 @ =sTimerCount
	ldrh r0, [r2]
	strh r0, [r1]
	adds r2, #2
	ldrh r0, [r2]
	strh r0, [r4]
	adds r0, r4, #2
	mov r1, r8
	str r0, [r1]
	ldrh r0, [r2, #2]
	strh r0, [r4, #2]
	str r4, [r1]
	ldr r1, _0800C834 @ =0x04000202
	mov r2, sl
	ldrb r0, [r2]
	lsls r5, r0
	strh r5, [r1]
	movs r0, #1
	mov r3, sb
	strh r0, [r3]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800C814: .4byte gFlashMaxTime
_0800C818: .4byte sSavedIme
_0800C81C: .4byte 0x04000208
_0800C820: .4byte sTimerReg
_0800C824: .4byte 0x04000200
_0800C828: .4byte sTimerNum
_0800C82C: .4byte gFlashTimeoutFlag
_0800C830: .4byte sTimerCount
_0800C834: .4byte 0x04000202

	thumb_func_start StopFlashTimer
StopFlashTimer: @ 0x0800C838
	ldr r3, _0800C868 @ =0x04000208
	movs r1, #0
	strh r1, [r3]
	ldr r2, _0800C86C @ =sTimerReg
	ldr r0, [r2]
	strh r1, [r0]
	adds r0, #2
	str r0, [r2]
	strh r1, [r0]
	subs r0, #2
	str r0, [r2]
	ldr r2, _0800C870 @ =0x04000200
	ldr r0, _0800C874 @ =sTimerNum
	ldrb r0, [r0]
	movs r1, #8
	lsls r1, r0
	ldrh r0, [r2]
	bics r0, r1
	strh r0, [r2]
	ldr r0, _0800C878 @ =sSavedIme
	ldrh r0, [r0]
	strh r0, [r3]
	bx lr
	.align 2, 0
_0800C868: .4byte 0x04000208
_0800C86C: .4byte sTimerReg
_0800C870: .4byte 0x04000200
_0800C874: .4byte sTimerNum
_0800C878: .4byte sSavedIme

	thumb_func_start ReadFlash1
ReadFlash1: @ 0x0800C87C
	ldrb r0, [r0]
	bx lr

	thumb_func_start SetReadFlash1
SetReadFlash1: @ 0x0800C880
	push {lr}
	adds r2, r0, #0
	ldr r1, _0800C89C @ =PollFlashStatus
	adds r0, r2, #1
	str r0, [r1]
	ldr r3, _0800C8A0 @ =ReadFlash1
	movs r0, #1
	bics r3, r0
	ldr r0, _0800C8A4 @ =SetReadFlash1
	ldr r1, _0800C8A0 @ =ReadFlash1
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _0800C8B4
	.align 2, 0
_0800C89C: .4byte PollFlashStatus
_0800C8A0: .4byte ReadFlash1
_0800C8A4: .4byte SetReadFlash1
_0800C8A8:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_0800C8B4:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _0800C8A8
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start ReadFlash_Core
ReadFlash_Core: @ 0x0800C8C0
	push {r4, lr}
	adds r4, r0, #0
	subs r3, r2, #1
	cmp r2, #0
	beq _0800C8DC
	movs r2, #1
	rsbs r2, r2, #0
_0800C8CE:
	ldrb r0, [r4]
	strb r0, [r1]
	adds r4, #1
	adds r1, #1
	subs r3, #1
	cmp r3, r2
	bne _0800C8CE
_0800C8DC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start ReadFlash
ReadFlash: @ 0x0800C8E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x80
	adds r5, r1, #0
	adds r6, r2, #0
	adds r7, r3, #0
	lsls r3, r0, #0x10
	lsrs r4, r3, #0x10
	ldr r2, _0800C930 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _0800C934 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0800C938 @ =gFlash
	ldr r0, [r0]
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0xa
	cmp r1, r0
	bne _0800C91C
	lsrs r0, r3, #0x14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl SwitchFlashBank
	movs r0, #0xf
	ands r4, r0
_0800C91C:
	ldr r3, _0800C93C @ =ReadFlash_Core
	movs r0, #1
	bics r3, r0
	mov r2, sp
	ldr r0, _0800C940 @ =ReadFlash
	ldr r1, _0800C93C @ =ReadFlash_Core
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _0800C950
	.align 2, 0
_0800C930: .4byte 0x04000204
_0800C934: .4byte 0x0000FFFC
_0800C938: .4byte gFlash
_0800C93C: .4byte ReadFlash_Core
_0800C940: .4byte ReadFlash
_0800C944:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_0800C950:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _0800C944
	mov r3, sp
	adds r3, #1
	ldr r0, _0800C97C @ =gFlash
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	lsls r4, r0
	adds r0, r4, #0
	movs r2, #0xe0
	lsls r2, r2, #0x14
	adds r1, r5, r2
	adds r0, r0, r1
	adds r1, r6, #0
	adds r2, r7, #0
	bl _call_via_r3
	add sp, #0x80
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800C97C: .4byte gFlash

	thumb_func_start VerifyFlashSector_Core
VerifyFlashSector_Core: @ 0x0800C980
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r3, r1, #0
	subs r4, r2, #1
	cmp r2, #0
	beq _0800C9A6
	movs r2, #1
	rsbs r2, r2, #0
_0800C990:
	ldrb r1, [r3]
	ldrb r0, [r5]
	adds r5, #1
	adds r3, #1
	cmp r1, r0
	beq _0800C9A0
	subs r0, r3, #1
	b _0800C9A8
_0800C9A0:
	subs r4, #1
	cmp r4, r2
	bne _0800C990
_0800C9A6:
	movs r0, #0
_0800C9A8:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start VerifyFlashSector
VerifyFlashSector: @ 0x0800C9B0
	push {r4, r5, lr}
	sub sp, #0x100
	adds r5, r1, #0
	lsls r3, r0, #0x10
	lsrs r4, r3, #0x10
	ldr r2, _0800C9F8 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _0800C9FC @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r0, _0800CA00 @ =gFlash
	ldr r0, [r0]
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0xa
	cmp r1, r0
	bne _0800C9E4
	lsrs r0, r3, #0x14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl SwitchFlashBank
	movs r0, #0xf
	ands r4, r0
_0800C9E4:
	ldr r3, _0800CA04 @ =VerifyFlashSector_Core
	movs r0, #1
	bics r3, r0
	mov r2, sp
	ldr r0, _0800CA08 @ =VerifyFlashSector
	ldr r1, _0800CA04 @ =VerifyFlashSector_Core
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _0800CA18
	.align 2, 0
_0800C9F8: .4byte 0x04000204
_0800C9FC: .4byte 0x0000FFFC
_0800CA00: .4byte gFlash
_0800CA04: .4byte VerifyFlashSector_Core
_0800CA08: .4byte VerifyFlashSector
_0800CA0C:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_0800CA18:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _0800CA0C
	mov r3, sp
	adds r3, #1
	ldr r0, _0800CA44 @ =gFlash
	ldr r0, [r0]
	ldrb r1, [r0, #8]
	lsls r4, r1
	adds r1, r4, #0
	movs r2, #0xe0
	lsls r2, r2, #0x14
	adds r1, r1, r2
	ldrh r2, [r0, #4]
	adds r0, r5, #0
	bl _call_via_r3
	add sp, #0x100
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800CA44: .4byte gFlash

	thumb_func_start VerifyFlashSectorNBytes
VerifyFlashSectorNBytes: @ 0x0800CA48
	push {r4, r5, r6, lr}
	sub sp, #0x100
	adds r5, r1, #0
	adds r6, r2, #0
	lsls r2, r0, #0x10
	lsrs r4, r2, #0x10
	ldr r0, _0800CA90 @ =gFlash
	ldr r0, [r0]
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0xa
	cmp r1, r0
	bne _0800CA70
	lsrs r0, r2, #0x14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl SwitchFlashBank
	movs r0, #0xf
	ands r4, r0
_0800CA70:
	ldr r2, _0800CA94 @ =0x04000204
	ldrh r0, [r2]
	ldr r1, _0800CA98 @ =0x0000FFFC
	ands r0, r1
	movs r1, #3
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _0800CA9C @ =VerifyFlashSector_Core
	movs r0, #1
	bics r3, r0
	mov r2, sp
	ldr r0, _0800CAA0 @ =VerifyFlashSector
	ldr r1, _0800CA9C @ =VerifyFlashSector_Core
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _0800CAB0
	.align 2, 0
_0800CA90: .4byte gFlash
_0800CA94: .4byte 0x04000204
_0800CA98: .4byte 0x0000FFFC
_0800CA9C: .4byte VerifyFlashSector_Core
_0800CAA0: .4byte VerifyFlashSector
_0800CAA4:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r0, r1, #1
	lsls r0, r0, #0x10
_0800CAB0:
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _0800CAA4
	mov r3, sp
	adds r3, #1
	ldr r0, _0800CADC @ =gFlash
	ldr r0, [r0]
	ldrb r1, [r0, #8]
	lsls r4, r1
	adds r1, r4, #0
	movs r0, #0xe0
	lsls r0, r0, #0x14
	adds r1, r1, r0
	adds r0, r5, #0
	adds r2, r6, #0
	bl _call_via_r3
	add sp, #0x100
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800CADC: .4byte gFlash

	thumb_func_start ProgramFlashSectorAndVerify
ProgramFlashSectorAndVerify: @ 0x0800CAE0
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #0
	b _0800CAF2
_0800CAEC:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0800CAF2:
	cmp r6, #2
	bhi _0800CB18
	ldr r0, _0800CB20 @ =ProgramFlashSector
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	cmp r2, #0
	bne _0800CAEC
	adds r0, r4, #0
	adds r1, r5, #0
	bl VerifyFlashSector
	adds r2, r0, #0
	cmp r2, #0
	bne _0800CAEC
_0800CB18:
	adds r0, r2, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800CB20: .4byte ProgramFlashSector

	thumb_func_start ProgramFlashSectorAndVerifyNBytes
ProgramFlashSectorAndVerifyNBytes: @ 0x0800CB24
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r7, r2, #0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r6, #0
	b _0800CB38
_0800CB32:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
_0800CB38:
	cmp r6, #2
	bhi _0800CB60
	ldr r0, _0800CB68 @ =ProgramFlashSector
	ldr r2, [r0]
	adds r0, r4, #0
	adds r1, r5, #0
	bl _call_via_r2
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _0800CB32
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl VerifyFlashSectorNBytes
	adds r3, r0, #0
	cmp r3, #0
	bne _0800CB32
_0800CB60:
	adds r0, r3, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800CB68: .4byte ProgramFlashSector
