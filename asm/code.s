	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

	thumb_func_start sub_08000258
sub_08000258: @ 0x08000258
	push {lr}
	ldr r0, _08000284 @ =gUnk_03000000
	movs r1, #0
	movs r2, #0x10
	bl memset
	ldr r1, _08000288 @ =gUnk_03000010
	movs r0, #0
	strb r0, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_080026CC
	bl sub_0800028C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08000280
	bl sub_0800031C
_08000280:
	pop {r0}
	bx r0
	.align 2, 0
_08000284: .4byte gUnk_03000000
_08000288: .4byte gUnk_03000010

	thumb_func_start sub_0800028C
sub_0800028C: @ 0x0800028C
	push {r4, r5, lr}
	ldr r5, _080002C4 @ =gUnk_02000000
	movs r4, #0
_08000292:
	lsls r0, r4, #4
	movs r1, #0
	ldr r2, _080002C4 @ =gUnk_02000000
	movs r3, #0x80
	lsls r3, r3, #5
	bl ReadFlash
	adds r0, r5, #0
	ldr r1, _080002C8 @ =gUnk_08012964
	movs r2, #4
	bl memcmp
	cmp r0, #0
	bne _080002D0
	movs r0, #0
	bl sub_080003C4
	ldr r2, _080002CC @ =0x00000FFC
	adds r1, r5, r2
	ldr r1, [r1]
	cmp r0, r1
	bne _080002D0
	movs r0, #1
	b _080002DC
	.align 2, 0
_080002C4: .4byte gUnk_02000000
_080002C8: .4byte gUnk_08012964
_080002CC: .4byte 0x00000FFC
_080002D0:
	adds r4, #1
	cmp r4, #1
	ble _08000292
	bl sub_080002E4
	movs r0, #0
_080002DC:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080002E4
sub_080002E4: @ 0x080002E4
	sub sp, #4
	ldr r2, _0800030C @ =gUnk_02000000
	movs r0, #0
	str r0, [sp]
	ldr r0, _08000310 @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	str r2, [r0, #4]
	ldr r1, _08000314 @ =0x85000400
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	ldr r0, _08000318 @ =gUnk_08012964
	ldr r0, [r0]
	str r0, [r2]
	adds r2, #0xb4
	movs r0, #1
	strh r0, [r2]
	add sp, #4
	bx lr
	.align 2, 0
_0800030C: .4byte gUnk_02000000
_08000310: .4byte 0x040000D4
_08000314: .4byte 0x85000400
_08000318: .4byte gUnk_08012964

	thumb_func_start sub_0800031C
sub_0800031C: @ 0x0800031C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	movs r7, #1
	movs r0, #0
	mov sl, r0
_0800032E:
	movs r5, #0
	lsls r0, r7, #0xc
	adds r1, r7, #1
	mov sb, r1
	ldr r1, _08000378 @ =gUnk_02000004
	adds r6, r1, r7
	ldr r1, _0800037C @ =gUnk_02000000
	adds r0, r0, r1
	mov r8, r0
_08000340:
	ldrb r4, [r6]
	eors r4, r5
	movs r0, #1
	ands r4, r0
	lsls r4, r4, #4
	adds r4, r7, r4
	adds r0, r4, #0
	movs r1, #0
	mov r2, r8
	movs r3, #0x80
	lsls r3, r3, #5
	bl ReadFlash
	adds r0, r7, #0
	bl sub_080003C4
	lsls r4, r4, #2
	ldr r1, _08000380 @ =gUnk_02000014
	adds r4, r1, r4
	ldr r1, [r4]
	cmp r0, r1
	bne _08000384
	ldrb r0, [r6]
	eors r5, r0
	movs r0, #1
	ands r5, r0
	strb r5, [r6]
	b _080003A6
	.align 2, 0
_08000378: .4byte gUnk_02000004
_0800037C: .4byte gUnk_02000000
_08000380: .4byte gUnk_02000014
_08000384:
	cmp r5, #1
	bne _080003A0
	mov r1, sl
	str r1, [sp]
	ldr r0, _080003BC @ =0x040000D4
	mov r1, sp
	str r1, [r0]
	mov r1, r8
	str r1, [r0, #4]
	ldr r1, _080003C0 @ =0x85000400
	str r1, [r0, #8]
	ldr r0, [r0, #8]
	mov r0, sl
	strb r0, [r6]
_080003A0:
	adds r5, #1
	cmp r5, #1
	ble _08000340
_080003A6:
	mov r7, sb
	cmp r7, #0xf
	ble _0800032E
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080003BC: .4byte 0x040000D4
_080003C0: .4byte 0x85000400

	thumb_func_start sub_080003C4
sub_080003C4: @ 0x080003C4
	push {r4, lr}
	movs r3, #0x80
	lsls r3, r3, #3
	movs r2, #0
	cmp r0, #0
	bne _080003D2
	subs r3, #1
_080003D2:
	cmp r2, r3
	bge _080003E8
	ldr r1, _080003F0 @ =gUnk_02000000
	lsls r0, r0, #0xc
	adds r4, r0, r1
	adds r1, r3, #0
_080003DE:
	ldm r4!, {r0}
	adds r2, r2, r0
	subs r1, #1
	cmp r1, #0
	bne _080003DE
_080003E8:
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080003F0: .4byte gUnk_02000000

	thumb_func_start sub_080003F4
sub_080003F4: @ 0x080003F4
	push {r4, r5, r6, r7, lr}
	ldr r7, _0800048C @ =gUnk_02000000
	ldr r0, _08000490 @ =gUnk_03000010
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r2, r7, #0
	adds r3, r0, #0
	cmp r1, #0
	bne _080004B8
	movs r4, #0
	ldr r1, _08000494 @ =gUnk_03000000
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08000428
_08000412:
	cmp r4, #0xf
	beq _080004D8
	adds r4, #1
	cmp r4, #0xf
	bgt _08000428
	adds r0, r4, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08000412
_08000428:
	movs r0, #0
	ldrsb r0, [r3, r0]
	cmp r0, #0
	bne _080004B8
	movs r4, #1
_08000432:
	ldr r6, _08000494 @ =gUnk_03000000
	adds r0, r4, r6
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08000462
	adds r2, r7, #4
	adds r2, r2, r4
	ldrb r0, [r2]
	movs r1, #1
	eors r0, r1
	strb r0, [r2]
	ldrb r0, [r2]
	lsls r0, r0, #4
	adds r5, r4, r0
	adds r0, r4, #0
	bl sub_080003C4
	lsls r2, r5, #2
	adds r1, r7, #0
	adds r1, #0x14
	adds r1, r1, r2
	str r0, [r1]
_08000462:
	adds r4, #1
	cmp r4, #0xf
	ble _08000432
	movs r0, #0
	bl sub_080003C4
	ldr r2, _08000498 @ =0x00000FFC
	adds r1, r7, r2
	str r0, [r1]
	ldr r1, _0800048C @ =gUnk_02000000
	movs r0, #0
	bl ProgramFlashSectorAndVerify
	movs r0, #0
	strb r0, [r6]
	ldr r1, _08000490 @ =gUnk_03000010
	movs r0, #1
	strb r0, [r1]
	movs r0, #1
	b _080004DA
	.align 2, 0
_0800048C: .4byte gUnk_02000000
_08000490: .4byte gUnk_03000010
_08000494: .4byte gUnk_03000000
_08000498: .4byte 0x00000FFC
_0800049C:
	adds r0, r7, #4
	adds r0, r0, r4
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r5, r4, r0
	lsls r1, r4, #0xc
	adds r1, r1, r2
	adds r0, r5, #0
	bl ProgramFlashSectorAndVerify
	movs r0, #0
	strb r0, [r6]
	movs r0, #1
	b _080004DA
_080004B8:
	movs r4, #1
	ldr r0, _080004E0 @ =gUnk_03000000
_080004BC:
	adds r6, r4, r0
	movs r5, #0
	ldrsb r5, [r6, r5]
	cmp r5, #0
	bne _0800049C
	adds r4, #1
	cmp r4, #0xf
	ble _080004BC
	movs r0, #0x10
	adds r1, r2, #0
	bl ProgramFlashSectorAndVerify
	ldr r0, _080004E4 @ =gUnk_03000010
	strb r5, [r0]
_080004D8:
	movs r0, #0
_080004DA:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080004E0: .4byte gUnk_03000000
_080004E4: .4byte gUnk_03000010

	thumb_func_start sub_080004E8
sub_080004E8: @ 0x080004E8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	movs r7, #0
	ldr r2, _080005B8 @ =gUnk_03000000
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r1, r2, #0
	cmp r0, #0
	bne _08000518
_08000502:
	cmp r7, #0xf
	beq _080005A6
	adds r7, #1
	cmp r7, #0xf
	bgt _08000518
	adds r0, r7, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08000502
_08000518:
	movs r7, #1
	movs r0, #0
	mov sl, r0
	ldr r2, _080005BC @ =gUnk_02000000
	adds r2, #0x14
	str r2, [sp]
_08000524:
	adds r0, r7, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r3, r7, #1
	mov sb, r3
	cmp r0, #0
	beq _0800057A
	ldr r0, _080005BC @ =gUnk_02000000
	adds r0, #4
	adds r0, r0, r7
	mov r1, sl
	strb r1, [r0]
	adds r0, r7, #0
	bl sub_080003C4
	str r0, [sp, #0xc]
	lsls r2, r7, #0xc
	lsls r0, r7, #2
	ldr r3, [sp]
	adds r5, r0, r3
	adds r4, r7, #0
	ldr r0, _080005BC @ =gUnk_02000000
	mov r8, r0
	movs r6, #1
_08000556:
	ldr r1, [sp, #0xc]
	str r1, [r5]
	adds r0, r4, #0
	mov r3, r8
	adds r1, r2, r3
	str r2, [sp, #4]
	bl ProgramFlashSectorAndVerify
	adds r5, #0x40
	adds r4, #0x10
	subs r6, #1
	ldr r2, [sp, #4]
	cmp r6, #0
	bge _08000556
	ldr r1, _080005B8 @ =gUnk_03000000
	adds r0, r7, r1
	mov r2, sl
	strb r2, [r0]
_0800057A:
	mov r7, sb
	cmp r7, #0xf
	ble _08000524
	movs r5, #0
	movs r0, #0
	bl sub_080003C4
	ldr r3, _080005BC @ =gUnk_02000000
	ldr r2, _080005C0 @ =0x00000FFC
	adds r1, r3, r2
	str r0, [r1]
	adds r4, r3, #0
	movs r0, #0
	adds r1, r4, #0
	bl ProgramFlashSectorAndVerify
	movs r0, #0x10
	adds r1, r4, #0
	bl ProgramFlashSectorAndVerify
	ldr r0, _080005B8 @ =gUnk_03000000
	strb r5, [r0]
_080005A6:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080005B8: .4byte gUnk_03000000
_080005BC: .4byte gUnk_02000000
_080005C0: .4byte 0x00000FFC

	thumb_func_start sub_080005C4
sub_080005C4: @ 0x080005C4
	push {lr}
	ldr r0, _080005D8 @ =gUnk_03000010
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080005DC
_080005D2:
	movs r0, #1
	b _080005F4
	.align 2, 0
_080005D8: .4byte gUnk_03000010
_080005DC:
	movs r1, #0
	ldr r2, _080005F8 @ =gUnk_03000000
_080005E0:
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080005D2
	adds r1, #1
	cmp r1, #0xf
	ble _080005E0
	movs r0, #0
_080005F4:
	pop {r1}
	bx r1
	.align 2, 0
_080005F8: .4byte gUnk_03000000

	thumb_func_start sub_080005FC
sub_080005FC: @ 0x080005FC
	ldr r0, _08000608 @ =gUnk_03000010
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0
_08000608: .4byte gUnk_03000010

	thumb_func_start sub_0800060C
sub_0800060C: @ 0x0800060C
	ldr r0, _08000614 @ =gUnk_02000000
	adds r0, #0x94
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08000614: .4byte gUnk_02000000

	thumb_func_start sub_08000618
sub_08000618: @ 0x08000618
	ldr r1, _08000630 @ =gUnk_02000000
	lsls r0, r0, #2
	adds r1, #0x98
	adds r0, r0, r1
	ldr r1, [r0]
	adds r1, #1
	str r1, [r0]
	ldr r1, _08000634 @ =gUnk_03000000
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_08000630: .4byte gUnk_02000000
_08000634: .4byte gUnk_03000000

	thumb_func_start sub_08000638
sub_08000638: @ 0x08000638
	ldr r1, _0800064C @ =gUnk_02000000
	adds r1, #0xb0
	ldr r0, [r1]
	adds r0, #1
	str r0, [r1]
	ldr r1, _08000650 @ =gUnk_03000000
	movs r0, #1
	strb r0, [r1]
	bx lr
	.align 2, 0
_0800064C: .4byte gUnk_02000000
_08000650: .4byte gUnk_03000000

	thumb_func_start sub_08000654
sub_08000654: @ 0x08000654
	ldr r0, _08000658 @ =gUnk_02001000
	bx lr
	.align 2, 0
_08000658: .4byte gUnk_02001000

	thumb_func_start sub_0800065C
sub_0800065C: @ 0x0800065C
	ldr r0, _08000664 @ =gUnk_02000000
	adds r0, #0xb4
	ldrh r0, [r0]
	bx lr
	.align 2, 0
_08000664: .4byte gUnk_02000000

	thumb_func_start sub_08000668
sub_08000668: @ 0x08000668
	push {lr}
	ldr r1, _08000680 @ =gUnk_02000000
	adds r1, #0xb4
	strh r0, [r1]
	ldr r1, _08000684 @ =gUnk_03000000
	movs r0, #1
	strb r0, [r1]
	bl sub_080004E8
	pop {r0}
	bx r0
	.align 2, 0
_08000680: .4byte gUnk_02000000
_08000684: .4byte gUnk_03000000

	thumb_func_start sub_08000688
sub_08000688: @ 0x08000688
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	adds r1, r5, #0
	bl sub_080007B8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080006B2
	bl sub_080007F8
	adds r1, r0, r4
	cmp r1, #0
	beq _080006B2
	adds r0, r6, #0
	adds r2, r5, #0
	bl memcpy
	movs r0, #0
	b _080006B4
_080006B2:
	movs r0, #1
_080006B4:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080006BC
sub_080006BC: @ 0x080006BC
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r0, _080006EC @ =gUnk_03000010
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _080006E8
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080007B8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080006E8
	bl sub_080007F8
	adds r4, r0, r4
	cmp r4, #0
	bne _080006F0
_080006E8:
	movs r0, #1
	b _0800071A
	.align 2, 0
_080006EC: .4byte gUnk_03000010
_080006F0:
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl memcpy
	ldr r1, _08000720 @ =gUnk_02000000
	subs r1, r4, r1
	adds r0, r1, r5
	subs r0, #1
	lsrs r2, r0, #0xc
	lsrs r1, r1, #0xc
	cmp r1, r2
	bgt _08000718
	ldr r4, _08000724 @ =gUnk_03000000
	movs r3, #1
_0800070E:
	adds r0, r1, r4
	strb r3, [r0]
	adds r1, #1
	cmp r1, r2
	ble _0800070E
_08000718:
	movs r0, #0
_0800071A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08000720: .4byte gUnk_02000000
_08000724: .4byte gUnk_03000000

	thumb_func_start sub_08000728
sub_08000728: @ 0x08000728
	push {r4, r5, lr}
	bl sub_080007F8
	adds r5, r0, #0
	bl sub_08002860
	adds r1, r0, #0
	ldr r0, _08000748 @ =gUnk_03000010
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0800074C
	movs r0, #1
	b _080007A6
	.align 2, 0
_08000748: .4byte gUnk_03000010
_0800074C:
	movs r3, #0
	ldr r0, _0800075C @ =gUnk_080128FA
	adds r2, r0, #0
	ldrh r0, [r2]
	cmp r1, r0
	bne _08000764
	ldr r0, _08000760 @ =gUnk_0801295C
	b _0800077A
	.align 2, 0
_0800075C: .4byte gUnk_080128FA
_08000760: .4byte gUnk_0801295C
_08000764:
	adds r3, #1
	cmp r3, #0xf
	bgt _0800077C
	lsls r0, r3, #1
	adds r0, r0, r2
	ldrh r0, [r0]
	cmp r1, r0
	bne _08000764
	ldr r1, _080007AC @ =gUnk_0801295C
	lsls r0, r3, #2
	adds r0, r0, r1
_0800077A:
	ldr r4, [r0]
_0800077C:
	adds r0, r5, #0
	movs r1, #0
	adds r2, r4, #0
	bl memset
	ldr r1, _080007B0 @ =gUnk_02000000
	subs r1, r5, r1
	adds r0, r1, r4
	subs r0, #1
	lsrs r2, r0, #0xc
	lsrs r3, r1, #0xc
	cmp r3, r2
	bgt _080007A4
	ldr r4, _080007B4 @ =gUnk_03000000
	movs r1, #1
_0800079A:
	adds r0, r3, r4
	strb r1, [r0]
	adds r3, #1
	cmp r3, r2
	ble _0800079A
_080007A4:
	movs r0, #0
_080007A6:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080007AC: .4byte gUnk_0801295C
_080007B0: .4byte gUnk_02000000
_080007B4: .4byte gUnk_03000000

	thumb_func_start sub_080007B8
sub_080007B8: @ 0x080007B8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	bl sub_08002860
	adds r6, r0, #0
	movs r3, #0
	adds r5, r5, r4
	ldr r2, _080007DC @ =gUnk_0801295C
	ldr r1, _080007E0 @ =gUnk_080128FA
_080007CC:
	ldrh r0, [r1]
	cmp r6, r0
	bne _080007E4
	ldr r0, [r2]
	cmp r5, r0
	bhi _080007E4
	movs r0, #1
	b _080007F0
	.align 2, 0
_080007DC: .4byte gUnk_0801295C
_080007E0: .4byte gUnk_080128FA
_080007E4:
	adds r2, #4
	adds r1, #2
	adds r3, #1
	cmp r3, #0xf
	ble _080007CC
	movs r0, #0
_080007F0:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080007F8
sub_080007F8: @ 0x080007F8
	push {r4, r5, lr}
	ldr r4, _08000814 @ =gUnk_02001000
	bl sub_08002860
	adds r3, r0, #0
	movs r2, #0
	ldr r5, _08000818 @ =gUnk_0801295C
	ldr r1, _0800081C @ =gUnk_080128FA
_08000808:
	ldrh r0, [r1]
	cmp r3, r0
	bne _08000820
	adds r0, r4, #0
	b _08000832
	.align 2, 0
_08000814: .4byte gUnk_02001000
_08000818: .4byte gUnk_0801295C
_0800081C: .4byte gUnk_080128FA
_08000820:
	ldm r5!, {r0}
	lsrs r0, r0, #2
	lsls r0, r0, #2
	adds r4, r4, r0
	adds r1, #2
	adds r2, #1
	cmp r2, #0xf
	ble _08000808
	movs r0, #0
_08000832:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08000838
sub_08000838: @ 0x08000838
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	str r0, [sp]
	movs r6, #0
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #4]
	ldr r5, _080008C8 @ =gUnk_080160B4
	ldr r0, [sp]
	adds r1, r5, #0
	bl sub_08000C30
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0800095A
	adds r1, r5, #4
	ldr r0, [sp]
	bl sub_08000C74
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0800095A
	movs r4, #0
	movs r1, #1
	str r1, [sp, #8]
	ldr r2, _080008CC @ =gUnk_02010000
	mov r8, r2
	movs r7, #0
	mov sl, r5
	movs r0, #8
	add r0, r8
	mov sb, r0
_08000880:
	lsls r5, r4, #1
	lsls r6, r4, #3
	adds r1, r4, #1
	mov ip, r1
	adds r0, r5, r4
	lsls r0, r0, #6
	mov r3, sl
	adds r3, #8
	adds r0, r7, r0
	mov r1, r8
	adds r2, r0, r1
	movs r1, #3
_08000898:
	ldrh r0, [r3]
	strh r0, [r2]
	adds r3, #2
	adds r2, #2
	subs r1, #1
	cmp r1, #0
	bge _08000898
	adds r1, r5, r4
	lsls r1, r1, #6
	adds r1, r7, r1
	add r1, sb
	subs r0, r6, r4
	lsls r0, r0, #4
	subs r0, r0, r4
	lsls r0, r0, #2
	ldr r2, _080008D0 @ =gUnk_02010300
	adds r0, r0, r2
	str r0, [r1]
	mov r4, ip
	cmp r4, #3
	ble _08000880
	ldr r6, [sp, #8]
	b _0800095A
	.align 2, 0
_080008C8: .4byte gUnk_080160B4
_080008CC: .4byte gUnk_02010000
_080008D0: .4byte gUnk_02010300
_080008D4:
	ldr r0, [sp, #4]
	adds r4, r0, #0
	muls r4, r1, r4
	adds r1, r4, r5
	ldr r0, [sp]
	bl sub_08000C30
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0800095A
	adds r5, #4
	adds r1, r4, r5
	ldr r0, [sp]
	bl sub_08000C74
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0800095A
	movs r4, #0
	lsls r0, r6, #1
	adds r1, r6, #1
	str r1, [sp, #8]
	ldr r2, _080009A4 @ =gUnk_02010000
	mov r8, r2
	adds r0, r0, r6
	lsls r7, r0, #2
	adds r5, #4
	mov sl, r5
	movs r0, #0xe6
	lsls r0, r0, #1
	ldr r1, [sp, #4]
	adds r6, r1, #0
	muls r6, r0, r6
	movs r2, #8
	add r2, r8
	mov sb, r2
_0800091C:
	movs r1, #0
	lsls r5, r4, #1
	adds r0, r4, #1
	mov ip, r0
	adds r0, r5, r4
	lsls r0, r0, #6
	adds r0, r7, r0
	mov r2, r8
	adds r3, r0, r2
	mov r0, sl
	adds r2, r6, r0
_08000932:
	ldrh r0, [r2]
	strh r0, [r3]
	adds r3, #2
	adds r2, #2
	adds r1, #1
	cmp r1, #3
	ble _08000932
	adds r0, r5, r4
	lsls r0, r0, #6
	adds r0, r7, r0
	add r0, sb
	ldr r2, _080009A8 @ =gUnk_08015264
	adds r1, r6, r2
	str r1, [r0]
	mov r4, ip
	cmp r4, #3
	ble _0800091C
	ldr r6, [sp, #8]
	cmp r6, #0xf
	beq _08000974
_0800095A:
	ldr r0, [sp, #4]
	adds r0, #1
	str r0, [sp, #4]
	ldr r5, _080009AC @ =gUnk_08015254
	movs r1, #0xe6
	lsls r1, r1, #1
	adds r2, r0, #0
	adds r0, r2, #0
	muls r0, r1, r0
	adds r0, r0, r5
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _080008D4
_08000974:
	lsls r0, r6, #1
	ldr r1, _080009A4 @ =gUnk_02010000
	adds r0, r0, r6
	lsls r0, r0, #2
	movs r4, #3
	adds r1, r1, r0
	movs r2, #0x92
	lsls r2, r2, #2
	adds r0, r1, r2
	movs r1, #0
_08000988:
	str r1, [r0]
	subs r0, #0xc0
	subs r4, #1
	cmp r4, #0
	bge _08000988
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080009A4: .4byte gUnk_02010000
_080009A8: .4byte gUnk_08015264
_080009AC: .4byte gUnk_08015254

	thumb_func_start sub_080009B0
sub_080009B0: @ 0x080009B0
	push {r4, lr}
	adds r4, r0, #0
	bl sub_080026BC
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #6
	ldr r0, _080009CC @ =gUnk_02010000
	adds r1, r1, r0
	str r1, [r4]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080009CC: .4byte gUnk_02010000

	thumb_func_start sub_080009D0
sub_080009D0: @ 0x080009D0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x74
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r1, _08000A40 @ =gUnk_08014F74
	mov r0, sp
	movs r2, #0xf
	bl memcpy
	bl sub_080026BC
	mov r8, r0
	ldr r0, _08000A44 @ =gUnk_02010300
	mov sb, r0
	mov r1, r8
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #4
	subs r0, r0, r1
	lsls r7, r0, #2
	mov r1, sb
	adds r0, r7, r1
	ldr r1, _08000A48 @ =gUnk_080160B4
	adds r1, #0x10
	movs r2, #0xde
	lsls r2, r2, #1
	bl memcpy
	add r4, sp, #0x60
	ldrh r0, [r5, #2]
	strh r0, [r4]
	mov r0, sp
	adds r0, #0x62
	adds r1, r6, #0
	movs r2, #8
	bl memcpy
	add r1, sp, #0x6c
	add r2, sp, #0x70
	adds r0, r4, #0
	bl sub_08005A60
	cmp r0, #0
	bne _08000A50
	mov r0, sb
	adds r0, #0x2c
	adds r0, r7, r0
	ldr r1, _08000A4C @ =gUnk_08016280
	movs r2, #0x50
	bl memcpy
	b _08000A64
	.align 2, 0
_08000A40: .4byte gUnk_08014F74
_08000A44: .4byte gUnk_02010300
_08000A48: .4byte gUnk_080160B4
_08000A4C: .4byte gUnk_08016280
_08000A50:
	ldr r2, [sp, #0x70]
	movs r0, #0
	movs r1, #1
	bl sub_08000AEC
	ldr r2, [sp, #0x6c]
	movs r0, #0xa
	movs r1, #1
	bl sub_08000AEC
_08000A64:
	add r4, sp, #0x10
	adds r0, r4, #0
	movs r1, #5
	bl nullsub_1
	movs r6, #0
	mov r5, sp
	adds r5, #0x12
	adds r7, r4, #0
_08000A76:
	adds r4, r6, #5
	movs r0, #4
	adds r1, r4, #0
	adds r2, r5, #0
	bl sub_08000BD0
	ldrh r2, [r7]
	movs r0, #0xa
	adds r1, r4, #0
	bl sub_08000B68
	ldrh r2, [r5, #0xa]
	movs r0, #0x10
	adds r1, r4, #0
	bl sub_08000AEC
	adds r5, #0x10
	adds r7, #0x10
	adds r6, #1
	cmp r6, #4
	ble _08000A76
	ldr r1, [sp, #0x70]
	cmp r1, #4
	bgt _08000ADA
	movs r0, #5
	subs r4, r0, r1
	movs r6, #0
	cmp r6, r4
	bge _08000ADA
	mov r1, r8
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #4
	subs r0, r0, r1
	lsls r5, r0, #2
_08000ABC:
	movs r1, #9
	subs r1, r1, r6
	lsls r0, r1, #2
	adds r0, r0, r1
	lsls r0, r0, #3
	adds r0, r0, r5
	ldr r1, _08000AE8 @ =gUnk_02010330
	adds r0, r0, r1
	mov r1, sp
	movs r2, #0xf
	bl memcpy
	adds r6, #1
	cmp r6, r4
	blt _08000ABC
_08000ADA:
	add sp, #0x74
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000AE8: .4byte gUnk_02010330

	thumb_func_start sub_08000AEC
sub_08000AEC: @ 0x08000AEC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	adds r6, r1, #0
	adds r4, r2, #0
	bl sub_080026BC
	adds r5, r0, #0
	ldr r0, _08000B28 @ =0x000003E7
	cmp r4, r0
	ble _08000B08
	adds r4, r0, #0
_08000B08:
	ldr r1, _08000B2C @ =gUnk_08014F84
	mov r0, sp
	adds r2, r4, #0
	bl sprintf
	lsls r4, r6, #2
	lsls r1, r5, #3
	movs r7, #0
	mov r2, sp
	movs r3, #2
_08000B1C:
	ldrb r0, [r2]
	cmp r0, #0x20
	bne _08000B30
	strb r7, [r2]
	b _08000B34
	.align 2, 0
_08000B28: .4byte 0x000003E7
_08000B2C: .4byte gUnk_08014F84
_08000B30:
	adds r0, #0x71
	strb r0, [r2]
_08000B34:
	adds r2, #1
	subs r3, #1
	cmp r3, #0
	bge _08000B1C
	adds r0, r4, r6
	lsls r0, r0, #3
	subs r1, r1, r5
	lsls r1, r1, #4
	subs r1, r1, r5
	lsls r1, r1, #2
	adds r0, r0, r1
	add r0, r8
	ldr r1, _08000B64 @ =gUnk_0201032C
	adds r0, r0, r1
	mov r1, sp
	movs r2, #3
	bl memcpy
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000B64: .4byte gUnk_0201032C

	thumb_func_start sub_08000B68
sub_08000B68: @ 0x08000B68
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r7, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	bl sub_080026BC
	adds r5, r0, #0
	ldr r0, _08000BC4 @ =0x0001869F
	cmp r4, r0
	ble _08000B80
	adds r4, r0, #0
_08000B80:
	ldr r1, _08000BC8 @ =gUnk_08014F88
	mov r0, sp
	adds r2, r4, #0
	bl sprintf
	movs r2, #0
	lsls r3, r6, #2
	lsls r4, r5, #3
_08000B90:
	mov r0, sp
	adds r1, r0, r2
	ldrb r0, [r1]
	adds r0, #0x71
	strb r0, [r1]
	adds r2, #1
	cmp r2, #4
	ble _08000B90
	adds r0, r3, r6
	lsls r0, r0, #3
	subs r1, r4, r5
	lsls r1, r1, #4
	subs r1, r1, r5
	lsls r1, r1, #2
	adds r0, r0, r1
	adds r0, r0, r7
	ldr r1, _08000BCC @ =gUnk_0201032C
	adds r0, r0, r1
	mov r1, sp
	movs r2, #5
	bl memcpy
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000BC4: .4byte 0x0001869F
_08000BC8: .4byte gUnk_08014F88
_08000BCC: .4byte gUnk_0201032C

	thumb_func_start sub_08000BD0
sub_08000BD0: @ 0x08000BD0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	adds r5, r1, #0
	mov r8, r2
	movs r7, #0
	bl sub_080026BC
	movs r6, #0
	ldr r3, _08000C18 @ =gUnk_02010300
	lsls r2, r5, #2
	adds r2, r2, r5
	lsls r2, r2, #3
	lsls r1, r0, #3
	subs r1, r1, r0
	lsls r1, r1, #4
	subs r1, r1, r0
	adds r2, #0x2c
	adds r4, r4, r2
	lsls r1, r1, #2
	adds r4, r4, r1
	adds r4, r4, r3
	movs r2, #0
_08000C00:
	mov r1, r8
	adds r0, r1, r6
	ldrb r1, [r0]
	adds r0, r1, #0
	cmp r0, #0xff
	bne _08000C0E
	movs r7, #1
_08000C0E:
	cmp r7, #0
	bne _08000C1C
	strb r1, [r4]
	b _08000C1E
	.align 2, 0
_08000C18: .4byte gUnk_02010300
_08000C1C:
	strb r2, [r4]
_08000C1E:
	adds r4, #1
	adds r6, #1
	cmp r6, #4
	ble _08000C00
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08000C30
sub_08000C30: @ 0x08000C30
	push {lr}
	adds r3, r0, #0
	ldr r0, [r1]
	cmp r0, #0
	beq _08000C6A
	ldrb r2, [r3]
	ldrb r0, [r1]
	cmp r2, r0
	bhi _08000C6A
	cmp r2, r0
	blo _08000C6E
	ldrb r2, [r3, #1]
	ldrb r0, [r1, #1]
	cmp r2, r0
	bhi _08000C6A
	cmp r2, r0
	blo _08000C6E
	ldrb r2, [r3, #2]
	ldrb r0, [r1, #2]
	cmp r2, r0
	bhi _08000C6A
	cmp r2, r0
	blo _08000C6E
	ldrb r2, [r3, #3]
	ldrb r0, [r1, #3]
	cmp r2, r0
	bhi _08000C6A
	cmp r2, r0
	blo _08000C6E
_08000C6A:
	movs r0, #1
	b _08000C70
_08000C6E:
	movs r0, #0
_08000C70:
	pop {r1}
	bx r1

	thumb_func_start sub_08000C74
sub_08000C74: @ 0x08000C74
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	movs r1, #1
	rsbs r1, r1, #0
	ldr r0, [r2]
	cmp r0, r1
	beq _08000CB4
	ldrb r1, [r3]
	ldrb r0, [r2]
	cmp r1, r0
	blo _08000CB4
	cmp r1, r0
	bhi _08000CB8
	ldrb r1, [r3, #1]
	ldrb r0, [r2, #1]
	cmp r1, r0
	blo _08000CB4
	cmp r1, r0
	bhi _08000CB8
	ldrb r1, [r3, #2]
	ldrb r0, [r2, #2]
	cmp r1, r0
	blo _08000CB4
	cmp r1, r0
	bhi _08000CB8
	ldrb r1, [r3, #3]
	ldrb r0, [r2, #3]
	cmp r1, r0
	blo _08000CB4
	cmp r1, r0
	bhi _08000CB8
_08000CB4:
	movs r0, #1
	b _08000CBA
_08000CB8:
	movs r0, #0
_08000CBA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08000CC0
sub_08000CC0: @ 0x08000CC0
	push {r4, r5, r6, r7, lr}
	adds r7, r1, #0
	adds r4, r2, #0
	adds r5, r3, #0
	movs r2, #0
	cmp r2, r5
	bge _08000CF4
	lsls r6, r0, #1
	ldr r0, _08000CFC @ =gUnk_03000250
	mov ip, r0
_08000CD4:
	adds r0, r7, r2
	lsls r0, r0, #6
	add r0, ip
	adds r1, r6, r0
	adds r2, #1
	cmp r4, #0
	ble _08000CF0
	movs r3, #0
	adds r0, r4, #0
_08000CE6:
	strh r3, [r1]
	adds r1, #2
	subs r0, #1
	cmp r0, #0
	bne _08000CE6
_08000CF0:
	cmp r2, r5
	blt _08000CD4
_08000CF4:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08000CFC: .4byte gUnk_03000250

	thumb_func_start sub_08000D00
sub_08000D00: @ 0x08000D00
	push {lr}
	ldr r0, _08000D14 @ =gUnk_03000250
	movs r2, #0xa0
	lsls r2, r2, #3
	movs r1, #0
	bl memset
	pop {r0}
	bx r0
	.align 2, 0
_08000D14: .4byte gUnk_03000250

	thumb_func_start sub_08000D18
sub_08000D18: @ 0x08000D18
	lsls r0, r0, #3
	ldr r1, _08000D28 @ =gUnk_03000750
	adds r0, r0, r1
	movs r2, #0x80
	lsls r2, r2, #2
	adds r1, r2, #0
	strh r1, [r0]
	bx lr
	.align 2, 0
_08000D28: .4byte gUnk_03000750

	thumb_func_start sub_08000D2C
sub_08000D2C: @ 0x08000D2C
	push {lr}
	ldr r1, _08000D48 @ =gUnk_03000750
	movs r0, #0x80
	lsls r0, r0, #2
	adds r2, r0, #0
	movs r3, #0xfe
	lsls r3, r3, #2
	adds r0, r1, r3
_08000D3C:
	strh r2, [r0]
	subs r0, #8
	cmp r0, r1
	bge _08000D3C
	pop {r0}
	bx r0
	.align 2, 0
_08000D48: .4byte gUnk_03000750

	thumb_func_start sub_08000D4C
sub_08000D4C: @ 0x08000D4C
	push {r4, lr}
	adds r4, r2, #0
	lsls r0, r0, #1
	lsls r1, r1, #6
	ldr r2, _08000D78 @ =gUnk_03000250
	adds r1, r1, r2
	adds r1, r0, r1
	ldrb r0, [r3]
	cmp r0, #0
	beq _08000D72
	lsls r2, r4, #0xc
_08000D62:
	ldrb r0, [r3]
	orrs r0, r2
	strh r0, [r1]
	adds r1, #2
	adds r3, #1
	ldrb r0, [r3]
	cmp r0, #0
	bne _08000D62
_08000D72:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08000D78: .4byte gUnk_03000250

	thumb_func_start sub_08000D7C
sub_08000D7C: @ 0x08000D7C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r2, r3, #0
	ldr r1, _08000DA4 @ =gUnk_08014F90
	mov r0, sp
	bl sprintf
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	mov r3, sp
	bl sub_08000D4C
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08000DA4: .4byte gUnk_08014F90

	thumb_func_start sub_08000DA8
sub_08000DA8: @ 0x08000DA8
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r2, r3, #0
	ldr r1, _08000DD0 @ =gUnk_08014F98
	mov r0, sp
	bl sprintf
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	mov r3, sp
	bl sub_08000D4C
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08000DD0: .4byte gUnk_08014F98

	thumb_func_start sub_08000DD4
sub_08000DD4: @ 0x08000DD4
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r2, r3, #0
	ldr r1, _08000DFC @ =gUnk_08014FA0
	mov r0, sp
	bl sprintf
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	mov r3, sp
	bl sub_08000D4C
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08000DFC: .4byte gUnk_08014FA0

	thumb_func_start sub_08000E00
sub_08000E00: @ 0x08000E00
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r2, r3, #0
	ldr r1, _08000E28 @ =gUnk_08014FA8
	mov r0, sp
	bl sprintf
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	mov r3, sp
	bl sub_08000D4C
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08000E28: .4byte gUnk_08014FA8

	thumb_func_start sub_08000E2C
sub_08000E2C: @ 0x08000E2C
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r2, r3, #0
	ldr r1, _08000E54 @ =gUnk_08014FAC
	mov r0, sp
	bl sprintf
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	mov r3, sp
	bl sub_08000D4C
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08000E54: .4byte gUnk_08014FAC

	thumb_func_start sub_08000E58
sub_08000E58: @ 0x08000E58
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	adds r2, r3, #0
	ldr r1, _08000E80 @ =gUnk_08014FB4
	mov r0, sp
	bl sprintf
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	mov r3, sp
	bl sub_08000D4C
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08000E80: .4byte gUnk_08014FB4

	thumb_func_start sub_08000E84
sub_08000E84: @ 0x08000E84
	ldr r0, _08000EB0 @ =gIntrTable
	ldr r1, _08000EB4 @ =nullsub_7
	str r1, [r0]
	ldr r2, _08000EB8 @ =sub_08000EC0
	str r2, [r0, #4]
	str r1, [r0, #8]
	str r1, [r0, #0xc]
	str r1, [r0, #0x10]
	str r1, [r0, #0x14]
	str r1, [r0, #0x18]
	str r1, [r0, #0x1c]
	str r1, [r0, #0x20]
	str r1, [r0, #0x24]
	str r1, [r0, #0x28]
	str r1, [r0, #0x2c]
	str r1, [r0, #0x30]
	str r1, [r0, #0x34]
	ldr r1, _08000EBC @ =gUnk_0300004C
	movs r0, #0
	strb r0, [r1]
	bx lr
	.align 2, 0
_08000EB0: .4byte gIntrTable
_08000EB4: .4byte nullsub_7
_08000EB8: .4byte sub_08000EC0
_08000EBC: .4byte gUnk_0300004C

	thumb_func_start sub_08000EC0
sub_08000EC0: @ 0x08000EC0
	push {lr}
	ldr r0, _08000EF8 @ =gUnk_0300004D
	ldrb r1, [r0]
	adds r1, #1
	strb r1, [r0]
	bl sub_08002770
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08000F10
	ldr r1, _08000EFC @ =0x040000D4
	ldr r0, _08000F00 @ =gUnk_03000250
	str r0, [r1]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08000F04 @ =0x84000140
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r0, _08000F08 @ =gUnk_03000750
	str r0, [r1]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r1, #4]
	ldr r0, _08000F0C @ =0x84000100
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	b _08000F14
	.align 2, 0
_08000EF8: .4byte gUnk_0300004D
_08000EFC: .4byte 0x040000D4
_08000F00: .4byte gUnk_03000250
_08000F04: .4byte 0x84000140
_08000F08: .4byte gUnk_03000750
_08000F0C: .4byte 0x84000100
_08000F10:
	bl sub_080054C8
_08000F14:
	bl rfu_LMAN_syncVBlank
	ldr r1, _08000F24 @ =gUnk_0300004C
	movs r0, #1
	strb r0, [r1]
	pop {r0}
	bx r0
	.align 2, 0
_08000F24: .4byte gUnk_0300004C

	thumb_func_start nullsub_7
nullsub_7: @ 0x08000F28
	bx lr
	.align 2, 0

	thumb_func_start sub_08000F2C
sub_08000F2C: @ 0x08000F2C
	push {lr}
	ldr r1, _08000F40 @ =gUnk_0300004C
	movs r0, #0
	strb r0, [r1]
_08000F34:
	ldrb r0, [r1]
	cmp r0, #0
	beq _08000F34
	pop {r0}
	bx r0
	.align 2, 0
_08000F40: .4byte gUnk_0300004C

	thumb_func_start sub_08000F44
sub_08000F44: @ 0x08000F44
	ldr r0, _08000F4C @ =gUnk_0300004D
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08000F4C: .4byte gUnk_0300004D

	thumb_func_start sub_08000F50
sub_08000F50: @ 0x08000F50
	ldr r1, _08000F58 @ =gUnk_0300004D
	strb r0, [r1]
	bx lr
	.align 2, 0
_08000F58: .4byte gUnk_0300004D

	thumb_func_start AgbMain
AgbMain: @ 0x08000F5C
	push {r4, r5, lr}
	bl sub_08000F94
	movs r0, #1
	bl sub_08001124
	bl sub_080010EC
	ldr r5, _08000F8C @ =gUnk_080162D0
	ldr r4, _08000F90 @ =gUnk_03000B5C
_08000F70:
	bl sub_0800333C
	ldrb r0, [r4]
	lsls r0, r0, #2
	adds r0, r0, r5
	ldr r0, [r0]
	bl _call_via_r0
	bl sub_080010EC
	bl sub_08000F2C
	b _08000F70
	.align 2, 0
_08000F8C: .4byte gUnk_080162D0
_08000F90: .4byte gUnk_03000B5C

	thumb_func_start sub_08000F94
sub_08000F94: @ 0x08000F94
	push {r4, r5, lr}
	sub sp, #4
	ldr r1, _08001058 @ =0x04000204
	ldr r2, _0800105C @ =0x00004014
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0
	str r0, [sp]
	ldr r1, _08001060 @ =0x040000D4
	mov r0, sp
	str r0, [r1]
	movs r0, #0x80
	lsls r0, r0, #0x12
	str r0, [r1, #4]
	ldr r0, _08001064 @ =0x85010000
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	movs r5, #0
	movs r4, #0xc0
	lsls r4, r4, #0x12
_08000FBC:
	ldr r0, _08001068 @ =gUnk_03000B58
	cmp r4, r0
	beq _08000FD0
	movs r0, #0
	str r0, [sp]
	mov r0, sp
	adds r1, r4, #0
	ldr r2, _0800106C @ =0x05000001
	bl CpuSet
_08000FD0:
	adds r4, #4
	adds r5, #1
	ldr r0, _08001070 @ =0x00001EDF
	cmp r5, r0
	ble _08000FBC
	movs r2, #0
	str r2, [sp]
	ldr r3, _08001060 @ =0x040000D4
	mov r0, sp
	str r0, [r3]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r3, #4]
	ldr r0, _08001074 @ =0x85006000
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	movs r0, #0x20
	str r0, [sp]
	mov r0, sp
	str r0, [r3]
	movs r0, #0xe0
	lsls r0, r0, #0x13
	str r0, [r3, #4]
	ldr r1, _08001078 @ =0x85000100
	str r1, [r3, #8]
	ldr r0, [r3, #8]
	str r2, [sp]
	mov r2, sp
	str r2, [r3]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r3, #4]
	str r1, [r3, #8]
	ldr r0, [r3, #8]
	ldr r1, _0800107C @ =gUnk_0808E5D4
	str r1, [r3]
	movs r0, #0x80
	lsls r0, r0, #0x12
	str r0, [r3, #4]
	ldr r0, _08001080 @ =0x080BF70C
	subs r0, r0, r1
	cmp r0, #0
	bge _08001028
	adds r0, #3
_08001028:
	asrs r0, r0, #2
	movs r1, #0x84
	lsls r1, r1, #0x18
	orrs r0, r1
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _08001084 @ =IntrMain
	str r0, [r3]
	ldr r1, _08001088 @ =gUnk_03000050
	str r1, [r3, #4]
	ldr r0, _0800108C @ =0x84000080
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _08001090 @ =INTR_VECTOR
	str r1, [r0]
	bl sub_08000E84
	bl sub_0800128C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08001094
_08001054:
	b _08001054
	.align 2, 0
_08001058: .4byte 0x04000204
_0800105C: .4byte 0x00004014
_08001060: .4byte 0x040000D4
_08001064: .4byte 0x85010000
_08001068: .4byte gUnk_03000B58
_0800106C: .4byte 0x05000001
_08001070: .4byte 0x00001EDF
_08001074: .4byte 0x85006000
_08001078: .4byte 0x85000100
_0800107C: .4byte gUnk_0808E5D4
_08001080: .4byte 0x080BF70C
_08001084: .4byte IntrMain
_08001088: .4byte gUnk_03000050
_0800108C: .4byte 0x84000080
_08001090: .4byte INTR_VECTOR
_08001094:
	ldr r1, _080010D0 @ =0x04000004
	movs r0, #8
	strh r0, [r1]
	ldr r1, _080010D4 @ =0x04000202
	ldr r2, _080010D8 @ =0x0000FFFF
	adds r0, r2, #0
	strh r0, [r1]
	subs r1, #2
	movs r0, #0x81
	strh r0, [r1]
	adds r1, #8
	movs r0, #1
	strh r0, [r1]
	ldr r0, _080010DC @ =0x04000100
	ldrh r0, [r0]
	bl srand
	ldr r1, _080010E0 @ =gUnk_03000B5D
	movs r0, #0
	strb r0, [r1]
	ldr r0, _080010E4 @ =sub_08000F2C
	ldr r2, _080010E8 @ =gUnk_0300002C
	movs r1, #2
	bl sub_08004F74
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080010D0: .4byte 0x04000004
_080010D4: .4byte 0x04000202
_080010D8: .4byte 0x0000FFFF
_080010DC: .4byte 0x04000100
_080010E0: .4byte gUnk_03000B5D
_080010E4: .4byte sub_08000F2C
_080010E8: .4byte gUnk_0300002C

	thumb_func_start sub_080010EC
sub_080010EC: @ 0x080010EC
	push {r4, lr}
	ldr r0, _08001104 @ =gUnk_03000B5C
	ldr r1, _08001108 @ =gUnk_03000B5D
	ldrb r2, [r0]
	adds r4, r0, #0
	adds r3, r1, #0
	ldrb r0, [r3]
	cmp r2, r0
	bne _08001110
	ldr r1, _0800110C @ =gUnk_03000B5E
	movs r0, #0
	b _08001114
	.align 2, 0
_08001104: .4byte gUnk_03000B5C
_08001108: .4byte gUnk_03000B5D
_0800110C: .4byte gUnk_03000B5E
_08001110:
	ldr r1, _08001120 @ =gUnk_03000B5E
	movs r0, #1
_08001114:
	strb r0, [r1]
	ldrb r0, [r4]
	strb r0, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08001120: .4byte gUnk_03000B5E

	thumb_func_start sub_08001124
sub_08001124: @ 0x08001124
	ldr r1, _0800112C @ =gUnk_03000B5C
	strb r0, [r1]
	bx lr
	.align 2, 0
_0800112C: .4byte gUnk_03000B5C

	thumb_func_start nullsub_08
nullsub_08: @ 0x08001130
	bx lr
	.align 2, 0

	thumb_func_start sub_08001134
sub_08001134: @ 0x08001134
	ldr r0, _08001140 @ =gUnk_03000B5E
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0
_08001140: .4byte gUnk_03000B5E

	thumb_func_start sub_08001144
sub_08001144: @ 0x08001144
	push {r4, lr}
	sub sp, #0xc
	mov r0, sp
	bl SiiRtcGetDateTime
	mov r0, sp
	ldr r4, _0800119C @ =gUnk_08012960
	ldrb r1, [r0]
	ldrb r0, [r4]
	cmp r1, r0
	blo _08001194
	cmp r1, r0
	bls _08001162
	bl sub_080011A0
_08001162:
	mov r0, sp
	ldrb r0, [r0, #1]
	ldrb r1, [r4, #1]
	cmp r0, r1
	blo _08001194
	cmp r0, r1
	bls _08001174
	bl sub_080011A0
_08001174:
	mov r0, sp
	ldrb r0, [r0, #2]
	ldrb r1, [r4, #2]
	cmp r0, r1
	blo _08001194
	cmp r0, r1
	bls _08001186
	bl sub_080011A0
_08001186:
	mov r0, sp
	ldrb r0, [r0, #4]
	ldrb r4, [r4, #3]
	cmp r0, r4
	blo _08001194
	bl sub_080011A0
_08001194:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800119C: .4byte gUnk_08012960

	thumb_func_start sub_080011A0
sub_080011A0: @ 0x080011A0
	push {r4, r5, lr}
	ldr r0, _08001240 @ =0x04000208
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08001244 @ =0x04000050
	strh r1, [r0]
	ldr r2, _08001248 @ =0x040000D4
	ldr r0, _0800124C @ =gUnk_08072AC0
	str r0, [r2]
	movs r0, #0xc0
	lsls r0, r0, #0x13
	str r0, [r2, #4]
	ldr r0, _08001250 @ =0x84004000
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _08001254 @ =gUnk_0808D2C0
	str r0, [r2]
	ldr r0, _08001258 @ =0x06004000
	str r0, [r2, #4]
	ldr r0, _0800125C @ =0x84000400
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r0, _08001260 @ =gUnk_0808AEC0
	str r0, [r2]
	movs r0, #0xa0
	lsls r0, r0, #0x13
	str r0, [r2, #4]
	ldr r0, _08001264 @ =0x84000080
	str r0, [r2, #8]
	ldr r0, [r2, #8]
	ldr r1, _08001268 @ =0x04000008
	movs r3, #0x88
	lsls r3, r3, #4
	adds r0, r3, #0
	strh r0, [r1]
	subs r1, #8
	movs r3, #0x80
	lsls r3, r3, #1
	adds r0, r3, #0
	strh r0, [r1]
	adds r1, #0xb0
	ldrh r3, [r1, #0xa]
	ldr r5, _0800126C @ =0x0000C5FF
	adds r0, r5, #0
	ands r0, r3
	strh r0, [r1, #0xa]
	ldrh r3, [r1, #0xa]
	ldr r4, _08001270 @ =0x00007FFF
	adds r0, r4, #0
	ands r0, r3
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r3, [r1, #0xa]
	adds r0, r5, #0
	ands r0, r3
	strh r0, [r1, #0xa]
	ldrh r3, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r3
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r3, [r1, #0xa]
	adds r0, r5, #0
	ands r0, r3
	strh r0, [r1, #0xa]
	ldrh r3, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r3
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldrh r0, [r2, #0xa]
	ands r5, r0
	strh r5, [r2, #0xa]
	ldrh r0, [r2, #0xa]
	ands r4, r0
	strh r4, [r2, #0xa]
	ldrh r0, [r2, #0xa]
_0800123E:
	b _0800123E
	.align 2, 0
_08001240: .4byte 0x04000208
_08001244: .4byte 0x04000050
_08001248: .4byte 0x040000D4
_0800124C: .4byte gUnk_08072AC0
_08001250: .4byte 0x84004000
_08001254: .4byte gUnk_0808D2C0
_08001258: .4byte 0x06004000
_0800125C: .4byte 0x84000400
_08001260: .4byte gUnk_0808AEC0
_08001264: .4byte 0x84000080
_08001268: .4byte 0x04000008
_0800126C: .4byte 0x0000C5FF
_08001270: .4byte 0x00007FFF

	thumb_func_start sub_08001274
sub_08001274: @ 0x08001274
	ldr r0, _0800127C @ =gUnk_03000B58
	ldr r0, [r0]
	bx lr
	.align 2, 0
_0800127C: .4byte gUnk_03000B58

	thumb_func_start sub_08001280
sub_08001280: @ 0x08001280
	ldr r1, _08001288 @ =gUnk_03000B58
	str r0, [r1]
	bx lr
	.align 2, 0
_08001288: .4byte gUnk_03000B58

	thumb_func_start sub_0800128C
sub_0800128C: @ 0x0800128C
	push {r4, lr}
	ldr r0, _080012B0 @ =gUnk_03000B60
	ldr r1, _080012B4 @ =0x00000E8C
	ldr r4, _080012B8 @ =gIntrTable
	adds r2, r4, #0
	movs r3, #1
	bl rfu_initializeAPI
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080012BC
	adds r1, r4, #0
	adds r1, #0x10
	movs r0, #0
	bl rfu_setTimerInterrupt
	movs r0, #1
	b _080012BE
	.align 2, 0
_080012B0: .4byte gUnk_03000B60
_080012B4: .4byte 0x00000E8C
_080012B8: .4byte gIntrTable
_080012BC:
	movs r0, #0
_080012BE:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080012C4
sub_080012C4: @ 0x080012C4
	push {lr}
	bl rfu_REQ_stopMode
	bl rfu_waitREQComplete
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080012D4
sub_080012D4: @ 0x080012D4
	push {r4, lr}
	ldr r0, _08001340 @ =gUnk_03001B48
	movs r1, #0
	strb r1, [r0]
	ldr r0, _08001344 @ =gUnk_03001B85
	strb r1, [r0]
	ldr r0, _08001348 @ =gUnk_03001B86
	strb r1, [r0]
	ldr r0, _0800134C @ =gUnk_03001B4B
	strb r1, [r0]
	ldr r0, _08001350 @ =gUnk_03001B4C
	strb r1, [r0]
	ldr r0, _08001354 @ =gUnk_03001B4D
	strb r1, [r0]
	ldr r0, _08001358 @ =gUnk_03001B4E
	strb r1, [r0]
	ldr r0, _0800135C @ =gUnk_03001B4F
	strb r1, [r0]
	ldr r0, _08001360 @ =gUnk_03001B50
	strb r1, [r0]
	ldr r0, _08001364 @ =gUnk_03001B87
	strb r1, [r0]
	ldr r1, _08001368 @ =gUnk_03001B51
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r1]
	movs r4, #0
_0800130C:
	adds r0, r4, #0
	bl sub_08001D80
	adds r4, #1
	cmp r4, #3
	ble _0800130C
	movs r0, #0
	bl sub_08003640
	bl sub_0800151C
	bl rfu_LMAN_REQBN_softReset_and_checkID
	ldr r1, _0800136C @ =0x00008001
	cmp r0, r1
	bne _0800133A
	ldr r0, _08001370 @ =sub_08001430
	ldr r1, _08001374 @ =sub_08001510
	bl rfu_LMAN_initializeManager
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08001378
_0800133A:
	movs r0, #0
	b _080013A2
	.align 2, 0
_08001340: .4byte gUnk_03001B48
_08001344: .4byte gUnk_03001B85
_08001348: .4byte gUnk_03001B86
_0800134C: .4byte gUnk_03001B4B
_08001350: .4byte gUnk_03001B4C
_08001354: .4byte gUnk_03001B4D
_08001358: .4byte gUnk_03001B4E
_0800135C: .4byte gUnk_03001B4F
_08001360: .4byte gUnk_03001B50
_08001364: .4byte gUnk_03001B87
_08001368: .4byte gUnk_03001B51
_0800136C: .4byte 0x00008001
_08001370: .4byte sub_08001430
_08001374: .4byte sub_08001510
_08001378:
	movs r4, #0
_0800137A:
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0x4c
	adds r2, r4, #0
	muls r2, r0, r2
	ldr r0, _080013A8 @ =gUnk_03001A42
	adds r2, r2, r0
	movs r0, #0x20
	movs r3, #0x20
	bl rfu_setRecvBuffer
	adds r4, #1
	cmp r4, #3
	ble _0800137A
	bl rfu_clearAllSlot
	ldr r1, _080013AC @ =gUnk_03001B49
	movs r0, #2
	strb r0, [r1]
	movs r0, #1
_080013A2:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080013A8: .4byte gUnk_03001A42
_080013AC: .4byte gUnk_03001B49

	thumb_func_start sub_080013B0
sub_080013B0: @ 0x080013B0
	push {r4, lr}
	ldr r1, _080013FC @ =gUnk_03001B48
_080013B4:
	ldrb r0, [r1]
	cmp r0, #1
	beq _080013B4
	bl sub_08001E44
	bl sub_08001A60
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08001426
	bl sub_08001970
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08001426
	movs r0, #0
	bl rfu_LMAN_manager_entity
	bl sub_08001B24
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08001426
	bl sub_0800155C
	bl sub_08001678
	bl sub_08001708
	ldr r4, _08001400 @ =gUnk_03001B49
	ldrb r0, [r4]
	cmp r0, #2
	beq _08001404
	cmp r0, #3
	beq _08001410
	b _08001426
	.align 2, 0
_080013FC: .4byte gUnk_03001B48
_08001400: .4byte gUnk_03001B49
_08001404:
	ldr r0, _0800140C @ =gUnk_03001A00
	bl rfu_LMAN_initializeRFU
	b _08001422
	.align 2, 0
_0800140C: .4byte gUnk_03001A00
_08001410:
	ldr r3, _0800142C @ =gUnk_080128FA
	movs r0, #1
	movs r1, #0
	movs r2, #0x78
	bl rfu_LMAN_establishConnection
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08001426
_08001422:
	movs r0, #1
	strb r0, [r4]
_08001426:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800142C: .4byte gUnk_080128FA

	thumb_func_start sub_08001430
sub_08001430: @ 0x08001430
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #0x33
	beq _080014AC
	cmp r0, #0x33
	bgt _08001458
	cmp r0, #0x11
	beq _08001494
	cmp r0, #0x11
	bgt _0800144E
	cmp r0, #0
	beq _08001488
	b _08001506
_0800144E:
	cmp r0, #0x12
	beq _08001506
	cmp r0, #0x30
	beq _080014AC
	b _08001506
_08001458:
	cmp r0, #0xf1
	bgt _0800146A
	cmp r0, #0xf0
	bge _080014E8
	cmp r0, #0x40
	beq _080014AC
	cmp r0, #0x50
	beq _08001474
	b _08001506
_0800146A:
	cmp r1, #0xf2
	beq _08001500
	cmp r1, #0xff
	beq _080014F4
	b _08001506
_08001474:
	bl sub_08001798
	bl sub_08001898
	ldr r1, _08001484 @ =gUnk_03001B48
	movs r0, #0
	b _08001504
	.align 2, 0
_08001484: .4byte gUnk_03001B48
_08001488:
	ldr r1, _08001490 @ =gUnk_03001B49
	movs r0, #3
	b _08001504
	.align 2, 0
_08001490: .4byte gUnk_03001B49
_08001494:
	ldr r2, _080014A4 @ =gUnk_03001B4B
	ldr r0, _080014A8 @ =gUnk_03001D48
	ldrb r1, [r0, #0x14]
	ldrb r0, [r2]
	orrs r0, r1
	strb r0, [r2]
	b _08001506
	.align 2, 0
_080014A4: .4byte gUnk_03001B4B
_080014A8: .4byte gUnk_03001D48
_080014AC:
	ldr r4, _080014D8 @ =gUnk_03001B4B
	ldr r2, _080014DC @ =gUnk_03001D48
	ldrb r1, [r2, #0x14]
	ldrb r0, [r4]
	bics r0, r1
	strb r0, [r4]
	ldrh r0, [r2, #0x14]
	bl sub_08001E18
	ldrb r0, [r4]
	cmp r0, #0
	bne _08001506
	ldr r2, _080014E0 @ =gUnk_03001B49
	ldrb r1, [r2]
	cmp r1, #4
	beq _08001506
	ldr r0, _080014E4 @ =gUnk_03001B4A
	strb r1, [r0]
	movs r0, #4
	strb r0, [r2]
	b _08001506
	.align 2, 0
_080014D8: .4byte gUnk_03001B4B
_080014DC: .4byte gUnk_03001D48
_080014E0: .4byte gUnk_03001B49
_080014E4: .4byte gUnk_03001B4A
_080014E8:
	ldr r1, _080014F0 @ =gUnk_03001B48
	movs r0, #0
	strb r0, [r1]
	b _08001500
	.align 2, 0
_080014F0: .4byte gUnk_03001B48
_080014F4:
	ldr r1, _080014FC @ =gUnk_03001B48
	movs r0, #0
	b _08001504
	.align 2, 0
_080014FC: .4byte gUnk_03001B48
_08001500:
	ldr r1, _0800150C @ =gUnk_03001B85
	movs r0, #1
_08001504:
	strb r0, [r1]
_08001506:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800150C: .4byte gUnk_03001B85

	thumb_func_start sub_08001510
sub_08001510: @ 0x08001510
	push {lr}
	bl rfu_REQ_recvData
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800151C
sub_0800151C: @ 0x0800151C
	ldr r1, _0800154C @ =gUnk_03001A00
	movs r2, #0
	movs r0, #4
	strb r0, [r1]
	movs r0, #0x20
	strb r0, [r1, #1]
	movs r3, #0
	strh r2, [r1, #2]
	strb r3, [r1, #4]
	ldr r0, _08001550 @ =0x00007F7D
	strh r0, [r1, #6]
	ldr r0, _08001554 @ =gUnk_03001B58
	str r0, [r1, #8]
	ldr r0, _08001558 @ =gUnk_03001B68
	str r0, [r1, #0xc]
	strb r3, [r1, #0x10]
	movs r0, #1
	strb r0, [r1, #0x11]
	movs r0, #0x78
	strh r0, [r1, #0x12]
	movs r0, #0x96
	lsls r0, r0, #2
	strh r0, [r1, #0x14]
	bx lr
	.align 2, 0
_0800154C: .4byte gUnk_03001A00
_08001550: .4byte 0x00007F7D
_08001554: .4byte gUnk_03001B58
_08001558: .4byte gUnk_03001B68

	thumb_func_start sub_0800155C
sub_0800155C: @ 0x0800155C
	push {r4, r5, r6, r7, lr}
	ldr r0, _08001580 @ =gRfuLinkStatus
	ldr r2, [r0]
	ldrb r1, [r2]
	cmp r1, #1
	beq _0800156A
	b _0800166E
_0800156A:
	ldr r0, _08001584 @ =gUnk_03001B86
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _0800158C
	ldr r0, _08001588 @ =gUnk_03001B48
	strb r1, [r0]
	bl rfu_REQ_PARENT_resumeRetransmitAndChange
	b _0800166E
	.align 2, 0
_08001580: .4byte gRfuLinkStatus
_08001584: .4byte gUnk_03001B86
_08001588: .4byte gUnk_03001B48
_0800158C:
	ldrb r0, [r2, #3]
	cmp r0, #0
	bne _0800166E
	ldr r0, _08001620 @ =gUnk_03001B87
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0800166E
	ldr r0, _08001624 @ =gUnk_03001B51
	ldrb r1, [r0]
	adds r1, #1
	movs r2, #3
	ands r1, r2
	strb r1, [r0]
	movs r3, #1
	adds r2, r0, #0
	ldr r4, _08001628 @ =gUnk_03001B4B
	ldr r7, _0800162C @ =gUnk_03001A18
_080015B2:
	movs r5, #0
	ldrsb r5, [r2, r5]
	ldrb r0, [r4]
	asrs r0, r5
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800164C
	movs r0, #0x4c
	muls r0, r5, r0
	adds r1, r0, r7
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	beq _0800164C
	movs r0, #1
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0800164C
	movs r4, #0
_080015DA:
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	movs r0, #1
	bl rfu_clearSlot
	adds r4, #1
	cmp r4, #3
	ble _080015DA
	movs r0, #0x4c
	adds r1, r5, #0
	muls r1, r0, r1
	adds r0, r7, #4
	adds r0, r1, r0
	ldr r6, [r0]
	adds r4, r1, r7
	ldrb r3, [r4, #3]
	ldrb r0, [r4, #2]
	cmp r0, #0x10
	bne _08001630
	movs r0, #0x80
	lsls r0, r0, #0x11
	lsls r0, r5
	lsrs r0, r0, #0x18
	adds r2, r3, #0
	adds r1, r6, #0
	bl rfu_UNI_setSendData
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08001662
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	bl rfu_UNI_readySendData
	b _08001662
	.align 2, 0
_08001620: .4byte gUnk_03001B87
_08001624: .4byte gUnk_03001B51
_08001628: .4byte gUnk_03001B4B
_0800162C: .4byte gUnk_03001A18
_08001630:
	movs r7, #1
	adds r0, r7, #0
	lsls r0, r5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #4
	adds r2, r6, #0
	bl rfu_NI_setSendData
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08001662
	strb r7, [r4, #1]
	b _08001662
_0800164C:
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	strb r0, [r2]
	adds r3, #1
	cmp r3, #4
	ble _080015B2
	subs r1, #4
	adds r0, r1, #0
	strb r0, [r2]
_08001662:
	ldr r1, _08001674 @ =gUnk_03001B48
	movs r0, #1
	strb r0, [r1]
	movs r0, #1
	bl rfu_LMAN_REQ_sendData
_0800166E:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001674: .4byte gUnk_03001B48

	thumb_func_start sub_08001678
sub_08001678: @ 0x08001678
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r5, #0
	ldr r0, _080016F4 @ =0x00000257
	mov r8, r0
	movs r6, #0
	ldr r7, _080016F8 @ =gUnk_03001B4B
_08001688:
	ldr r0, _080016FC @ =gRfuSlotStatusNI
	lsls r1, r5, #2
	adds r4, r1, r0
	ldr r0, [r4]
	ldrh r0, [r0]
	cmp r0, #0
	beq _080016DE
	cmp r0, #0x26
	bne _080016B0
	lsrs r1, r6, #0x18
	movs r0, #4
	bl rfu_clearSlot
	ldr r1, _08001700 @ =gUnk_03001A18
	movs r0, #0x4c
	muls r0, r5, r0
	adds r0, r0, r1
	movs r1, #0
	strb r1, [r0]
	strb r1, [r0, #1]
_080016B0:
	ldr r1, [r4]
	ldrh r0, [r1]
	cmp r0, #0x27
	beq _080016BE
	ldrh r0, [r1, #2]
	cmp r0, r8
	bls _080016DE
_080016BE:
	lsrs r1, r6, #0x18
	movs r0, #4
	bl rfu_clearSlot
	movs r0, #1
	lsls r0, r5
	ldrb r1, [r7]
	bics r1, r0
	strb r1, [r7]
	ldr r3, _08001704 @ =gUnk_03001B4E
	ldrb r2, [r3]
	adds r1, r0, #0
	orrs r1, r2
	strb r1, [r3]
	bl sub_08001E18
_080016DE:
	movs r0, #0x80
	lsls r0, r0, #0x11
	adds r6, r6, r0
	adds r5, #1
	cmp r5, #3
	ble _08001688
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080016F4: .4byte 0x00000257
_080016F8: .4byte gUnk_03001B4B
_080016FC: .4byte gRfuSlotStatusNI
_08001700: .4byte gUnk_03001A18
_08001704: .4byte gUnk_03001B4E

	thumb_func_start sub_08001708
sub_08001708: @ 0x08001708
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	movs r5, #0
	ldr r0, _08001784 @ =0x00000257
	mov r8, r0
	movs r6, #0
	ldr r7, _08001788 @ =gUnk_03001B4B
_08001718:
	ldr r0, _0800178C @ =gRfuSlotStatusNI
	lsls r1, r5, #2
	adds r4, r1, r0
	ldr r0, [r4]
	ldrh r0, [r0, #0x34]
	cmp r0, #0
	beq _0800176C
	cmp r0, #0x46
	bne _0800173E
	lsrs r1, r6, #0x18
	movs r0, #8
	bl rfu_clearSlot
	ldr r1, _08001790 @ =gUnk_03001A18
	movs r0, #0x4c
	muls r0, r5, r0
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0, #0xc]
_0800173E:
	ldr r1, [r4]
	ldrh r0, [r1, #0x34]
	cmp r0, #0x47
	beq _0800174C
	ldrh r0, [r1, #0x36]
	cmp r0, r8
	bls _0800176C
_0800174C:
	lsrs r1, r6, #0x18
	movs r0, #8
	bl rfu_clearSlot
	movs r0, #1
	lsls r0, r5
	ldrb r1, [r7]
	bics r1, r0
	strb r1, [r7]
	ldr r3, _08001794 @ =gUnk_03001B4E
	ldrb r2, [r3]
	adds r1, r0, #0
	orrs r1, r2
	strb r1, [r3]
	bl sub_08001E18
_0800176C:
	movs r0, #0x80
	lsls r0, r0, #0x11
	adds r6, r6, r0
	adds r5, #1
	cmp r5, #3
	ble _08001718
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001784: .4byte 0x00000257
_08001788: .4byte gUnk_03001B4B
_0800178C: .4byte gRfuSlotStatusNI
_08001790: .4byte gUnk_03001A18
_08001794: .4byte gUnk_03001B4E

	thumb_func_start sub_08001798
sub_08001798: @ 0x08001798
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r3, _080017D4 @ =gUnk_03001B50
	ldr r2, _080017D8 @ =gUnk_03001D48
	ldrb r1, [r3]
	ldrb r0, [r2, #3]
	adds r6, r1, #0
	eors r6, r0
	ands r6, r1
	movs r5, #0
	movs r0, #1
	mov sl, r0
	ldr r1, _080017DC @ =gUnk_03001B4B
	mov sb, r1
	ldr r2, _080017E0 @ =gUnk_03001B4E
	mov r8, r2
	mov ip, r3
	ldr r4, _080017E4 @ =gUnk_030019F0
_080017C2:
	adds r0, r6, #0
	asrs r0, r5
	mov r1, sl
	ands r0, r1
	cmp r0, #0
	bne _080017E8
	strb r0, [r4]
	b _0800181C
	.align 2, 0
_080017D4: .4byte gUnk_03001B50
_080017D8: .4byte gUnk_03001D48
_080017DC: .4byte gUnk_03001B4B
_080017E0: .4byte gUnk_03001B4E
_080017E4: .4byte gUnk_030019F0
_080017E8:
	ldrb r0, [r4]
	adds r0, #1
	movs r7, #0
	strb r0, [r4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _0800181C
	mov r1, sl
	lsls r1, r5
	mvns r3, r1
	mov r0, sb
	ldrb r2, [r0]
	adds r0, r3, #0
	ands r0, r2
	mov r2, sb
	strb r0, [r2]
	mov r2, r8
	ldrb r0, [r2]
	orrs r1, r0
	strb r1, [r2]
	mov r1, ip
	ldrb r0, [r1]
	ands r3, r0
	strb r3, [r1]
	strb r7, [r4]
_0800181C:
	adds r4, #1
	adds r5, #1
	cmp r5, #3
	ble _080017C2
	ldr r2, _0800185C @ =gUnk_03001B4B
	ldrb r1, [r2]
	ldr r2, _08001860 @ =gUnk_03001B4E
	ldrb r0, [r2]
	bics r1, r0
	ldr r0, _08001864 @ =gUnk_03001D48
	ldrb r2, [r0, #3]
	adds r0, r1, #0
	ands r0, r2
	cmp r0, r1
	beq _08001848
	ldr r0, _08001868 @ =gUnk_03001B51
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08001874
_08001848:
	movs r0, #0
	ldr r1, _0800186C @ =gUnk_03001B86
	strb r0, [r1]
	ldr r2, _08001860 @ =gUnk_03001B4E
	ldrb r0, [r2]
	cmp r0, #0
	beq _08001880
	ldr r1, _08001870 @ =gUnk_03001B87
	movs r0, #1
	b _0800187E
	.align 2, 0
_0800185C: .4byte gUnk_03001B4B
_08001860: .4byte gUnk_03001B4E
_08001864: .4byte gUnk_03001D48
_08001868: .4byte gUnk_03001B51
_0800186C: .4byte gUnk_03001B86
_08001870: .4byte gUnk_03001B87
_08001874:
	movs r0, #1
	ldr r1, _08001890 @ =gUnk_03001B86
	strb r0, [r1]
	ldr r1, _08001894 @ =gUnk_03001B87
	movs r0, #0
_0800187E:
	strb r0, [r1]
_08001880:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001890: .4byte gUnk_03001B86
_08001894: .4byte gUnk_03001B87

	thumb_func_start sub_08001898
sub_08001898: @ 0x08001898
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	ldr r0, _08001958 @ =gUnk_03001B86
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _0800194A
	movs r6, #0
	movs r7, #1
	ldr r5, _0800195C @ =gUnk_03001A18
	movs r0, #0xe
	adds r0, r0, r5
	mov sb, r0
	mov r8, r6
_080018BA:
	ldr r0, _08001960 @ =gUnk_03001B4B
	ldrb r0, [r0]
	asrs r0, r6
	ands r0, r7
	cmp r0, #0
	beq _0800191C
	ldr r1, _08001964 @ =gRfuSlotStatusUNI
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r0, [r0, #0x12]
	cmp r0, #0
	beq _0800191C
	movs r0, #0x4c
	adds r2, r6, #0
	muls r2, r0, r2
	adds r3, r2, r5
	ldrb r0, [r3, #0xd]
	adds r0, r0, r2
	adds r1, r5, #0
	adds r1, #8
	adds r0, r0, r1
	strb r7, [r0]
	ldrb r0, [r3, #0xd]
	adds r0, r0, r2
	adds r1, #2
	adds r0, r0, r1
	mov r1, r8
	strb r1, [r0]
	ldrb r1, [r3, #0xd]
	adds r0, r7, #0
	eors r0, r1
	strb r0, [r3, #0xd]
	lsls r4, r6, #0x18
	lsrs r4, r4, #0x18
	add r2, sb
	ldrb r1, [r3, #0xd]
	lsls r0, r1, #3
	subs r0, r0, r1
	lsls r0, r0, #1
	adds r2, r2, r0
	movs r0, #0x10
	adds r1, r4, #0
	movs r3, #0xe
	bl rfu_setRecvBuffer
	adds r0, r4, #0
	bl rfu_UNI_clearRecvNewDataFlag
_0800191C:
	adds r6, #1
	cmp r6, #3
	ble _080018BA
	ldr r2, _08001968 @ =gUnk_03001B51
	movs r1, #0
	ldrsb r1, [r2, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _0800194A
	ldr r0, _0800196C @ =gRfuSlotStatusNI
	adds r3, r1, #0
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r0, [r1]
	ldrh r2, [r0]
	cmp r2, #0
	bne _0800194A
	ldr r1, _0800195C @ =gUnk_03001A18
	movs r0, #0x4c
	muls r0, r3, r0
	adds r0, r0, r1
	strb r2, [r0]
_0800194A:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001958: .4byte gUnk_03001B86
_0800195C: .4byte gUnk_03001A18
_08001960: .4byte gUnk_03001B4B
_08001964: .4byte gRfuSlotStatusUNI
_08001968: .4byte gUnk_03001B51
_0800196C: .4byte gRfuSlotStatusNI

	thumb_func_start sub_08001970
sub_08001970: @ 0x08001970
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r0, _08001A28 @ =gUnk_03001B4B
	ldr r1, _08001A2C @ =gUnk_03001B4C
	ldrb r2, [r0]
	ldrb r0, [r1]
	adds r1, r2, #0
	eors r1, r0
	ands r1, r2
	mov r8, r1
	movs r6, #0
	ldr r3, _08001A30 @ =gRfuLinkStatus
	mov sl, r3
_08001990:
	mov r1, r8
	asrs r1, r6
	movs r0, #1
	ands r1, r0
	adds r0, r6, #1
	mov sb, r0
	cmp r1, #0
	beq _08001A06
	movs r5, #0
	mov r1, sl
	ldr r0, [r1]
	lsls r1, r6, #5
	adds r0, r0, r1
	ldr r3, _08001A34 @ =gUnk_080128FA
	ldrh r0, [r0, #0x18]
	adds r4, r1, #0
	ldrh r1, [r3]
	cmp r0, r1
	beq _080019D0
	ldr r7, _08001A30 @ =gRfuLinkStatus
	adds r2, r4, #0
	adds r1, r3, #0
_080019BC:
	adds r1, #2
	adds r5, #1
	cmp r5, #0xf
	bgt _080019D0
	ldr r0, [r7]
	adds r0, r0, r2
	ldrh r0, [r0, #0x18]
	ldrh r3, [r1]
	cmp r0, r3
	bne _080019BC
_080019D0:
	adds r0, r6, #0
	bl sub_080026CC
	ldr r0, _08001A38 @ =gUnk_0801291C
	lsls r2, r5, #2
	adds r2, r2, r0
	adds r0, r4, #0
	adds r0, #0x14
	mov r3, sl
	ldr r1, [r3]
	adds r1, r1, r0
	adds r0, r1, #6
	adds r1, #0x15
	ldr r2, [r2]
	bl _call_via_r2
	mov r1, sl
	ldr r0, [r1]
	adds r0, r0, r4
	ldrh r1, [r0, #0x18]
	adds r0, r6, #0
	bl sub_080026D8
	movs r0, #1
	rsbs r0, r0, #0
	bl sub_080026CC
_08001A06:
	mov r6, sb
	cmp r6, #3
	ble _08001990
	ldr r0, _08001A2C @ =gUnk_03001B4C
	ldr r1, _08001A28 @ =gUnk_03001B4B
	ldrb r1, [r1]
	strb r1, [r0]
	mov r3, r8
	cmp r3, #0
	beq _08001A50
	ldr r2, _08001A3C @ =gUnk_03001B49
	ldrb r1, [r2]
	cmp r1, #4
	bne _08001A40
	movs r0, #1
	b _08001A52
	.align 2, 0
_08001A28: .4byte gUnk_03001B4B
_08001A2C: .4byte gUnk_03001B4C
_08001A30: .4byte gRfuLinkStatus
_08001A34: .4byte gUnk_080128FA
_08001A38: .4byte gUnk_0801291C
_08001A3C: .4byte gUnk_03001B49
_08001A40:
	ldr r0, _08001A4C @ =gUnk_03001B4A
	strb r1, [r0]
	movs r0, #4
	strb r0, [r2]
	movs r0, #1
	b _08001A52
	.align 2, 0
_08001A4C: .4byte gUnk_03001B4A
_08001A50:
	movs r0, #0
_08001A52:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08001A60
sub_08001A60: @ 0x08001A60
	push {lr}
	ldr r2, _08001A70 @ =gUnk_03001B49
	ldrb r0, [r2]
	cmp r0, #4
	beq _08001A74
	movs r0, #0
	b _08001A90
	.align 2, 0
_08001A70: .4byte gUnk_03001B49
_08001A74:
	ldr r1, _08001A94 @ =gUnk_030019F4
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	ble _08001A8E
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08001A98 @ =gUnk_03001B4A
	ldrb r0, [r0]
	strb r0, [r2]
_08001A8E:
	movs r0, #1
_08001A90:
	pop {r1}
	bx r1
	.align 2, 0
_08001A94: .4byte gUnk_030019F4
_08001A98: .4byte gUnk_03001B4A

	thumb_func_start sub_08001A9C
sub_08001A9C: @ 0x08001A9C
	push {lr}
	adds r2, r0, #0
	ldr r0, _08001AC8 @ =gUnk_03001B4B
	ldrb r0, [r0]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08001AC4
	ldr r0, _08001ACC @ =gUnk_03001B4E
	ldrb r0, [r0]
	asrs r0, r2
	ands r0, r1
	cmp r0, #0
	bne _08001AC4
	ldr r0, _08001AD0 @ =gUnk_03001B4F
	lsls r1, r2
	ldrb r2, [r0]
	orrs r1, r2
	strb r1, [r0]
_08001AC4:
	pop {r0}
	bx r0
	.align 2, 0
_08001AC8: .4byte gUnk_03001B4B
_08001ACC: .4byte gUnk_03001B4E
_08001AD0: .4byte gUnk_03001B4F

	thumb_func_start sub_08001AD4
sub_08001AD4: @ 0x08001AD4
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	ldr r1, _08001B18 @ =gUnk_03001B4B
	ldrb r0, [r1]
	bics r0, r5
	strb r0, [r1]
	ldr r2, _08001B1C @ =gUnk_03001B4E
	ldrb r1, [r2]
	adds r0, r5, #0
	orrs r0, r1
	strb r0, [r2]
	movs r4, #0
	movs r6, #1
_08001AEE:
	adds r0, r5, #0
	asrs r0, r4
	ands r0, r6
	cmp r0, #0
	beq _08001B04
	adds r0, r4, #0
	bl sub_0800269C
	adds r0, r4, #0
	bl sub_08001D80
_08001B04:
	adds r4, #1
	cmp r4, #3
	ble _08001AEE
	ldr r1, _08001B20 @ =gUnk_03001B4F
	ldrb r0, [r1]
	bics r0, r5
	strb r0, [r1]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08001B18: .4byte gUnk_03001B4B
_08001B1C: .4byte gUnk_03001B4E
_08001B20: .4byte gUnk_03001B4F

	thumb_func_start sub_08001B24
sub_08001B24: @ 0x08001B24
	push {r4, r5, lr}
	bl sub_08001BC0
	ldr r0, _08001B54 @ =gUnk_03001B4E
	ldrb r0, [r0]
	cmp r0, #0
	beq _08001B4E
	ldr r0, _08001B58 @ =gUnk_03001B87
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	ldr r1, _08001B5C @ =gUnk_030019F5
	cmp r0, #0
	bne _08001B60
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0xfe
	bhi _08001B60
_08001B4E:
	movs r0, #0
	b _08001BAA
	.align 2, 0
_08001B54: .4byte gUnk_03001B4E
_08001B58: .4byte gUnk_03001B87
_08001B5C: .4byte gUnk_030019F5
_08001B60:
	movs r0, #0
	strb r0, [r1]
	ldr r0, _08001BB0 @ =gUnk_03001B4E
	ldrb r0, [r0]
	bl rfu_REQ_disconnect
	bl rfu_waitREQComplete
	movs r4, #0
_08001B72:
	ldr r5, _08001BB0 @ =gUnk_03001B4E
	ldrb r0, [r5]
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08001B8A
	lsls r1, r4, #0x18
	lsrs r1, r1, #0x18
	movs r0, #0xf
	bl rfu_clearSlot
_08001B8A:
	adds r4, #1
	cmp r4, #3
	ble _08001B72
	movs r1, #0
	strb r1, [r5]
	ldr r0, _08001BB4 @ =gUnk_03001B87
	strb r1, [r0]
	ldr r2, _08001BB8 @ =gUnk_03001B49
	ldrb r1, [r2]
	cmp r1, #4
	beq _08001BA8
	ldr r0, _08001BBC @ =gUnk_03001B4A
	strb r1, [r0]
	movs r0, #4
	strb r0, [r2]
_08001BA8:
	movs r0, #1
_08001BAA:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08001BB0: .4byte gUnk_03001B4E
_08001BB4: .4byte gUnk_03001B87
_08001BB8: .4byte gUnk_03001B49
_08001BBC: .4byte gUnk_03001B4A

	thumb_func_start sub_08001BC0
sub_08001BC0: @ 0x08001BC0
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	movs r5, #0
	ldr r6, _08001C28 @ =gUnk_03001B4F
	movs r3, #1
	ldr r7, _08001C2C @ =gUnk_03001B4B
	ldr r0, _08001C30 @ =gUnk_03001A18
	mov r8, r0
_08001BD4:
	ldrb r0, [r6]
	asrs r0, r5
	ands r0, r3
	cmp r0, #0
	beq _08001C14
	movs r0, #0x4c
	muls r0, r5, r0
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08001C14
	adds r1, r3, #0
	lsls r1, r5
	mvns r4, r1
	ldrb r2, [r7]
	adds r0, r4, #0
	ands r0, r2
	strb r0, [r7]
	ldr r2, _08001C34 @ =gUnk_03001B4E
	ldrb r0, [r2]
	orrs r1, r0
	strb r1, [r2]
	adds r0, r5, #0
	str r3, [sp]
	bl sub_08001D80
	ldrb r0, [r6]
	ands r4, r0
	strb r4, [r6]
	ldr r3, [sp]
_08001C14:
	adds r5, #1
	cmp r5, #3
	ble _08001BD4
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001C28: .4byte gUnk_03001B4F
_08001C2C: .4byte gUnk_03001B4B
_08001C30: .4byte gUnk_03001A18
_08001C34: .4byte gUnk_03001B4E

	thumb_func_start sub_08001C38
sub_08001C38: @ 0x08001C38
	push {lr}
	bl sub_080026BC
	adds r2, r0, #0
	ldr r0, _08001C68 @ =gUnk_03001B4B
	ldrb r0, [r0]
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08001C64
	ldr r0, _08001C6C @ =gUnk_03001B4E
	ldrb r0, [r0]
	asrs r0, r2
	ands r0, r1
	cmp r0, #0
	bne _08001C64
	ldr r0, _08001C70 @ =gUnk_03001B50
	lsls r1, r2
	ldrb r2, [r0]
	orrs r1, r2
	strb r1, [r0]
_08001C64:
	pop {r0}
	bx r0
	.align 2, 0
_08001C68: .4byte gUnk_03001B4B
_08001C6C: .4byte gUnk_03001B4E
_08001C70: .4byte gUnk_03001B50

	thumb_func_start sub_08001C74
sub_08001C74: @ 0x08001C74
	push {lr}
	adds r1, r0, #0
	ldr r0, _08001C84 @ =gUnk_03001B58
	movs r2, #0xd
	bl memcpy
	pop {r0}
	bx r0
	.align 2, 0
_08001C84: .4byte gUnk_03001B58

	thumb_func_start sub_08001C88
sub_08001C88: @ 0x08001C88
	push {lr}
	adds r1, r0, #0
	ldr r0, _08001C98 @ =gUnk_03001B68
	movs r2, #8
	bl memcpy
	pop {r0}
	bx r0
	.align 2, 0
_08001C98: .4byte gUnk_03001B68

	thumb_func_start sub_08001C9C
sub_08001C9C: @ 0x08001C9C
	push {lr}
	adds r1, r0, #0
	ldr r0, _08001CAC @ =gUnk_03001B70
	movs r2, #0x11
	bl memcpy
	pop {r0}
	bx r0
	.align 2, 0
_08001CAC: .4byte gUnk_03001B70

	thumb_func_start sub_08001CB0
sub_08001CB0: @ 0x08001CB0
	push {lr}
	ldr r1, _08001CC4 @ =gUnk_03001B4B
	ldrb r1, [r1]
	asrs r1, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _08001CC8
	movs r0, #0
	b _08001CCA
	.align 2, 0
_08001CC4: .4byte gUnk_03001B4B
_08001CC8:
	movs r0, #1
_08001CCA:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08001CD0
sub_08001CD0: @ 0x08001CD0
	push {lr}
	ldr r0, _08001D54 @ =gUnk_03001B86
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08001D50
	ldr r0, _08001D58 @ =gRfuLinkStatus
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	cmp r0, #0
	bne _08001D50
	ldr r0, _08001D5C @ =gUnk_03001B49
	ldrb r0, [r0]
	cmp r0, #4
	beq _08001D50
	ldr r0, _08001D60 @ =gUnk_03001B87
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08001D50
	ldr r1, _08001D64 @ =gUnk_030019F6
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x2a
	beq _08001D50
	cmp r0, #0x35
	bls _08001D50
	ldr r0, _08001D68 @ =gUnk_03001B4B
	ldrb r1, [r0]
	movs r0, #0xf
	ands r0, r1
	movs r1, #0
	cmp r0, #0xf
	bne _08001D20
	movs r1, #1
_08001D20:
	adds r0, r1, #0
	bl sub_08003640
	ldr r1, _08001D6C @ =gUnk_03001B48
_08001D28:
	ldrb r0, [r1]
	cmp r0, #1
	beq _08001D28
	ldr r1, _08001D70 @ =0x00007F7D
	ldr r2, _08001D74 @ =gUnk_03001B58
	ldr r3, _08001D78 @ =gUnk_03001B68
	movs r0, #0
	bl rfu_REQ_configGameData
	ldr r1, _08001D64 @ =gUnk_030019F6
	movs r0, #0
	strb r0, [r1]
	ldr r2, _08001D7C @ =gUnk_03001B4A
	ldr r1, _08001D5C @ =gUnk_03001B49
	ldrb r0, [r1]
	strb r0, [r2]
	movs r0, #4
	strb r0, [r1]
	bl rfu_waitREQComplete
_08001D50:
	pop {r0}
	bx r0
	.align 2, 0
_08001D54: .4byte gUnk_03001B86
_08001D58: .4byte gRfuLinkStatus
_08001D5C: .4byte gUnk_03001B49
_08001D60: .4byte gUnk_03001B87
_08001D64: .4byte gUnk_030019F6
_08001D68: .4byte gUnk_03001B4B
_08001D6C: .4byte gUnk_03001B48
_08001D70: .4byte 0x00007F7D
_08001D74: .4byte gUnk_03001B58
_08001D78: .4byte gUnk_03001B68
_08001D7C: .4byte gUnk_03001B4A

	thumb_func_start sub_08001D80
sub_08001D80: @ 0x08001D80
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	ldr r4, _08001E14 @ =gUnk_03001A18
	movs r0, #0x4c
	mov r3, sb
	muls r3, r0, r3
	adds r2, r3, r4
	movs r1, #0
	strb r1, [r2]
	strb r1, [r2, #1]
	strb r1, [r2, #2]
	strb r1, [r2, #3]
	adds r0, r4, #4
	adds r0, r3, r0
	str r1, [r0]
	strb r1, [r2, #0xd]
	strb r1, [r2, #0xc]
	movs r5, #0
	adds r7, r4, #0
	adds r6, r3, #0
	adds r0, r7, #0
	adds r0, #0xe
	adds r4, r6, r0
_08001DB4:
	adds r2, r5, r6
	movs r0, #8
	adds r0, r0, r7
	mov r8, r0
	adds r1, r2, r0
	movs r0, #0
	strb r0, [r1]
	adds r0, r7, #0
	adds r0, #0xa
	adds r2, r2, r0
	movs r0, #1
	strb r0, [r2]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0xe
	bl memset
	adds r4, #0xe
	adds r5, #1
	cmp r5, #1
	ble _08001DB4
	movs r0, #0x4c
	mov r4, sb
	muls r4, r0, r4
	mov r0, r8
	adds r0, #0x22
	adds r0, r4, r0
	movs r1, #0
	movs r2, #0x20
	bl memset
	mov r0, sb
	lsls r1, r0, #0x18
	lsrs r1, r1, #0x18
	mov r0, r8
	adds r0, #6
	adds r4, r4, r0
	movs r0, #0x10
	adds r2, r4, #0
	movs r3, #0xe
	bl rfu_setRecvBuffer
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08001E14: .4byte gUnk_03001A18

	thumb_func_start sub_08001E18
sub_08001E18: @ 0x08001E18
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	movs r4, #0
	movs r6, #1
_08001E20:
	adds r0, r6, #0
	lsls r0, r4
	ands r0, r5
	cmp r0, #0
	beq _08001E36
	adds r0, r4, #0
	bl sub_08001D80
	adds r0, r4, #0
	bl sub_0800269C
_08001E36:
	adds r4, #1
	cmp r4, #3
	ble _08001E20
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08001E44
sub_08001E44: @ 0x08001E44
	push {lr}
	ldr r0, _08001E70 @ =gUnk_03001B85
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08001E56
	bl sub_080034C0
_08001E56:
	ldr r0, _08001E74 @ =gUnk_03001B49
	ldrb r0, [r0]
	cmp r0, #1
	bne _08001E66
	ldr r0, _08001E78 @ =gUnk_03001B4B
	ldrb r0, [r0]
	cmp r0, #0
	beq _08001E80
_08001E66:
	ldr r1, _08001E7C @ =gUnk_030019F8
	movs r0, #0
	strh r0, [r1]
	b _08001E94
	.align 2, 0
_08001E70: .4byte gUnk_03001B85
_08001E74: .4byte gUnk_03001B49
_08001E78: .4byte gUnk_03001B4B
_08001E7C: .4byte gUnk_030019F8
_08001E80:
	ldr r0, _08001E98 @ =gUnk_030019F8
	ldrh r1, [r0]
	adds r1, #1
	strh r1, [r0]
	lsls r1, r1, #0x10
	ldr r0, _08001E9C @ =0x02570000
	cmp r1, r0
	bls _08001E94
	bl sub_080012D4
_08001E94:
	pop {r0}
	bx r0
	.align 2, 0
_08001E98: .4byte gUnk_030019F8
_08001E9C: .4byte 0x02570000

	thumb_func_start sub_08001EA0
sub_08001EA0: @ 0x08001EA0
	push {r4, lr}
	movs r2, #0
	movs r1, #0
	ldr r0, _08001EC4 @ =gUnk_03001B4B
	ldrb r3, [r0]
	movs r4, #1
_08001EAC:
	adds r0, r3, #0
	asrs r0, r1
	ands r0, r4
	adds r2, r2, r0
	adds r1, #1
	cmp r1, #3
	ble _08001EAC
	adds r0, r2, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_08001EC4: .4byte gUnk_03001B4B

	thumb_func_start sub_08001EC8
sub_08001EC8: @ 0x08001EC8
	push {r4, r5, lr}
	adds r5, r0, #0
	bl sub_080026BC
	adds r3, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	beq _08001EFC
	ldr r1, _08001F00 @ =gUnk_03001A18
	movs r0, #0x4c
	muls r0, r3, r0
	adds r2, r0, r1
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r4, r1, #0
	cmp r0, #0
	bne _08001EFC
	movs r0, #0xa
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne _08001F04
	movs r0, #0xb
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne _08001F04
_08001EFC:
	movs r0, #1
	b _08001F20
	.align 2, 0
_08001F00: .4byte gUnk_03001A18
_08001F04:
	movs r0, #0x4c
	adds r1, r3, #0
	muls r1, r0, r1
	adds r2, r1, r4
	movs r0, #0x10
	strb r0, [r2, #2]
	adds r0, r4, #4
	adds r1, r1, r0
	str r5, [r1]
	movs r0, #0x46
	strb r0, [r2, #3]
	movs r0, #1
	strb r0, [r2]
	movs r0, #0
_08001F20:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08001F28
sub_08001F28: @ 0x08001F28
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	bl sub_080026BC
	adds r3, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, r0
	beq _08001F82
	ldr r1, _08001F88 @ =gUnk_03001A18
	movs r0, #0x4c
	muls r0, r3, r0
	adds r2, r0, r1
	movs r0, #0
	ldrsb r0, [r2, r0]
	adds r4, r1, #0
	cmp r0, #0
	bne _08001F82
	movs r0, #1
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne _08001F82
	movs r0, #0xc
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne _08001F82
	ldr r0, _08001F8C @ =gRfuSlotStatusNI
	lsls r1, r3, #2
	adds r1, r1, r0
	ldr r1, [r1]
	ldrh r0, [r1]
	cmp r0, #0
	bne _08001F82
	ldrh r0, [r1, #0x34]
	cmp r0, #0
	bne _08001F82
	movs r0, #0xa
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne _08001F90
	movs r0, #0xb
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne _08001F90
_08001F82:
	movs r0, #1
	b _08001FAA
	.align 2, 0
_08001F88: .4byte gUnk_03001A18
_08001F8C: .4byte gRfuSlotStatusNI
_08001F90:
	movs r0, #0x4c
	adds r1, r3, #0
	muls r1, r0, r1
	adds r2, r1, r4
	movs r0, #0x20
	strb r0, [r2, #2]
	adds r0, r4, #4
	adds r1, r1, r0
	str r5, [r1]
	strb r6, [r2, #3]
	movs r0, #1
	strb r0, [r2]
	movs r0, #0
_08001FAA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08001FB0
sub_08001FB0: @ 0x08001FB0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	bl sub_080026BC
	adds r2, r0, #0
	ldr r1, _08001FDC @ =gUnk_03001A18
	movs r0, #0x4c
	muls r0, r2, r0
	adds r1, r0, r1
	movs r0, #8
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08001FE0
	movs r0, #9
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08001FE0
	movs r0, #1
	b _0800203C
	.align 2, 0
_08001FDC: .4byte gUnk_03001A18
_08001FE0:
	ldr r7, _08002048 @ =gUnk_03001A18
	movs r0, #0x4c
	adds r6, r2, #0
	muls r6, r0, r6
	adds r0, r6, r7
	ldrb r5, [r0, #0xd]
	adds r0, r5, r6
	movs r1, #8
	adds r1, r1, r7
	mov r8, r1
	add r0, r8
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08002004
	movs r0, #1
	eors r5, r0
_08002004:
	lsls r4, r5, #3
	subs r4, r4, r5
	lsls r4, r4, #1
	adds r4, r4, r6
	adds r0, r7, #0
	adds r0, #0xe
	adds r4, r4, r0
	mov r0, sb
	adds r1, r4, #0
	movs r2, #0xe
	bl memcpy
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0xe
	bl memset
	adds r1, r5, r6
	mov r0, r8
	adds r2, r1, r0
	movs r0, #0
	strb r0, [r2]
	adds r0, r7, #0
	adds r0, #0xa
	adds r1, r1, r0
	movs r0, #1
	strb r0, [r1]
	movs r0, #0
_0800203C:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08002048: .4byte gUnk_03001A18

	thumb_func_start sub_0800204C
sub_0800204C: @ 0x0800204C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	bl sub_080026BC
	ldr r4, _08002084 @ =gUnk_03001A18
	movs r1, #0x4c
	muls r1, r0, r1
	adds r5, r1, r4
	movs r0, #0xc
	ldrsb r0, [r5, r0]
	cmp r0, #0
	beq _08002088
	adds r4, #0x2a
	adds r4, r1, r4
	adds r0, r6, #0
	adds r1, r4, #0
	movs r2, #0x20
	bl memcpy
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0x20
	bl memset
	movs r0, #0
	strb r0, [r5, #0xc]
	b _0800208A
	.align 2, 0
_08002084: .4byte gUnk_03001A18
_08002088:
	movs r0, #1
_0800208A:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08002090
sub_08002090: @ 0x08002090
	push {r4, lr}
	sub sp, #4
	bl sub_080026BC
	ldr r2, _080020F4 @ =gUnk_03001A18
	movs r1, #0x4c
	adds r3, r0, #0
	muls r3, r1, r3
	adds r3, r3, r2
	movs r0, #0
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r4, #1
	ands r0, r4
	lsls r0, r0, #0xe
	ldr r1, _080020F8 @ =0xFFFFBFFF
	ldr r2, [sp]
	ands r2, r1
	orrs r2, r0
	str r2, [sp]
	ldrb r0, [r3, #8]
	ldrb r1, [r3, #9]
	orrs r0, r1
	lsls r0, r0, #0x18
	asrs r0, r0, #8
	lsrs r0, r0, #0x10
	ands r0, r4
	lsls r0, r0, #0xf
	ldr r1, _080020FC @ =0xFFFF7FFF
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	movs r0, #0xc
	ldrsb r0, [r3, r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ands r0, r4
	lsls r0, r0, #0xd
	ldr r2, _08002100 @ =0xFFFFDFFF
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	mov r0, sp
	ldrh r0, [r0]
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080020F4: .4byte gUnk_03001A18
_080020F8: .4byte 0xFFFFBFFF
_080020FC: .4byte 0xFFFF7FFF
_08002100: .4byte 0xFFFFDFFF

	thumb_func_start sub_08002104
sub_08002104: @ 0x08002104
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	bl sub_08001134
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08002118
	bl sub_080021DC
_08002118:
	movs r6, #0
	ldr r7, _08002170 @ =0x04000106
	ldr r0, _08002174 @ =0x04000104
	mov r8, r0
_08002120:
	ldr r0, _08002178 @ =gUnk_03001D18
	strb r6, [r0]
	ldrh r1, [r7]
	movs r0, #0x7f
	ands r0, r1
	strh r0, [r7]
	movs r0, #0
	mov r1, r8
	strh r0, [r1]
	ldrh r0, [r7]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r7]
	ldr r0, _0800217C @ =gUnk_03001CE0
	lsls r5, r6, #2
	adds r4, r5, r0
	lsls r0, r6, #0xf
	ldr r1, _08002180 @ =gUnk_020109F0
	adds r0, r0, r1
	ldr r1, [r4]
	bl _call_via_r1
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800218C
	ldr r0, _08002184 @ =gUnk_03001D08
	lsls r1, r6, #1
	adds r0, r1, r0
	mov r3, r8
	ldrh r2, [r3]
	strh r2, [r0]
	ldr r0, _08002188 @ =gUnk_03001D10
	adds r1, r1, r0
	lsls r0, r2, #0x10
	lsrs r0, r0, #0x10
	ldrh r3, [r1]
	cmp r0, r3
	bls _0800219E
	strh r2, [r1]
	b _0800219E
	.align 2, 0
_08002170: .4byte 0x04000106
_08002174: .4byte 0x04000104
_08002178: .4byte gUnk_03001D18
_0800217C: .4byte gUnk_03001CE0
_08002180: .4byte gUnk_020109F0
_08002184: .4byte gUnk_03001D08
_08002188: .4byte gUnk_03001D10
_0800218C:
	ldr r0, _080021D0 @ =sub_08002698
	str r0, [r4]
	ldr r0, _080021D4 @ =gUnk_03001CF0
	adds r0, r5, r0
	movs r1, #0
	str r1, [r0]
	adds r0, r6, #0
	bl sub_08001A9C
_0800219E:
	adds r6, #1
	cmp r6, #3
	ble _08002120
	ldr r1, _080021D8 @ =gUnk_03001D18
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r1]
	bl sub_080013B0
	bl sub_080022A4
	bl sub_080013B0
	bl sub_08001CD0
	movs r0, #0
	bl sub_0800278C
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080021D0: .4byte sub_08002698
_080021D4: .4byte gUnk_03001CF0
_080021D8: .4byte gUnk_03001D18

	thumb_func_start sub_080021DC
sub_080021DC: @ 0x080021DC
	push {r4, r5, r6, r7, lr}
	movs r7, #0
	movs r4, #0
	movs r6, #0
	ldr r5, _08002254 @ =gUnk_03001B90
_080021E6:
	adds r0, r4, #0
	bl sub_08002280
	strh r6, [r5]
	adds r5, #0x54
	adds r4, #1
	cmp r4, #3
	ble _080021E6
	ldr r0, _08002258 @ =gUnk_03001D1C
	movs r2, #0
	strb r2, [r0]
	ldr r1, _0800225C @ =gUnk_03001D19
	movs r3, #1
	rsbs r3, r3, #0
	adds r0, r3, #0
	strb r0, [r1]
	ldr r0, _08002260 @ =gUnk_03001D1B
	strb r2, [r0]
	ldr r2, _08002264 @ =0x04000106
	ldrh r1, [r2]
	movs r0, #0x3a
	ands r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r1, #2
	orrs r0, r1
	strh r0, [r2]
	ldr r3, _08002268 @ =sub_08002698
	movs r1, #0
	ldr r2, _0800226C @ =gUnk_03001CF0
	ldr r0, _08002270 @ =gUnk_03001CE0
	movs r4, #3
_08002226:
	stm r0!, {r3}
	stm r2!, {r1}
	subs r4, #1
	cmp r4, #0
	bge _08002226
	movs r0, #1
	bl sub_0800278C
_08002236:
	bl sub_080012D4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08002274
	adds r7, #1
	cmp r7, #0xd
	ble _08002236
	movs r0, #1
	bl sub_080054E8
_0800224C:
	bl sub_08000F2C
	b _0800224C
	.align 2, 0
_08002254: .4byte gUnk_03001B90
_08002258: .4byte gUnk_03001D1C
_0800225C: .4byte gUnk_03001D19
_08002260: .4byte gUnk_03001D1B
_08002264: .4byte 0x04000106
_08002268: .4byte sub_08002698
_0800226C: .4byte gUnk_03001CF0
_08002270: .4byte gUnk_03001CE0
_08002274:
	movs r0, #0
	bl sub_080054E8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_08002280
sub_08002280: @ 0x08002280
	ldr r1, _08002298 @ =gUnk_03001D00
	lsls r0, r0, #1
	adds r1, r0, r1
	movs r2, #0
	strh r2, [r1]
	ldr r1, _0800229C @ =gUnk_03001D08
	adds r1, r0, r1
	strh r2, [r1]
	ldr r1, _080022A0 @ =gUnk_03001D10
	adds r0, r0, r1
	strh r2, [r0]
	bx lr
	.align 2, 0
_08002298: .4byte gUnk_03001D00
_0800229C: .4byte gUnk_03001D08
_080022A0: .4byte gUnk_03001D10

	thumb_func_start sub_080022A4
sub_080022A4: @ 0x080022A4
	push {lr}
	ldr r0, _080022C8 @ =gUnk_03001D1C
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _080022D4
	ldr r0, _080022CC @ =gUnk_03001D19
	movs r1, #0
	ldrsb r1, [r0, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080022D0
	bl sub_080022D8
	b _080022D4
	.align 2, 0
_080022C8: .4byte gUnk_03001D1C
_080022CC: .4byte gUnk_03001D19
_080022D0:
	bl sub_080023F4
_080022D4:
	pop {r0}
	bx r0

	thumb_func_start sub_080022D8
sub_080022D8: @ 0x080022D8
	push {r4, r5, r6, r7, lr}
	movs r0, #0
	bl sub_080033E8
	bl sub_08000D00
	movs r7, #0
	ldr r6, _080023AC @ =gUnk_080162E0
_080022E8:
	ldrh r4, [r6]
	ldrh r5, [r6, #2]
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	ldr r3, _080023B0 @ =gUnk_08016344
	bl sub_08000D4C
	adds r4, #4
	adds r0, r4, #0
	adds r1, r5, #0
	movs r2, #0
	adds r3, r7, #0
	bl sub_08000E00
	adds r6, #4
	adds r7, #1
	cmp r7, #3
	ble _080022E8
	ldr r1, _080023B4 @ =gUnk_080162F0
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	ldr r3, _080023B8 @ =gUnk_0801634C
	movs r2, #0xd
	bl sub_08000D4C
	ldr r1, _080023BC @ =gUnk_080162F4
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	ldr r3, _080023C0 @ =gUnk_08016354
	movs r2, #0xd
	bl sub_08000D4C
	ldr r1, _080023C4 @ =gUnk_080162F8
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	ldr r3, _080023C8 @ =gUnk_08016358
	movs r2, #0xd
	bl sub_08000D4C
	ldr r1, _080023CC @ =gUnk_080162FC
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	ldr r3, _080023D0 @ =gUnk_0801635C
	movs r2, #0xd
	bl sub_08000D4C
	movs r7, #0
_08002348:
	ldr r1, _080023D4 @ =gUnk_08016300
	lsls r4, r7, #2
	adds r1, r4, r1
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	ldr r2, _080023D8 @ =gUnk_03001D00
	lsls r5, r7, #1
	adds r2, r5, r2
	ldrh r3, [r2]
	movs r2, #2
	bl sub_08000DA8
	ldr r1, _080023DC @ =gUnk_08016310
	adds r1, r4, r1
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	ldr r2, _080023E0 @ =gUnk_03001D08
	adds r2, r5, r2
	ldrh r3, [r2]
	movs r2, #3
	bl sub_08000DA8
	ldr r1, _080023E4 @ =gUnk_08016320
	adds r1, r4, r1
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	ldr r2, _080023E8 @ =gUnk_03001D10
	adds r5, r5, r2
	ldrh r3, [r5]
	movs r2, #1
	bl sub_08000DA8
	ldr r0, _080023EC @ =gUnk_08016330
	adds r4, r4, r0
	ldrh r0, [r4]
	ldrh r1, [r4, #2]
	ldr r2, _080023F0 @ =gRfuLinkStatus
	ldr r2, [r2]
	adds r2, #0xa
	adds r2, r2, r7
	ldrb r3, [r2]
	movs r2, #6
	bl sub_08000D7C
	adds r7, #1
	cmp r7, #3
	ble _08002348
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080023AC: .4byte gUnk_080162E0
_080023B0: .4byte gUnk_08016344
_080023B4: .4byte gUnk_080162F0
_080023B8: .4byte gUnk_0801634C
_080023BC: .4byte gUnk_080162F4
_080023C0: .4byte gUnk_08016354
_080023C4: .4byte gUnk_080162F8
_080023C8: .4byte gUnk_08016358
_080023CC: .4byte gUnk_080162FC
_080023D0: .4byte gUnk_0801635C
_080023D4: .4byte gUnk_08016300
_080023D8: .4byte gUnk_03001D00
_080023DC: .4byte gUnk_08016310
_080023E0: .4byte gUnk_03001D08
_080023E4: .4byte gUnk_08016320
_080023E8: .4byte gUnk_03001D10
_080023EC: .4byte gUnk_08016330
_080023F0: .4byte gRfuLinkStatus

	thumb_func_start sub_080023F4
sub_080023F4: @ 0x080023F4
	push {r4, lr}
	ldr r1, _08002420 @ =gUnk_03001CF0
	ldr r4, _08002424 @ =gUnk_03001D19
	movs r2, #0
	ldrsb r2, [r4, r2]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r3, [r0]
	cmp r3, #0
	bne _0800242C
	movs r1, #1
	rsbs r1, r1, #0
	adds r0, r1, #0
	strb r0, [r4]
	ldr r2, _08002428 @ =gUnk_03000750
	ldrb r1, [r2, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #1]
	b _08002436
	.align 2, 0
_08002420: .4byte gUnk_03001CF0
_08002424: .4byte gUnk_03001D19
_08002428: .4byte gUnk_03000750
_0800242C:
	lsls r0, r2, #0xf
	ldr r1, _0800243C @ =gUnk_020109F0
	adds r0, r0, r1
	bl _call_via_r3
_08002436:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800243C: .4byte gUnk_020109F0

	thumb_func_start sub_08002440
sub_08002440: @ 0x08002440
	push {lr}
	ldr r0, _08002458 @ =gUnk_03000B50
	ldrh r1, [r0]
	movs r0, #3
	ands r0, r1
	cmp r0, #3
	bne _0800245C
	bl sub_080012C4
	bl sub_08005050
_08002456:
	b _08002456
	.align 2, 0
_08002458: .4byte gUnk_03000B50
_0800245C:
	pop {r0}
	bx r0

	thumb_func_start sub_08002460
sub_08002460: @ 0x08002460
	push {lr}
	bl sub_0800348C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08002536
	ldr r0, _080024D0 @ =gUnk_03000B52
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _080024A4
	ldr r0, _080024D4 @ =gUnk_03001D1A
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	subs r0, #4
	asrs r2, r0, #1
	ldr r1, _080024D8 @ =gUnk_03001CF0
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #0
	beq _080024A4
	ldr r0, _080024DC @ =gUnk_03001D19
	strb r2, [r0]
	ldr r2, _080024E0 @ =gUnk_03000750
	ldrb r1, [r2, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2, #1]
_080024A4:
	ldr r0, _080024E4 @ =gUnk_03000B54
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _080024F6
	ldr r1, _080024D4 @ =gUnk_03001D1A
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #4
	beq _080024E8
	subs r0, r2, #2
	strb r0, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	movs r1, #2
	movs r2, #1
	bl sub_080033CC
	b _080024F6
	.align 2, 0
_080024D0: .4byte gUnk_03000B52
_080024D4: .4byte gUnk_03001D1A
_080024D8: .4byte gUnk_03001CF0
_080024DC: .4byte gUnk_03001D19
_080024E0: .4byte gUnk_03000750
_080024E4: .4byte gUnk_03000B54
_080024E8:
	movs r0, #0xa
	strb r0, [r1]
	movs r0, #0xa
	movs r1, #8
	movs r2, #1
	bl sub_080033CC
_080024F6:
	ldr r0, _08002520 @ =gUnk_03000B54
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08002536
	ldr r1, _08002524 @ =gUnk_03001D1A
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0xa
	beq _08002528
	adds r0, r2, #2
	strb r0, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	movs r1, #2
	movs r2, #1
	bl sub_080033CC
	b _08002536
	.align 2, 0
_08002520: .4byte gUnk_03000B54
_08002524: .4byte gUnk_03001D1A
_08002528:
	movs r0, #4
	strb r0, [r1]
	movs r0, #4
	movs r1, #8
	movs r2, #1
	bl sub_080033CC
_08002536:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_0800253C
sub_0800253C: @ 0x0800253C
	push {lr}
	ldr r0, _08002564 @ =gUnk_03000B52
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08002560
	ldr r1, _08002568 @ =gUnk_03001D19
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r1]
	ldr r2, _0800256C @ =gUnk_03000750
	ldrb r1, [r2, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #1]
_08002560:
	pop {r0}
	bx r0
	.align 2, 0
_08002564: .4byte gUnk_03000B52
_08002568: .4byte gUnk_03001D19
_0800256C: .4byte gUnk_03000750

	thumb_func_start sub_08002570
sub_08002570: @ 0x08002570
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	movs r7, #0x80
	lsls r7, r7, #0x13
	movs r4, #0
	strh r4, [r7]
	ldr r0, _0800262C @ =0x04000050
	strh r4, [r0]
	ldr r1, _08002630 @ =gUnk_03001D1C
	movs r0, #1
	strb r0, [r1]
	ldr r5, _08002634 @ =gUnk_0801296C
	ldr r1, _08002638 @ =0x06008000
	movs r6, #0x88
	lsls r6, r6, #4
	adds r0, r5, #0
	adds r2, r6, #0
	bl CpuFastSet
	ldr r0, _0800263C @ =gUnk_08014B74
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	bl CpuFastSet
	ldr r1, _08002640 @ =0x04000008
	movs r0, #8
	strh r0, [r1]
	ldr r0, _08002644 @ =0x04000010
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	ldr r1, _08002648 @ =0x06010000
	adds r0, r5, #0
	adds r2, r6, #0
	bl CpuFastSet
	ldr r0, _0800264C @ =gUnk_08014D74
	ldr r1, _08002650 @ =0x05000200
	movs r2, #0x80
	bl CpuFastSet
	movs r0, #0xa0
	str r0, [sp]
	ldr r4, _08002654 @ =gUnk_03000750
	ldr r2, _08002658 @ =0x01000100
	mov r0, sp
	adds r1, r4, #0
	bl CpuFastSet
	bl sub_080033C0
	ldr r5, _0800265C @ =gUnk_03001D1A
	movs r0, #0
	ldrsb r0, [r5, r0]
	cmp r0, #0
	bne _080025E6
	movs r0, #4
	strb r0, [r5]
_080025E6:
	bl sub_08000D2C
	ldrb r1, [r4, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r4, #1]
	ldrh r1, [r4, #4]
	ldr r0, _08002660 @ =0xFFFFFC00
	ands r0, r1
	movs r2, #0x83
	lsls r2, r2, #1
	adds r1, r2, #0
	orrs r0, r1
	strh r0, [r4, #4]
	ldrb r1, [r4, #5]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r4, #5]
	ldrh r1, [r4, #2]
	ldr r0, _08002664 @ =0xFFFFFE00
	ands r0, r1
	strh r0, [r4, #2]
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #3
	strb r0, [r4]
	movs r1, #0x88
	lsls r1, r1, #5
	adds r0, r1, #0
	strh r0, [r7]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800262C: .4byte 0x04000050
_08002630: .4byte gUnk_03001D1C
_08002634: .4byte gUnk_0801296C
_08002638: .4byte 0x06008000
_0800263C: .4byte gUnk_08014B74
_08002640: .4byte 0x04000008
_08002644: .4byte 0x04000010
_08002648: .4byte 0x06010000
_0800264C: .4byte gUnk_08014D74
_08002650: .4byte 0x05000200
_08002654: .4byte gUnk_03000750
_08002658: .4byte 0x01000100
_0800265C: .4byte gUnk_03001D1A
_08002660: .4byte 0xFFFFFC00
_08002664: .4byte 0xFFFFFE00

	thumb_func_start sub_08002668
sub_08002668: @ 0x08002668
	push {lr}
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r1, #0
	strh r1, [r0]
	ldr r0, _0800268C @ =gUnk_03001D1C
	strb r1, [r0]
	ldr r1, _08002690 @ =gUnk_03001D19
	movs r2, #1
	rsbs r2, r2, #0
	adds r0, r2, #0
	strb r0, [r1]
	ldr r0, _08002694 @ =sub_08000F2C
	bl sub_08005014
	pop {r0}
	bx r0
	.align 2, 0
_0800268C: .4byte gUnk_03001D1C
_08002690: .4byte gUnk_03001D19
_08002694: .4byte sub_08000F2C

	thumb_func_start sub_08002698
sub_08002698: @ 0x08002698
	movs r0, #0
	bx lr

	thumb_func_start sub_0800269C
sub_0800269C: @ 0x0800269C
	ldr r1, _080026B0 @ =gUnk_03001CE0
	lsls r0, r0, #2
	adds r1, r0, r1
	ldr r2, _080026B4 @ =sub_08002698
	str r2, [r1]
	ldr r1, _080026B8 @ =gUnk_03001CF0
	adds r0, r0, r1
	movs r1, #0
	str r1, [r0]
	bx lr
	.align 2, 0
_080026B0: .4byte gUnk_03001CE0
_080026B4: .4byte sub_08002698
_080026B8: .4byte gUnk_03001CF0

	thumb_func_start sub_080026BC
sub_080026BC: @ 0x080026BC
	ldr r0, _080026C8 @ =gUnk_03001D18
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0
_080026C8: .4byte gUnk_03001D18

	thumb_func_start sub_080026CC
sub_080026CC: @ 0x080026CC
	ldr r1, _080026D4 @ =gUnk_03001D18
	strb r0, [r1]
	bx lr
	.align 2, 0
_080026D4: .4byte gUnk_03001D18

	thumb_func_start sub_080026D8
sub_080026D8: @ 0x080026D8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	bl sub_08002280
	ldr r0, _080026F0 @ =gUnk_03001D00
	lsls r4, r4, #1
	adds r4, r4, r0
	strh r5, [r4]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080026F0: .4byte gUnk_03001D00

	thumb_func_start sub_080026F4
sub_080026F4: @ 0x080026F4
	push {r4, lr}
	bl sub_080005C4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08002768
	bl sub_08001EA0
	cmp r0, #0
	beq _08002724
	ldr r2, _08002744 @ =gUnk_03001D1B
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	bne _08002724
	ldr r0, _08002748 @ =gUnk_03001B88
	ldr r1, [r0]
	adds r1, #1
	str r1, [r0]
	ldr r0, _0800274C @ =0x00034BBF
	cmp r1, r0
	bls _08002768
	movs r0, #1
	strb r0, [r2]
_08002724:
	ldr r0, _08002748 @ =gUnk_03001B88
	movs r1, #0
	str r1, [r0]
	ldr r4, _08002744 @ =gUnk_03001D1B
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #0
	beq _08002750
	bl sub_080003F4
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08002768
	strb r0, [r4]
	b _08002768
	.align 2, 0
_08002744: .4byte gUnk_03001D1B
_08002748: .4byte gUnk_03001B88
_0800274C: .4byte 0x00034BBF
_08002750:
	bl sub_080012C4
_08002754:
	bl sub_080003F4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08002754
_0800275E:
	bl sub_080012D4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0800275E
_08002768:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08002770
sub_08002770: @ 0x08002770
	ldr r0, _0800277C @ =gUnk_03001D1C
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	bx lr
	.align 2, 0
_0800277C: .4byte gUnk_03001D1C

	thumb_func_start sub_08002780
sub_08002780: @ 0x08002780
	ldr r1, _08002788 @ =gUnk_03001D1C
	movs r0, #0
	strb r0, [r1]
	bx lr
	.align 2, 0
_08002788: .4byte gUnk_03001D1C

	thumb_func_start sub_0800278C
sub_0800278C: @ 0x0800278C
	push {lr}
	sub sp, #0x24
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0800279C
	ldr r1, _08002800 @ =gUnk_03001B8C
	movs r0, #0xff
	strb r0, [r1]
_0800279C:
	mov r0, sp
	bl SiiRtcGetDateTime
	mov r0, sp
	bl sub_08002814
	mov r0, sp
	ldr r1, _08002800 @ =gUnk_03001B8C
	ldrb r0, [r0, #4]
	ldrb r2, [r1]
	cmp r0, r2
	beq _080027FA
	strb r0, [r1]
	mov r0, sp
	ldrb r2, [r0]
	ldr r0, _08002804 @ =0xFFFFFF00
	ldr r1, [sp, #0x20]
	ands r1, r0
	orrs r1, r2
	str r1, [sp, #0x20]
	mov r0, sp
	ldrb r0, [r0, #1]
	lsls r0, r0, #8
	ldr r2, _08002808 @ =0xFFFF00FF
	ands r2, r1
	orrs r2, r0
	str r2, [sp, #0x20]
	mov r0, sp
	ldrb r1, [r0, #2]
	lsls r1, r1, #0x10
	ldr r0, _0800280C @ =0xFF00FFFF
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0x20]
	mov r1, sp
	ldrb r1, [r1, #4]
	lsls r1, r1, #0x18
	ldr r2, _08002810 @ =0x00FFFFFF
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #0x20]
	add r0, sp, #0xc
	bl sub_08001C9C
	add r0, sp, #0x20
	bl sub_08000838
_080027FA:
	add sp, #0x24
	pop {r0}
	bx r0
	.align 2, 0
_08002800: .4byte gUnk_03001B8C
_08002804: .4byte 0xFFFFFF00
_08002808: .4byte 0xFFFF00FF
_0800280C: .4byte 0xFF00FFFF
_08002810: .4byte 0x00FFFFFF

	thumb_func_start sub_08002814
sub_08002814: @ 0x08002814
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _0800285C @ =gUnk_08012960
	ldrb r1, [r4]
	ldrb r0, [r5]
	cmp r1, r0
	blo _08002856
	cmp r1, r0
	bls _0800282A
	bl sub_080034C0
_0800282A:
	ldrb r1, [r4, #1]
	ldrb r0, [r5, #1]
	cmp r1, r0
	blo _08002856
	cmp r1, r0
	bls _0800283A
	bl sub_080034C0
_0800283A:
	ldrb r1, [r4, #2]
	ldrb r0, [r5, #2]
	cmp r1, r0
	blo _08002856
	cmp r1, r0
	bls _0800284A
	bl sub_080034C0
_0800284A:
	ldrb r0, [r4, #4]
	ldrb r5, [r5, #3]
	cmp r0, r5
	blo _08002856
	bl sub_080034C0
_08002856:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800285C: .4byte gUnk_08012960

	thumb_func_start sub_08002860
sub_08002860: @ 0x08002860
	push {lr}
	ldr r2, _0800287C @ =gUnk_03001D18
	movs r1, #0
	ldrsb r1, [r2, r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08002884
	ldr r0, _08002880 @ =gUnk_03001D00
	lsls r1, r1, #1
	adds r1, r1, r0
	ldrh r0, [r1]
	b _08002886
	.align 2, 0
_0800287C: .4byte gUnk_03001D18
_08002880: .4byte gUnk_03001D00
_08002884:
	movs r0, #2
_08002886:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800288C
sub_0800288C: @ 0x0800288C
	ldr r3, _080028A8 @ =gUnk_03001CE0
	ldr r2, _080028AC @ =gUnk_03001D18
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r1, r1, #2
	adds r1, r1, r3
	str r0, [r1]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #0xf
	ldr r1, _080028B0 @ =gUnk_020109F0
	adds r0, r0, r1
	bx lr
	.align 2, 0
_080028A8: .4byte gUnk_03001CE0
_080028AC: .4byte gUnk_03001D18
_080028B0: .4byte gUnk_020109F0

	thumb_func_start sub_080028B4
sub_080028B4: @ 0x080028B4
	ldr r3, _080028D0 @ =gUnk_03001CF0
	ldr r2, _080028D4 @ =gUnk_03001D18
	movs r1, #0
	ldrsb r1, [r2, r1]
	lsls r1, r1, #2
	adds r1, r1, r3
	str r0, [r1]
	movs r0, #0
	ldrsb r0, [r2, r0]
	lsls r0, r0, #0xf
	ldr r1, _080028D8 @ =gUnk_020109F0
	adds r0, r0, r1
	bx lr
	.align 2, 0
_080028D0: .4byte gUnk_03001CF0
_080028D4: .4byte gUnk_03001D18
_080028D8: .4byte gUnk_020109F0

	thumb_func_start sub_080028DC
sub_080028DC: @ 0x080028DC
	push {lr}
	bl sub_08001134
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080028EC
	bl sub_080028F8
_080028EC:
	bl sub_08002C3C
	bl sub_08002D8C
	pop {r0}
	bx r0

	thumb_func_start sub_080028F8
sub_080028F8: @ 0x080028F8
	push {lr}
	bl sub_08002B9C
	bl sub_080033C0
	ldr r1, _08002984 @ =gUnk_03001D2E
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _08002910
	movs r0, #4
	strb r0, [r1]
_08002910:
	ldr r1, _08002988 @ =gUnk_03001D2F
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0800291E
	movs r0, #4
	strb r0, [r1]
_0800291E:
	ldr r1, _0800298C @ =gUnk_03001D30
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0800292C
	movs r0, #4
	strb r0, [r1]
_0800292C:
	ldr r1, _08002990 @ =gUnk_03001D2D
	movs r0, #2
	strb r0, [r1]
	bl sub_08000D2C
	ldr r2, _08002994 @ =gUnk_03000750
	ldrb r1, [r2, #1]
	movs r0, #4
	rsbs r0, r0, #0
	ands r0, r1
	strb r0, [r2, #1]
	ldrh r1, [r2, #4]
	ldr r0, _08002998 @ =0xFFFFFC00
	ands r0, r1
	movs r3, #0x83
	lsls r3, r3, #1
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2, #4]
	ldrb r1, [r2, #5]
	movs r0, #0xf
	ands r0, r1
	strb r0, [r2, #5]
	ldrh r1, [r2, #2]
	ldr r0, _0800299C @ =0xFFFFFE00
	ands r0, r1
	movs r1, #0x10
	orrs r0, r1
	strh r0, [r2, #2]
	bl sub_080029A8
	ldr r1, _080029A0 @ =gUnk_03001D33
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bne _0800297A
	ldr r0, _080029A4 @ =gUnk_0801636E
	ldrb r0, [r0, #2]
	strb r0, [r1]
_0800297A:
	bl sub_080031A8
	pop {r0}
	bx r0
	.align 2, 0
_08002984: .4byte gUnk_03001D2E
_08002988: .4byte gUnk_03001D2F
_0800298C: .4byte gUnk_03001D30
_08002990: .4byte gUnk_03001D2D
_08002994: .4byte gUnk_03000750
_08002998: .4byte 0xFFFFFC00
_0800299C: .4byte 0xFFFFFE00
_080029A0: .4byte gUnk_03001D33
_080029A4: .4byte gUnk_0801636E

	thumb_func_start sub_080029A8
sub_080029A8: @ 0x080029A8
	push {r4, lr}
	ldr r1, _08002A08 @ =gUnk_03001D2C
	movs r0, #0
	strb r0, [r1]
	bl sub_08000D00
	ldr r4, _08002A0C @ =gUnk_08016374
	movs r0, #0
	movs r1, #0
	movs r2, #0
	adds r3, r4, #0
	bl sub_08000D4C
	ldr r3, _08002A10 @ =gUnk_08016394
	movs r0, #0
	movs r1, #1
	movs r2, #0
	bl sub_08000D4C
	movs r0, #0
	movs r1, #2
	movs r2, #0
	adds r3, r4, #0
	bl sub_08000D4C
	ldr r3, _08002A14 @ =gUnk_080163B4
	movs r0, #0
	movs r1, #4
	movs r2, #0
	bl sub_08000D4C
	ldr r3, _08002A18 @ =gUnk_080163C0
	movs r0, #0
	movs r1, #5
	movs r2, #0
	bl sub_08000D4C
	ldr r1, _08002A1C @ =gUnk_03000750
	ldr r0, _08002A20 @ =gUnk_03001D2E
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #3
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08002A08: .4byte gUnk_03001D2C
_08002A0C: .4byte gUnk_08016374
_08002A10: .4byte gUnk_08016394
_08002A14: .4byte gUnk_080163B4
_08002A18: .4byte gUnk_080163C0
_08002A1C: .4byte gUnk_03000750
_08002A20: .4byte gUnk_03001D2E

	thumb_func_start sub_08002A24
sub_08002A24: @ 0x08002A24
	push {r4, lr}
	ldr r1, _08002AD8 @ =gUnk_03001D2C
	movs r0, #1
	strb r0, [r1]
	bl sub_08000D00
	ldr r4, _08002ADC @ =gUnk_08016374
	movs r0, #0
	movs r1, #0
	movs r2, #0
	adds r3, r4, #0
	bl sub_08000D4C
	ldr r3, _08002AE0 @ =gUnk_080163D0
	movs r0, #0
	movs r1, #1
	movs r2, #0
	bl sub_08000D4C
	movs r0, #0
	movs r1, #2
	movs r2, #0
	adds r3, r4, #0
	bl sub_08000D4C
	ldr r3, _08002AE4 @ =gUnk_080163F0
	movs r0, #0
	movs r1, #4
	movs r2, #0
	bl sub_08000D4C
	ldr r3, _08002AE8 @ =gUnk_080163FC
	movs r0, #0
	movs r1, #5
	movs r2, #0
	bl sub_08000D4C
	ldr r3, _08002AEC @ =gUnk_08016408
	movs r0, #0
	movs r1, #6
	movs r2, #0
	bl sub_08000D4C
	ldr r3, _08002AF0 @ =gUnk_08016410
	movs r0, #0
	movs r1, #7
	movs r2, #0
	bl sub_08000D4C
	ldr r3, _08002AF4 @ =gUnk_0801641C
	movs r0, #0
	movs r1, #8
	movs r2, #0
	bl sub_08000D4C
	ldr r3, _08002AF8 @ =gUnk_08016428
	movs r0, #0
	movs r1, #9
	movs r2, #0
	bl sub_08000D4C
	ldr r3, _08002AFC @ =gUnk_08016434
	movs r0, #0
	movs r1, #0xa
	movs r2, #0
	bl sub_08000D4C
	ldr r3, _08002B00 @ =gUnk_08016440
	movs r0, #0
	movs r1, #0xc
	movs r2, #1
	bl sub_08000D4C
	ldr r1, _08002B04 @ =gUnk_03000750
	ldr r0, _08002B08 @ =gUnk_03001D2F
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #3
	strb r0, [r1]
_08002AC4:
	ldr r0, _08002B0C @ =gUnk_03001D20
	bl SiiRtcGetDateTime
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08002AC4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08002AD8: .4byte gUnk_03001D2C
_08002ADC: .4byte gUnk_08016374
_08002AE0: .4byte gUnk_080163D0
_08002AE4: .4byte gUnk_080163F0
_08002AE8: .4byte gUnk_080163FC
_08002AEC: .4byte gUnk_08016408
_08002AF0: .4byte gUnk_08016410
_08002AF4: .4byte gUnk_0801641C
_08002AF8: .4byte gUnk_08016428
_08002AFC: .4byte gUnk_08016434
_08002B00: .4byte gUnk_08016440
_08002B04: .4byte gUnk_03000750
_08002B08: .4byte gUnk_03001D2F
_08002B0C: .4byte gUnk_03001D20

	thumb_func_start sub_08002B10
sub_08002B10: @ 0x08002B10
	push {r4, lr}
	ldr r1, _08002B7C @ =gUnk_03001D2C
	movs r0, #2
	strb r0, [r1]
	bl sub_08000D00
	ldr r4, _08002B80 @ =gUnk_08016374
	movs r0, #0
	movs r1, #0
	movs r2, #0
	adds r3, r4, #0
	bl sub_08000D4C
	ldr r3, _08002B84 @ =gUnk_08016448
	movs r0, #0
	movs r1, #1
	movs r2, #0
	bl sub_08000D4C
	movs r0, #0
	movs r1, #2
	movs r2, #0
	adds r3, r4, #0
	bl sub_08000D4C
	ldr r3, _08002B88 @ =gUnk_08016468
	movs r0, #0
	movs r1, #4
	movs r2, #0
	bl sub_08000D4C
	ldr r3, _08002B8C @ =gUnk_08016474
	movs r0, #0
	movs r1, #5
	movs r2, #0
	bl sub_08000D4C
	ldr r3, _08002B90 @ =gUnk_08016480
	movs r0, #0
	movs r1, #6
	movs r2, #0
	bl sub_08000D4C
	ldr r1, _08002B94 @ =gUnk_03000750
	ldr r0, _08002B98 @ =gUnk_03001D30
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	lsls r0, r0, #3
	strb r0, [r1]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08002B7C: .4byte gUnk_03001D2C
_08002B80: .4byte gUnk_08016374
_08002B84: .4byte gUnk_08016448
_08002B88: .4byte gUnk_08016468
_08002B8C: .4byte gUnk_08016474
_08002B90: .4byte gUnk_08016480
_08002B94: .4byte gUnk_03000750
_08002B98: .4byte gUnk_03001D30

	thumb_func_start sub_08002B9C
sub_08002B9C: @ 0x08002B9C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #4
	movs r0, #0x80
	lsls r0, r0, #0x13
	mov r8, r0
	movs r4, #0
	strh r4, [r0]
	adds r0, #0x50
	strh r4, [r0]
	ldr r5, _08002C14 @ =gUnk_0801296C
	ldr r1, _08002C18 @ =0x06008000
	movs r6, #0x88
	lsls r6, r6, #4
	adds r0, r5, #0
	adds r2, r6, #0
	bl CpuFastSet
	ldr r0, _08002C1C @ =gUnk_08014B74
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	bl CpuFastSet
	ldr r1, _08002C20 @ =0x04000008
	movs r0, #8
	strh r0, [r1]
	ldr r0, _08002C24 @ =0x04000010
	strh r4, [r0]
	adds r0, #2
	strh r4, [r0]
	ldr r1, _08002C28 @ =0x06010000
	adds r0, r5, #0
	adds r2, r6, #0
	bl CpuFastSet
	ldr r0, _08002C2C @ =gUnk_08014D74
	ldr r1, _08002C30 @ =0x05000200
	movs r2, #0x80
	bl CpuFastSet
	movs r0, #0xa0
	str r0, [sp]
	ldr r1, _08002C34 @ =gUnk_03000750
	ldr r2, _08002C38 @ =0x01000100
	mov r0, sp
	bl CpuFastSet
	movs r1, #0x88
	lsls r1, r1, #5
	adds r0, r1, #0
	mov r1, r8
	strh r0, [r1]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08002C14: .4byte gUnk_0801296C
_08002C18: .4byte 0x06008000
_08002C1C: .4byte gUnk_08014B74
_08002C20: .4byte 0x04000008
_08002C24: .4byte 0x04000010
_08002C28: .4byte 0x06010000
_08002C2C: .4byte gUnk_08014D74
_08002C30: .4byte 0x05000200
_08002C34: .4byte gUnk_03000750
_08002C38: .4byte 0x01000100

	thumb_func_start sub_08002C3C
sub_08002C3C: @ 0x08002C3C
	push {lr}
	movs r0, #0
	bl sub_080033E8
	ldr r0, _08002C58 @ =gUnk_03001D2C
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08002C5C
	cmp r0, #2
	beq _08002C62
	b _08002C66
	.align 2, 0
_08002C58: .4byte gUnk_03001D2C
_08002C5C:
	bl sub_08002C6C
	b _08002C66
_08002C62:
	bl sub_08002CD0
_08002C66:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08002C6C
sub_08002C6C: @ 0x08002C6C
	push {r4, lr}
	ldr r4, _08002CCC @ =gUnk_03001D20
	ldrb r3, [r4]
	movs r0, #0xc
	movs r1, #4
	movs r2, #0
	bl sub_08000D7C
	ldrb r3, [r4, #1]
	movs r0, #0xc
	movs r1, #5
	movs r2, #0
	bl sub_08000D7C
	ldrb r3, [r4, #2]
	movs r0, #0xc
	movs r1, #6
	movs r2, #0
	bl sub_08000D7C
	ldrb r3, [r4, #3]
	movs r0, #0xc
	movs r1, #7
	movs r2, #0
	bl sub_08000D7C
	ldrb r3, [r4, #4]
	movs r0, #0xc
	movs r1, #8
	movs r2, #0
	bl sub_08000D7C
	ldrb r3, [r4, #5]
	movs r0, #0xc
	movs r1, #9
	movs r2, #0
	bl sub_08000D7C
	ldrb r3, [r4, #6]
	movs r0, #0xc
	movs r1, #0xa
	movs r2, #0
	bl sub_08000D7C
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08002CCC: .4byte gUnk_03001D20

	thumb_func_start sub_08002CD0
sub_08002CD0: @ 0x08002CD0
	push {r4, lr}
	ldr r0, _08002CE8 @ =gUnk_03001D31
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08002D20
	cmp r0, #1
	bgt _08002CEC
	cmp r0, #0
	beq _08002CF2
	b _08002D7C
	.align 2, 0
_08002CE8: .4byte gUnk_03001D31
_08002CEC:
	cmp r0, #2
	beq _08002D54
	b _08002D7C
_08002CF2:
	movs r0, #0xc
	movs r1, #4
	movs r2, #0
	movs r3, #0
	bl sub_08000E2C
	ldr r4, _08002D1C @ =gUnk_0801648C
	movs r0, #0xc
	movs r1, #5
	movs r2, #0
	adds r3, r4, #0
	bl sub_08000D4C
	movs r0, #0xc
	movs r1, #6
	movs r2, #0
	adds r3, r4, #0
	bl sub_08000D4C
	b _08002D7C
	.align 2, 0
_08002D1C: .4byte gUnk_0801648C
_08002D20:
	movs r0, #0xc
	movs r1, #4
	movs r2, #0
	movs r3, #1
	bl sub_08000E2C
	ldr r0, _08002D4C @ =gUnk_03001D32
	movs r3, #0
	ldrsb r3, [r0, r3]
	movs r0, #0xc
	movs r1, #5
	movs r2, #3
	bl sub_08000E2C
	ldr r3, _08002D50 @ =gUnk_0801648C
	movs r0, #0xc
	movs r1, #6
	movs r2, #0
	bl sub_08000D4C
	b _08002D7C
	.align 2, 0
_08002D4C: .4byte gUnk_03001D32
_08002D50: .4byte gUnk_0801648C
_08002D54:
	movs r0, #0xc
	movs r1, #4
	movs r2, #0
	movs r3, #2
	bl sub_08000E2C
	ldr r3, _08002D84 @ =gUnk_0801648C
	movs r0, #0xc
	movs r1, #5
	movs r2, #0
	bl sub_08000D4C
	ldr r0, _08002D88 @ =gUnk_03001D33
	movs r3, #0
	ldrsb r3, [r0, r3]
	movs r0, #0xc
	movs r1, #6
	movs r2, #3
	bl sub_08000E2C
_08002D7C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08002D84: .4byte gUnk_0801648C
_08002D88: .4byte gUnk_03001D33

	thumb_func_start sub_08002D8C
sub_08002D8C: @ 0x08002D8C
	push {lr}
	bl sub_0800348C
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08002DCA
	ldr r0, _08002DB0 @ =gUnk_03001D2C
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08002DC0
	cmp r0, #1
	bgt _08002DB4
	cmp r0, #0
	beq _08002DBA
	b _08002DCA
	.align 2, 0
_08002DB0: .4byte gUnk_03001D2C
_08002DB4:
	cmp r0, #2
	beq _08002DC6
	b _08002DCA
_08002DBA:
	bl sub_08002DD0
	b _08002DCA
_08002DC0:
	bl sub_08002EB0
	b _08002DCA
_08002DC6:
	bl sub_08003030
_08002DCA:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08002DD0
sub_08002DD0: @ 0x08002DD0
	push {lr}
	ldr r0, _08002DF0 @ =gUnk_03000B52
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08002DFC
	ldr r0, _08002DF4 @ =gUnk_03001D2E
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #4
	bne _08002DF8
	bl sub_08002A24
	b _08002DFC
	.align 2, 0
_08002DF0: .4byte gUnk_03000B52
_08002DF4: .4byte gUnk_03001D2E
_08002DF8:
	bl sub_08002B10
_08002DFC:
	ldr r0, _08002E4C @ =gUnk_03000B52
	ldrh r1, [r0]
	movs r0, #0xa
	ands r0, r1
	cmp r0, #0
	beq _08002E20
	movs r0, #0x80
	lsls r0, r0, #0x13
	movs r1, #0
	strh r1, [r0]
	bl sub_08002780
	ldr r0, _08002E50 @ =sub_08000F2C
	bl sub_08005014
	movs r0, #2
	bl sub_08001124
_08002E20:
	ldr r0, _08002E54 @ =gUnk_03000B54
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08002E6A
	ldr r1, _08002E58 @ =gUnk_03001D2E
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #4
	beq _08002E5C
	subs r0, r2, #1
	strb r0, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	movs r1, #2
	movs r2, #1
	bl sub_080033CC
	b _08002E6A
	.align 2, 0
_08002E4C: .4byte gUnk_03000B52
_08002E50: .4byte sub_08000F2C
_08002E54: .4byte gUnk_03000B54
_08002E58: .4byte gUnk_03001D2E
_08002E5C:
	movs r0, #5
	strb r0, [r1]
	movs r0, #5
	movs r1, #8
	movs r2, #1
	bl sub_080033CC
_08002E6A:
	ldr r0, _08002E94 @ =gUnk_03000B54
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08002EAA
	ldr r1, _08002E98 @ =gUnk_03001D2E
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #5
	beq _08002E9C
	adds r0, r2, #1
	strb r0, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	movs r1, #2
	movs r2, #1
	bl sub_080033CC
	b _08002EAA
	.align 2, 0
_08002E94: .4byte gUnk_03000B54
_08002E98: .4byte gUnk_03001D2E
_08002E9C:
	movs r0, #4
	strb r0, [r1]
	movs r0, #4
	movs r1, #8
	movs r2, #1
	bl sub_080033CC
_08002EAA:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08002EB0
sub_08002EB0: @ 0x08002EB0
	push {r4, r5, lr}
	ldr r2, _08002F24 @ =gUnk_03001D2F
	movs r0, #0
	ldrsb r0, [r2, r0]
	subs r5, r0, #4
	ldr r0, _08002F28 @ =gUnk_03000B52
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08002EDE
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0xc
	bne _08002EDE
_08002ECE:
	ldr r0, _08002F2C @ =gUnk_03001D20
	bl SiiRtcSetDateTime
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08002ECE
	bl sub_08003204
_08002EDE:
	ldr r0, _08002F28 @ =gUnk_03000B52
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08002EEE
	bl sub_080029A8
_08002EEE:
	ldr r0, _08002F30 @ =gUnk_03000B54
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08002F42
	ldr r1, _08002F24 @ =gUnk_03001D2F
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #4
	beq _08002F34
	subs r0, r2, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xb
	bne _08002F16
	subs r0, r2, #2
	strb r0, [r1]
_08002F16:
	movs r0, #0
	ldrsb r0, [r1, r0]
	movs r1, #2
	movs r2, #1
	bl sub_080033CC
	b _08002F42
	.align 2, 0
_08002F24: .4byte gUnk_03001D2F
_08002F28: .4byte gUnk_03000B52
_08002F2C: .4byte gUnk_03001D20
_08002F30: .4byte gUnk_03000B54
_08002F34:
	movs r0, #0xc
	strb r0, [r1]
	movs r0, #0xc
	movs r1, #8
	movs r2, #1
	bl sub_080033CC
_08002F42:
	ldr r0, _08002F78 @ =gUnk_03000B54
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08002F8E
	ldr r2, _08002F7C @ =gUnk_03001D2F
	ldrb r1, [r2]
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0xc
	beq _08002F80
	adds r1, #1
	strb r1, [r2]
	lsls r0, r1, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0xb
	bne _08002F6A
	adds r0, r1, #1
	strb r0, [r2]
_08002F6A:
	movs r0, #0
	ldrsb r0, [r2, r0]
	movs r1, #2
	movs r2, #1
	bl sub_080033CC
	b _08002F8E
	.align 2, 0
_08002F78: .4byte gUnk_03000B54
_08002F7C: .4byte gUnk_03001D2F
_08002F80:
	movs r0, #4
	strb r0, [r2]
	movs r0, #4
	movs r1, #8
	movs r2, #1
	bl sub_080033CC
_08002F8E:
	ldr r0, _08002FB4 @ =gUnk_03000B54
	ldrh r1, [r0]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08002FC8
	ldr r0, _08002FB8 @ =gUnk_03001D20
	adds r4, r5, r0
	ldr r0, _08002FBC @ =gUnk_08016360
	adds r0, r5, r0
	ldrb r1, [r4]
	ldrb r0, [r0]
	cmp r1, r0
	beq _08002FC0
	adds r0, r1, #0
	bl sub_0800360C
	b _08002FC6
	.align 2, 0
_08002FB4: .4byte gUnk_03000B54
_08002FB8: .4byte gUnk_03001D20
_08002FBC: .4byte gUnk_08016360
_08002FC0:
	ldr r0, _08002FEC @ =gUnk_08016367
	adds r0, r5, r0
	ldrb r0, [r0]
_08002FC6:
	strb r0, [r4]
_08002FC8:
	ldr r0, _08002FF0 @ =gUnk_03000B54
	ldrh r1, [r0]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _08003000
	ldr r0, _08002FF4 @ =gUnk_03001D20
	adds r4, r5, r0
	ldr r0, _08002FEC @ =gUnk_08016367
	adds r0, r5, r0
	ldrb r1, [r4]
	ldrb r0, [r0]
	cmp r1, r0
	beq _08002FF8
	adds r0, r1, #0
	bl sub_080035D8
	b _08002FFE
	.align 2, 0
_08002FEC: .4byte gUnk_08016367
_08002FF0: .4byte gUnk_03000B54
_08002FF4: .4byte gUnk_03001D20
_08002FF8:
	ldr r0, _08003024 @ =gUnk_08016360
	adds r0, r5, r0
	ldrb r0, [r0]
_08002FFE:
	strb r0, [r4]
_08003000:
	ldr r0, _08003028 @ =gUnk_03000B52
	ldrh r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800301C
_0800300C:
	ldr r0, _0800302C @ =gUnk_03001D20
	bl SiiRtcSetDateTime
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0800300C
	bl sub_08003204
_0800301C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003024: .4byte gUnk_08016360
_08003028: .4byte gUnk_03000B52
_0800302C: .4byte gUnk_03001D20

	thumb_func_start sub_08003030
sub_08003030: @ 0x08003030
	push {r4, r5, lr}
	ldr r4, _08003074 @ =gUnk_03001D30
	movs r0, #0
	ldrsb r0, [r4, r0]
	subs r5, r0, #4
	ldr r0, _08003078 @ =gUnk_03000B52
	ldrh r1, [r0]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800304A
	bl sub_080029A8
_0800304A:
	ldr r0, _0800307C @ =gUnk_03000B54
	ldrh r1, [r0]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _0800308E
	ldrb r1, [r4]
	movs r0, #0
	ldrsb r0, [r4, r0]
	cmp r0, #4
	beq _08003080
	subs r0, r1, #1
	strb r0, [r4]
	movs r0, #0
	ldrsb r0, [r4, r0]
	movs r1, #2
	movs r2, #1
	bl sub_080033CC
	b _0800308E
	.align 2, 0
_08003074: .4byte gUnk_03001D30
_08003078: .4byte gUnk_03000B52
_0800307C: .4byte gUnk_03000B54
_08003080:
	movs r0, #6
	strb r0, [r4]
	movs r0, #6
	movs r1, #8
	movs r2, #1
	bl sub_080033CC
_0800308E:
	ldr r0, _080030B8 @ =gUnk_03000B54
	ldrh r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _080030CE
	ldr r1, _080030BC @ =gUnk_03001D30
	ldrb r2, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r0, #6
	beq _080030C0
	adds r0, r2, #1
	strb r0, [r1]
	movs r0, #0
	ldrsb r0, [r1, r0]
	movs r1, #2
	movs r2, #1
	bl sub_080033CC
	b _080030CE
	.align 2, 0
_080030B8: .4byte gUnk_03000B54
_080030BC: .4byte gUnk_03001D30
_080030C0:
	movs r0, #4
	strb r0, [r1]
	movs r0, #4
	movs r1, #8
	movs r2, #1
	bl sub_080033CC
_080030CE:
	ldr r2, _08003120 @ =gUnk_03000B54
	ldrh r1, [r2]
	movs r0, #0x20
	ands r0, r1
	cmp r0, #0
	beq _08003138
	ldr r0, _08003124 @ =gUnk_03001D30
	movs r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #4
	beq _08003104
	cmp r1, #5
	bne _080030F4
	ldr r0, _08003128 @ =gUnk_03001D31
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _08003104
_080030F4:
	cmp r1, #6
	bne _08003138
	ldr r0, _08003128 @ =gUnk_03001D31
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _08003138
_08003104:
	ldr r0, _08003128 @ =gUnk_03001D31
	adds r3, r5, r0
	ldr r0, _0800312C @ =gUnk_0801636E
	adds r0, r5, r0
	ldrb r4, [r3]
	movs r1, #0
	ldrsb r1, [r3, r1]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	beq _08003130
	subs r0, r4, #1
	b _08003136
	.align 2, 0
_08003120: .4byte gUnk_03000B54
_08003124: .4byte gUnk_03001D30
_08003128: .4byte gUnk_03001D31
_0800312C: .4byte gUnk_0801636E
_08003130:
	ldr r0, _08003188 @ =gUnk_08016371
	adds r0, r5, r0
	ldrb r0, [r0]
_08003136:
	strb r0, [r3]
_08003138:
	ldrh r1, [r2]
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	beq _0800319C
	ldr r0, _0800318C @ =gUnk_03001D30
	movs r1, #0
	ldrsb r1, [r0, r1]
	cmp r1, #4
	beq _0800316C
	cmp r1, #5
	bne _0800315C
	ldr r0, _08003190 @ =gUnk_03001D31
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _0800316C
_0800315C:
	cmp r1, #6
	bne _0800319C
	ldr r0, _08003190 @ =gUnk_03001D31
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0800319C
_0800316C:
	ldr r0, _08003190 @ =gUnk_03001D31
	adds r2, r5, r0
	ldr r0, _08003188 @ =gUnk_08016371
	adds r0, r5, r0
	ldrb r3, [r2]
	movs r1, #0
	ldrsb r1, [r2, r1]
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r1, r0
	beq _08003194
	adds r0, r3, #1
	b _0800319A
	.align 2, 0
_08003188: .4byte gUnk_08016371
_0800318C: .4byte gUnk_03001D30
_08003190: .4byte gUnk_03001D31
_08003194:
	ldr r0, _080031A4 @ =gUnk_0801636E
	adds r0, r5, r0
	ldrb r0, [r0]
_0800319A:
	strb r0, [r2]
_0800319C:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080031A4: .4byte gUnk_0801636E

	thumb_func_start sub_080031A8
sub_080031A8: @ 0x080031A8
	push {r4, r5, r6, r7, lr}
	movs r5, #0
_080031AC:
	ldr r0, _080031F8 @ =gUnk_03001D20
	bl SiiRtcGetDateTime
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080031AC
	movs r3, #0
	ldr r0, _080031F8 @ =gUnk_03001D20
	mov ip, r0
	ldr r7, _080031FC @ =gUnk_08016360
	ldr r6, _08003200 @ =gUnk_08016367
_080031C2:
	mov r0, ip
	adds r4, r3, r0
	adds r0, r3, r7
	ldrb r2, [r0]
	ldrb r1, [r4]
	cmp r1, r2
	blo _080031D8
	adds r0, r3, r6
	ldrb r0, [r0]
	cmp r1, r0
	bls _080031DC
_080031D8:
	strb r2, [r4]
	movs r5, #1
_080031DC:
	adds r3, #1
	cmp r3, #6
	ble _080031C2
	cmp r5, #0
	beq _080031F2
_080031E6:
	ldr r0, _080031F8 @ =gUnk_03001D20
	bl SiiRtcSetDateTime
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080031E6
_080031F2:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080031F8: .4byte gUnk_03001D20
_080031FC: .4byte gUnk_08016360
_08003200: .4byte gUnk_08016367

	thumb_func_start sub_08003204
sub_08003204: @ 0x08003204
	push {r4, r5, lr}
	sub sp, #0x40
	ldr r1, _08003240 @ =gUnk_08016490
	mov r0, sp
	movs r2, #0x40
	bl memcpy
	movs r4, #0
	movs r5, #1
_08003216:
	adds r0, r4, #0
	ands r0, r5
	lsls r0, r0, #5
	add r0, sp
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #8
	bl CpuFastSet
	bl sub_08000F2C
	bl sub_08000F2C
	adds r4, #1
	cmp r4, #3
	ble _08003216
	add sp, #0x40
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003240: .4byte gUnk_08016490

	thumb_func_start sub_08003244
sub_08003244: @ 0x08003244
	ldr r3, _08003258 @ =gUnk_03001D31
	ldrb r3, [r3]
	strb r3, [r0]
	ldr r0, _0800325C @ =gUnk_03001D32
	ldrb r0, [r0]
	strb r0, [r1]
	ldr r0, _08003260 @ =gUnk_03001D33
	ldrb r0, [r0]
	strb r0, [r2]
	bx lr
	.align 2, 0
_08003258: .4byte gUnk_03001D31
_0800325C: .4byte gUnk_03001D32
_08003260: .4byte gUnk_03001D33

	thumb_func_start sub_08003264
sub_08003264: @ 0x08003264
	push {lr}
	bl sub_08001134
	bl sub_08003318
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08003274
sub_08003274: @ 0x08003274
	push {lr}
	movs r0, #0
	bl sub_08000F50
	bl sub_08000D00
	ldr r1, _080032A4 @ =gUnk_080164D0
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	ldr r3, _080032A8 @ =gUnk_080164DC
	movs r2, #0
	bl sub_08000D4C
	ldr r1, _080032AC @ =gUnk_080164D4
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	ldr r3, _080032B0 @ =gUnk_080164EE
	movs r2, #0
	bl sub_08000D4C
	bl sub_08000D2C
	pop {r0}
	bx r0
	.align 2, 0
_080032A4: .4byte gUnk_080164D0
_080032A8: .4byte gUnk_080164DC
_080032AC: .4byte gUnk_080164D4
_080032B0: .4byte gUnk_080164EE

	thumb_func_start sub_080032B4
sub_080032B4: @ 0x080032B4
	push {lr}
	bl sub_08000F44
	cmp r0, #0x3b
	bgt _080032D8
	ldr r1, _080032D0 @ =gUnk_080164D8
	ldrh r0, [r1]
	ldrh r1, [r1, #2]
	ldr r3, _080032D4 @ =gUnk_080164F7
	movs r2, #3
	bl sub_08000D4C
	b _080032F6
	.align 2, 0
_080032D0: .4byte gUnk_080164D8
_080032D4: .4byte gUnk_080164F7
_080032D8:
	cmp r0, #0x6b
	bgt _080032F0
	ldr r0, _080032EC @ =gUnk_080164D8
	ldrh r1, [r0, #2]
	movs r0, #0
	movs r2, #0x20
	movs r3, #1
	bl sub_08000CC0
	b _080032F6
	.align 2, 0
_080032EC: .4byte gUnk_080164D8
_080032F0:
	movs r0, #0
	bl sub_08000F50
_080032F6:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080032FC
sub_080032FC: @ 0x080032FC
	push {lr}
	ldr r0, _08003314 @ =gUnk_03000B52
	ldrh r1, [r0]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08003310
	movs r0, #2
	bl sub_08001124
_08003310:
	pop {r0}
	bx r0
	.align 2, 0
_08003314: .4byte gUnk_03000B52

	thumb_func_start sub_08003318
sub_08003318: @ 0x08003318
	push {lr}
	ldr r1, _08003338 @ =gUnk_03001D34
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #7
	bls _08003334
	movs r0, #0
	strb r0, [r1]
	movs r0, #2
	bl sub_08001124
_08003334:
	pop {r0}
	bx r0
	.align 2, 0
_08003338: .4byte gUnk_03001D34

	thumb_func_start sub_0800333C
sub_0800333C: @ 0x0800333C
	push {r4, r5, r6, lr}
	ldr r0, _08003388 @ =0x04000130
	ldrh r1, [r0]
	ldr r2, _0800338C @ =0x000003FF
	adds r0, r2, #0
	adds r5, r0, #0
	eors r5, r1
	ldr r3, _08003390 @ =gUnk_03000B52
	ldr r2, _08003394 @ =gUnk_03000B50
	ldrh r1, [r2]
	adds r0, r5, #0
	bics r0, r1
	strh r0, [r3]
	strh r5, [r2]
	ldr r1, _08003398 @ =gUnk_03000B54
	strh r0, [r1]
	movs r3, #0
	movs r6, #1
	adds r4, r1, #0
	ldr r2, _0800339C @ =gUnk_03001D38
_08003364:
	adds r0, r5, #0
	asrs r0, r3
	ands r0, r6
	cmp r0, #0
	beq _080033B0
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x1e
	bne _080033A0
	adds r0, r6, #0
	lsls r0, r3
	ldrh r1, [r4]
	orrs r0, r1
	strh r0, [r4]
	b _080033B2
	.align 2, 0
_08003388: .4byte 0x04000130
_0800338C: .4byte 0x000003FF
_08003390: .4byte gUnk_03000B52
_08003394: .4byte gUnk_03000B50
_08003398: .4byte gUnk_03000B54
_0800339C: .4byte gUnk_03001D38
_080033A0:
	cmp r0, #0x28
	bne _080033B2
	adds r0, r6, #0
	lsls r0, r3
	ldrh r1, [r4]
	orrs r0, r1
	strh r0, [r4]
	movs r0, #0x1e
_080033B0:
	strb r0, [r2]
_080033B2:
	adds r2, #1
	adds r3, #1
	cmp r3, #9
	ble _08003364
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_080033C0
sub_080033C0: @ 0x080033C0
	ldr r1, _080033C8 @ =gUnk_03001D42
	movs r0, #0x7f
	strb r0, [r1]
	bx lr
	.align 2, 0
_080033C8: .4byte gUnk_03001D42

	thumb_func_start sub_080033CC
sub_080033CC: @ 0x080033CC
	ldr r3, _080033DC @ =gUnk_03001D42
	strb r0, [r3]
	ldr r0, _080033E0 @ =gUnk_03001D43
	strb r1, [r0]
	ldr r0, _080033E4 @ =gUnk_03001D44
	strb r2, [r0]
	bx lr
	.align 2, 0
_080033DC: .4byte gUnk_03001D42
_080033E0: .4byte gUnk_03001D43
_080033E4: .4byte gUnk_03001D44

	thumb_func_start sub_080033E8
sub_080033E8: @ 0x080033E8
	push {r4, r5, r6, lr}
	adds r2, r0, #0
	ldr r0, _08003410 @ =gUnk_03001D42
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r5, r0, #0
	cmp r1, #0x7f
	beq _0800347E
	ldr r0, _08003414 @ =gUnk_03001D44
	movs r1, #0
	ldrsb r1, [r0, r1]
	adds r6, r0, #0
	cmp r1, #0
	beq _0800341C
	ldr r0, _08003418 @ =gUnk_03000750
	lsls r2, r2, #3
	adds r1, r2, r0
	ldrb r4, [r1]
	adds r3, r0, #0
	b _0800342A
	.align 2, 0
_08003410: .4byte gUnk_03001D42
_08003414: .4byte gUnk_03001D44
_08003418: .4byte gUnk_03000750
_0800341C:
	ldr r1, _08003454 @ =gUnk_03000750
	lsls r2, r2, #3
	adds r0, r2, r1
	ldrh r0, [r0, #2]
	lsls r0, r0, #0x17
	lsrs r4, r0, #0x17
	adds r3, r1, #0
_0800342A:
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #3
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r4
	ble _0800343A
	movs r1, #1
_0800343A:
	ldr r0, _08003458 @ =gUnk_03001D43
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	muls r0, r1, r0
	adds r4, r4, r0
	movs r0, #0
	ldrsb r0, [r6, r0]
	cmp r0, #0
	beq _0800345C
	adds r0, r2, r3
	strb r4, [r0]
	b _08003470
	.align 2, 0
_08003454: .4byte gUnk_03000750
_08003458: .4byte gUnk_03001D43
_0800345C:
	adds r3, r2, r3
	ldr r1, _08003484 @ =0x000001FF
	adds r0, r1, #0
	adds r1, r4, #0
	ands r1, r0
	ldrh r2, [r3, #2]
	ldr r0, _08003488 @ =0xFFFFFE00
	ands r0, r2
	orrs r0, r1
	strh r0, [r3, #2]
_08003470:
	movs r0, #0
	ldrsb r0, [r5, r0]
	lsls r0, r0, #3
	cmp r4, r0
	bne _0800347E
	movs r0, #0x7f
	strb r0, [r5]
_0800347E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08003484: .4byte 0x000001FF
_08003488: .4byte 0xFFFFFE00

	thumb_func_start sub_0800348C
sub_0800348C: @ 0x0800348C
	push {lr}
	ldr r0, _080034A0 @ =gUnk_03001D42
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0x7f
	beq _080034A4
	movs r0, #1
	b _080034A6
	.align 2, 0
_080034A0: .4byte gUnk_03001D42
_080034A4:
	movs r0, #0
_080034A6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080034AC
sub_080034AC: @ 0x080034AC
	push {r4, lr}
	adds r4, r0, #0
_080034B0:
	bl sub_08000F2C
	subs r4, #1
	cmp r4, #0
	bne _080034B0
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_080034C0
sub_080034C0: @ 0x080034C0
	push {r4, lr}
	movs r0, #0
	bl rfu_setREQCallback
	bl rfu_REQ_stopMode
	bl rfu_waitREQComplete
	bl rfu_waitREQComplete
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080034DC
_080034DA:
	b _080034DA
_080034DC:
	ldr r1, _08003540 @ =0x04000208
	movs r0, #0
	strh r0, [r1]
	ldr r1, _08003544 @ =0x040000B0
	ldrh r2, [r1, #0xa]
	ldr r4, _08003548 @ =0x0000C5FF
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	ldr r3, _0800354C @ =0x00007FFF
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r2, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	adds r1, #0xc
	ldrh r2, [r1, #0xa]
	adds r0, r4, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r2, [r1, #0xa]
	adds r0, r3, #0
	ands r0, r2
	strh r0, [r1, #0xa]
	ldrh r0, [r1, #0xa]
	ldr r0, _08003550 @ =0x040000D4
	ldrh r1, [r0, #0xa]
	ands r4, r1
	strh r4, [r0, #0xa]
	ldrh r1, [r0, #0xa]
	ands r3, r1
	strh r3, [r0, #0xa]
	ldrh r0, [r0, #0xa]
	movs r0, #0xdd
	bl SoftReset
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003540: .4byte 0x04000208
_08003544: .4byte 0x040000B0
_08003548: .4byte 0x0000C5FF
_0800354C: .4byte 0x00007FFF
_08003550: .4byte 0x040000D4

	thumb_func_start sub_08003554
sub_08003554: @ 0x08003554
	push {r4, r5, r6, r7, lr}
	adds r6, r0, #0
	movs r5, #0
	movs r4, #0
	movs r7, #0xf
_0800355E:
	movs r0, #0xa
	adds r1, r4, #0
	bl sub_08003580
	lsls r2, r4, #2
	adds r1, r6, #0
	lsrs r1, r2
	ands r1, r7
	muls r0, r1, r0
	adds r5, r5, r0
	adds r4, #1
	cmp r4, #7
	ble _0800355E
	adds r0, r5, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08003580
sub_08003580: @ 0x08003580
	push {r4, lr}
	adds r4, r0, #0
	cmp r1, #0
	bne _0800358C
	movs r0, #1
	b _0800359E
_0800358C:
	cmp r1, #1
	beq _0800359C
	subs r1, #1
	adds r0, r4, #0
	bl sub_08003580
	muls r0, r4, r0
	b _0800359E
_0800359C:
	adds r0, r4, #0
_0800359E:
	pop {r4}
	pop {r1}
	bx r1

	thumb_func_start sub_080035A4
sub_080035A4: @ 0x080035A4
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	movs r5, #0
	movs r4, #0
_080035AC:
	movs r0, #0xa
	adds r1, r4, #0
	bl sub_08003580
	adds r1, r0, #0
	adds r0, r6, #0
	bl Div
	movs r1, #0xa
	bl Mod
	lsls r1, r4, #2
	lsls r0, r1
	orrs r5, r0
	adds r4, #1
	cmp r4, #7
	ble _080035AC
	adds r0, r5, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080035D8
sub_080035D8: @ 0x080035D8
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r2, #1
	movs r3, #0
	movs r4, #0xf
	movs r5, #0x10
_080035E4:
	lsls r1, r3, #2
	adds r0, r2, #0
	lsrs r0, r1
	ands r0, r4
	cmp r0, #0xa
	beq _080035F4
	adds r0, r2, #0
	b _08003606
_080035F4:
	lsls r0, r1
	subs r2, r2, r0
	adds r0, r5, #0
	lsls r0, r1
	adds r2, r2, r0
	adds r3, #1
	cmp r3, #7
	ble _080035E4
	movs r0, #0
_08003606:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_0800360C
sub_0800360C: @ 0x0800360C
	push {r4, r5, lr}
	adds r2, r0, #0
	subs r2, #1
	movs r3, #0
	movs r4, #0xf
	movs r5, #6
_08003618:
	lsls r1, r3, #2
	adds r0, r2, #0
	lsrs r0, r1
	ands r0, r4
	cmp r0, #0xf
	beq _08003628
	adds r0, r2, #0
	b _08003636
_08003628:
	adds r0, r5, #0
	lsls r0, r1
	subs r2, r2, r0
	adds r3, #1
	cmp r3, #7
	ble _08003618
	ldr r0, _0800363C @ =0x99999999
_08003636:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800363C: .4byte 0x99999999

	thumb_func_start sub_08003640
sub_08003640: @ 0x08003640
	push {r4, r5, lr}
	sub sp, #0x10
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	adds r5, r0, #0
	mov r0, sp
	movs r1, #0
	movs r2, #0x10
	bl memset
	mov r2, sp
	ldrb r1, [r2]
	movs r0, #0x10
	rsbs r0, r0, #0
	ands r0, r1
	movs r1, #2
	orrs r0, r1
	strb r0, [r2]
	movs r1, #0x40
	orrs r0, r1
	strb r0, [r2]
	ldrb r1, [r2, #1]
	movs r0, #0x3d
	rsbs r0, r0, #0
	ands r0, r1
	movs r4, #0x10
	orrs r0, r4
	strb r0, [r2, #1]
	ldrb r0, [r2, #0xb]
	movs r1, #1
	orrs r0, r1
	strb r0, [r2, #0xb]
	lsls r3, r5, #7
	ldrb r1, [r2, #0xa]
	movs r0, #0x7f
	ands r0, r1
	orrs r0, r3
	strb r0, [r2, #0xa]
	mov r1, sp
	movs r2, #0
	movs r0, #1
	strb r0, [r1, #2]
	mov r0, sp
	strb r2, [r0, #3]
	ldr r0, _080036D4 @ =gUnk_080128F8
	ldrb r2, [r0]
	cmp r2, #1
	bne _080036A6
	ldrb r0, [r1]
	orrs r0, r4
	strb r0, [r1]
_080036A6:
	cmp r2, #2
	bne _080036B4
	mov r0, sp
	ldrb r1, [r0]
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0]
_080036B4:
	cmp r5, #0
	beq _080036BE
	mov r1, sp
	movs r0, #0x83
	strb r0, [r1, #4]
_080036BE:
	mov r0, sp
	bl sub_08001C74
	ldr r0, _080036D8 @ =gUnk_08016508
	bl sub_08001C88
	add sp, #0x10
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080036D4: .4byte gUnk_080128F8
_080036D8: .4byte gUnk_08016508

	thumb_func_start sub_080036DC
sub_080036DC: @ 0x080036DC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r0, _08003718 @ =sub_08003720
	bl sub_0800288C
	adds r4, r0, #0
	movs r0, #0
	str r0, [sp]
	ldr r2, _0800371C @ =0x01000007
	mov r0, sp
	adds r1, r4, #0
	bl CpuFastSet
	adds r0, r4, #4
	adds r1, r5, #0
	movs r2, #0xd
	bl memcpy
	adds r4, #0x11
	adds r0, r4, #0
	adds r1, r6, #0
	movs r2, #8
	bl memcpy
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08003718: .4byte sub_08003720
_0800371C: .4byte 0x01000007

	thumb_func_start sub_08003720
sub_08003720: @ 0x08003720
	push {r4, r5, lr}
	sub sp, #4
	adds r5, r0, #0
	ldr r0, _0800373C @ =gRfuLinkStatus
	ldr r4, [r0]
	bl sub_080026BC
	adds r4, #0xa
	adds r4, r4, r0
	ldrb r0, [r4]
	cmp r0, #0xcb
	bgt _08003740
	movs r0, #1
	b _08003774
	.align 2, 0
_0800373C: .4byte gRfuLinkStatus
_08003740:
	ldr r0, [r5]
	adds r0, #1
	str r0, [r5]
	cmp r0, #0x3b
	bls _08003772
	mov r0, sp
	bl sub_080009B0
	adds r4, r5, #4
	adds r5, #0x11
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_080009D0
	ldr r2, [sp]
	ldr r0, _0800377C @ =gUnk_080128F8
	ldrb r0, [r0]
	movs r3, #1
	ands r3, r0
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08005E44
	bl sub_08000638
_08003772:
	movs r0, #0
_08003774:
	add sp, #4
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800377C: .4byte gUnk_080128F8
