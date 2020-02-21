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
	bl sub_0800C8E4
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
	bl sub_0800C8E4
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
	bl sub_0800CAE0
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
	bl sub_0800CAE0
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
	bl sub_0800CAE0
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
	bl sub_0800CAE0
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
	bl sub_0800CAE0
	movs r0, #0x10
	adds r1, r4, #0
	bl sub_0800CAE0
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
	ldr r0, _08000EB0 @ =gUnk_03000014
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
_08000EB0: .4byte gUnk_03000014
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

	thumb_func_start sub_08000F5C
sub_08000F5C: @ 0x08000F5C
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
	ldr r0, _08001084 @ =sub_0800010C
	str r0, [r3]
	ldr r1, _08001088 @ =gUnk_03000050
	str r1, [r3, #4]
	ldr r0, _0800108C @ =0x84000080
	str r0, [r3, #8]
	ldr r0, [r3, #8]
	ldr r0, _08001090 @ =gUnk_03007FFC
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
_08001084: .4byte sub_0800010C
_08001088: .4byte gUnk_03000050
_0800108C: .4byte 0x84000080
_08001090: .4byte gUnk_03007FFC
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
	bl sub_0800C0A4
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
	ldr r4, _080012B8 @ =gUnk_03000014
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
_080012B8: .4byte gUnk_03000014
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
	ldr r0, _08001580 @ =gUnk_03002540
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
_08001580: .4byte gUnk_03002540
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
	ldr r0, _080016FC @ =gUnk_03002530
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
_080016FC: .4byte gUnk_03002530
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
	ldr r0, _0800178C @ =gUnk_03002530
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
_0800178C: .4byte gUnk_03002530
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
	ldr r1, _08001964 @ =gUnk_03002510
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
	ldr r0, _0800196C @ =gUnk_03002530
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
_08001964: .4byte gUnk_03002510
_08001968: .4byte gUnk_03001B51
_0800196C: .4byte gUnk_03002530

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
	ldr r3, _08001A30 @ =gUnk_03002540
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
	ldr r7, _08001A30 @ =gUnk_03002540
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
_08001A30: .4byte gUnk_03002540
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
	ldr r0, _08001D58 @ =gUnk_03002540
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
_08001D58: .4byte gUnk_03002540
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
	ldr r0, _08001F8C @ =gUnk_03002530
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
_08001F8C: .4byte gUnk_03002530
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
	ldr r2, _080023F0 @ =gUnk_03002540
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
_080023F0: .4byte gUnk_03002540

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
	bl sub_0800C0A4
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
	bl sub_0800C0A4
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
	bl sub_0800C154
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
	bl sub_0800C154
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
	bl sub_0800C0A4
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
	bl sub_0800C154
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
	bl sub_0800CB80
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
	ldr r0, _0800373C @ =gUnk_03002540
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
_0800373C: .4byte gUnk_03002540
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

	thumb_func_start rfu_LMAN_REQBN_softReset_and_checkID
rfu_LMAN_REQBN_softReset_and_checkID: @ 0x08003780
	push {r4, lr}
	bl rfu_REQBN_softReset_and_checkID
	adds r4, r0, #0
	ldr r0, _080037C4 @ =0x00008001
	cmp r4, r0
	bne _08003794
	ldr r1, _080037C8 @ =gUnk_03001D48
	movs r0, #1
	strb r0, [r1, #8]
_08003794:
	ldr r0, _080037C8 @ =gUnk_03001D48
	ldrb r2, [r0, #4]
	adds r1, r0, #0
	cmp r2, #0x17
	beq _080037A8
	cmp r2, #1
	beq _080037A8
	movs r0, #0
	strb r0, [r1, #5]
	strb r0, [r1, #4]
_080037A8:
	movs r0, #0
	strb r0, [r1, #7]
	strb r0, [r1, #0xd]
	strb r0, [r1, #1]
	strb r0, [r1]
	movs r0, #0xff
	strb r0, [r1, #6]
	bl rfu_LMAN_managerChangeAgbClockMaster
	adds r0, r4, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0
_080037C4: .4byte 0x00008001
_080037C8: .4byte gUnk_03001D48

	thumb_func_start rfu_LMAN_REQ_sendData
rfu_LMAN_REQ_sendData: @ 0x080037CC
	push {lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	ldr r0, _080037EC @ =gUnk_03002540
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #0
	bne _080037F4
	ldr r0, _080037F0 @ =gUnk_03001D48
	ldrb r0, [r0, #2]
	movs r2, #0
	cmp r0, #1
	bne _080037FC
	movs r2, #1
	b _080037FC
	.align 2, 0
_080037EC: .4byte gUnk_03002540
_080037F0: .4byte gUnk_03001D48
_080037F4:
	ldr r0, _08003808 @ =gUnk_03001D48
	ldrb r1, [r0, #3]
	movs r1, #0
	strb r1, [r0, #3]
_080037FC:
	adds r0, r2, #0
	bl rfu_REQ_sendData
	pop {r0}
	bx r0
	.align 2, 0
_08003808: .4byte gUnk_03001D48

	thumb_func_start rfu_LMAN_initializeManager
rfu_LMAN_initializeManager: @ 0x0800380C
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r5, r0, #0
	adds r6, r1, #0
	cmp r5, #0
	beq _08003854
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r4, _08003844 @ =gUnk_03001D48
	ldr r2, _08003848 @ =0x01000024
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	movs r0, #0xff
	strb r0, [r4, #6]
	str r5, [r4, #0x40]
	str r6, [r4, #0x44]
	ldr r0, _0800384C @ =rfu_LMAN_MSC_callback
	bl rfu_setMSCCallback
	ldr r0, _08003850 @ =rfu_LMAN_REQ_callback
	bl rfu_setREQCallback
	movs r0, #0
	b _08003856
	.align 2, 0
_08003844: .4byte gUnk_03001D48
_08003848: .4byte 0x01000024
_0800384C: .4byte rfu_LMAN_MSC_callback
_08003850: .4byte rfu_LMAN_REQ_callback
_08003854:
	movs r0, #4
_08003856:
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start rfu_LMAN_endManager
rfu_LMAN_endManager: @ 0x08003860
	push {r4, lr}
	sub sp, #4
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r4, _08003884 @ =gUnk_03001D48
	ldr r2, _08003888 @ =0x01000020
	mov r0, sp
	adds r1, r4, #0
	bl CpuSet
	movs r0, #0xff
	strb r0, [r4, #6]
	add sp, #4
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003884: .4byte gUnk_03001D48
_08003888: .4byte 0x01000020

	thumb_func_start rfu_LMAN_initializeRFU
rfu_LMAN_initializeRFU: @ 0x0800388C
	push {r4, lr}
	adds r4, r0, #0
	bl rfu_LMAN_clearVariables
	ldr r1, _080038BC @ =gUnk_03001D48
	movs r2, #1
	strb r2, [r1, #4]
	movs r0, #2
	strb r0, [r1, #5]
	str r4, [r1, #0x3c]
	ldrb r0, [r4, #0x11]
	strb r0, [r1, #9]
	ldrh r0, [r4, #0x12]
	strh r0, [r1, #0x32]
	ldrh r0, [r4, #0x14]
	strh r0, [r1, #0x18]
	ldrb r0, [r4, #0x10]
	cmp r0, #0
	beq _080038B4
	strb r2, [r1, #0xb]
_080038B4:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080038BC: .4byte gUnk_03001D48

	thumb_func_start rfu_LMAN_clearVariables
rfu_LMAN_clearVariables: @ 0x080038C0
	push {r4, r5, lr}
	ldr r2, _08003904 @ =gUnk_03001D48
	movs r0, #0
	strb r0, [r2, #5]
	strb r0, [r2, #4]
	movs r1, #0xff
	strb r1, [r2, #6]
	strb r0, [r2, #7]
	strb r0, [r2, #0x10]
	strb r0, [r2, #0xc]
	adds r1, r2, #0
	adds r1, #0x24
	strb r0, [r1]
	adds r1, #0xc
	strb r0, [r1]
	movs r3, #0
	adds r5, r2, #0
	adds r5, #0x28
	movs r4, #0
	adds r2, #0x34
_080038E8:
	lsls r1, r3, #1
	adds r0, r1, r5
	strh r4, [r0]
	adds r1, r1, r2
	strh r4, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _080038E8
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08003904: .4byte gUnk_03001D48

	thumb_func_start rfu_LMAN_powerDownRFU
rfu_LMAN_powerDownRFU: @ 0x08003908
	ldr r1, _08003910 @ =gUnk_03001D48
	movs r0, #0x15
	strb r0, [r1, #4]
	bx lr
	.align 2, 0
_08003910: .4byte gUnk_03001D48

	thumb_func_start rfu_LMAN_establishConnection
rfu_LMAN_establishConnection: @ 0x08003914
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r3, #0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	mov r8, r2
	ldr r1, _0800394C @ =gUnk_03001D48
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _08003950
	cmp r0, #8
	bne _0800393A
	cmp r5, #1
	beq _08003950
_0800393A:
	movs r0, #1
	strh r0, [r1, #0x14]
	movs r0, #0xf3
	movs r1, #1
	bl rfu_LMAN_occureCallback
	movs r0, #1
	b _080039E2
	.align 2, 0
_0800394C: .4byte gUnk_03001D48
_08003950:
	bl rfu_getMasterSlave
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08003970
	ldr r1, _0800396C @ =gUnk_03001D48
	movs r0, #2
	strh r0, [r1, #0x14]
	movs r0, #0xf3
	movs r1, #1
	bl rfu_LMAN_occureCallback
	movs r0, #2
	b _080039E2
	.align 2, 0
_0800396C: .4byte gUnk_03001D48
_08003970:
	movs r2, #0
	ldrh r0, [r6]
	ldr r4, _080039A4 @ =0x0000FFFF
	adds r1, r6, #2
	ldr r3, _080039A8 @ =gUnk_03001D48
	cmp r0, r4
	beq _08003990
_0800397E:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xf
	bhi _08003990
	ldrh r0, [r1]
	adds r1, #2
	cmp r0, r4
	bne _0800397E
_08003990:
	cmp r2, #0x10
	bne _080039AC
	movs r0, #4
	strh r0, [r3, #0x14]
	movs r0, #0xf3
	movs r1, #1
	bl rfu_LMAN_occureCallback
	movs r0, #4
	b _080039E2
	.align 2, 0
_080039A4: .4byte 0x0000FFFF
_080039A8: .4byte gUnk_03001D48
_080039AC:
	cmp r5, #1
	bls _080039BA
	movs r0, #1
	strb r0, [r3, #7]
	movs r5, #1
	movs r7, #0
	b _080039BE
_080039BA:
	movs r0, #0
	strb r0, [r3, #7]
_080039BE:
	cmp r5, #0
	beq _080039C8
	movs r0, #5
	strb r0, [r3, #4]
	b _080039D6
_080039C8:
	movs r0, #9
	strb r0, [r3, #4]
	ldrb r0, [r3, #0xb]
	cmp r0, #0
	beq _080039D6
	movs r0, #2
	strb r0, [r3, #0xb]
_080039D6:
	strb r5, [r3, #6]
	strh r7, [r3, #0x1a]
	mov r0, r8
	strh r0, [r3, #0x26]
	str r6, [r3, #0x20]
	movs r0, #0
_080039E2:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start rfu_LMAN_CHILD_connectParent
rfu_LMAN_CHILD_connectParent: @ 0x080039EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	mov r8, r1
	ldr r1, _08003A20 @ =gUnk_03001D48
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _08003A24
	subs r0, #9
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bls _08003A24
	movs r0, #1
	strh r0, [r1, #0x14]
	movs r0, #0xf3
	movs r1, #1
	bl rfu_LMAN_occureCallback
	movs r0, #1
	b _08003AC4
	.align 2, 0
_08003A20: .4byte gUnk_03001D48
_08003A24:
	bl rfu_getMasterSlave
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08003A44
	ldr r1, _08003A40 @ =gUnk_03001D48
	movs r0, #2
	strh r0, [r1, #0x14]
	movs r0, #0xf3
	movs r1, #1
	bl rfu_LMAN_occureCallback
	movs r0, #2
	b _08003AC4
	.align 2, 0
_08003A40: .4byte gUnk_03001D48
_08003A44:
	movs r2, #0
	ldr r0, _08003A90 @ =gUnk_03002540
	ldr r1, [r0]
	ldrb r3, [r1, #8]
	ldr r5, _08003A94 @ =gUnk_03001D48
	adds r7, r0, #0
	cmp r2, r3
	bhs _08003A72
	ldrh r0, [r1, #0x14]
	cmp r0, r6
	beq _08003A72
	adds r4, r1, #0
	adds r1, r3, #0
_08003A5E:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, r1
	bhs _08003A72
	lsls r0, r2, #5
	adds r0, r4, r0
	ldrh r0, [r0, #0x14]
	cmp r0, r6
	bne _08003A5E
_08003A72:
	ldr r0, [r7]
	ldrb r0, [r0, #8]
	cmp r0, #0
	beq _08003A7E
	cmp r2, r0
	bne _08003A98
_08003A7E:
	movs r0, #3
	strh r0, [r5, #0x14]
	movs r0, #0xf3
	movs r1, #1
	bl rfu_LMAN_occureCallback
	movs r0, #3
	b _08003AC4
	.align 2, 0
_08003A90: .4byte gUnk_03002540
_08003A94: .4byte gUnk_03001D48
_08003A98:
	ldrb r0, [r5, #4]
	cmp r0, #0
	beq _08003AA2
	cmp r0, #9
	bne _08003AAA
_08003AA2:
	movs r0, #0xc
	strb r0, [r5, #4]
	movs r0, #0xd
	b _08003AB0
_08003AAA:
	movs r0, #0xb
	strb r0, [r5, #4]
	movs r0, #0xc
_08003AB0:
	strb r0, [r5, #5]
	strh r6, [r5, #0x1e]
	mov r0, r8
	strh r0, [r5, #0x1a]
	ldrb r0, [r5, #7]
	cmp r0, #0
	beq _08003AC2
	movs r0, #7
	strb r0, [r5, #7]
_08003AC2:
	movs r0, #0
_08003AC4:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start rfu_LMAN_PARENT_stopWaitLinkRecoveryAndDisconnect
rfu_LMAN_PARENT_stopWaitLinkRecoveryAndDisconnect: @ 0x08003AD0
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	ldr r6, _08003B34 @ =gUnk_03001D48
	adds r3, r6, #0
	adds r3, #0x30
	ldrb r2, [r3]
	adds r0, r1, #0
	ands r0, r2
	cmp r0, #0
	beq _08003B2C
	adds r0, r2, #0
	bics r0, r1
	strb r0, [r3]
	movs r4, #0
	ldr r7, _08003B38 @ =gUnk_03002540
	movs r5, #1
	adds r3, #4
	movs r2, #0
_08003AF6:
	adds r0, r1, #0
	asrs r0, r4
	ands r0, r5
	cmp r0, #0
	beq _08003B06
	lsls r0, r4, #1
	adds r0, r0, r3
	strh r2, [r0]
_08003B06:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08003AF6
	ldr r0, [r7]
	ldrb r4, [r0, #3]
	ands r4, r1
	cmp r4, #0
	beq _08003B20
	adds r0, r4, #0
	bl rfu_LMAN_disconnect
_08003B20:
	ldr r0, _08003B34 @ =gUnk_03001D48
	strh r4, [r0, #0x14]
	movs r0, #0x33
	adds r1, r4, #0
	bl rfu_LMAN_occureCallback
_08003B2C:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08003B34: .4byte gUnk_03001D48
_08003B38: .4byte gUnk_03002540

	thumb_func_start rfu_LMAN_stopManager
rfu_LMAN_stopManager: @ 0x08003B3C
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	movs r2, #0
	ldr r1, _08003B58 @ =gUnk_03001D48
	strb r2, [r1, #7]
	adds r5, r1, #0
	cmp r0, #0
	beq _08003B5C
	bl rfu_LMAN_clearVariables
	movs r0, #0x17
	strb r0, [r5, #4]
	b _08003C26
	.align 2, 0
_08003B58: .4byte gUnk_03001D48
_08003B5C:
	ldrb r0, [r5, #4]
	subs r0, #5
	cmp r0, #0xd
	bhi _08003C12
	lsls r0, r0, #2
	ldr r1, _08003B70 @ =_08003B74
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08003B70: .4byte _08003B74
_08003B74: @ jump table
	.4byte _08003BAC @ case 0
	.4byte _08003BB8 @ case 1
	.4byte _08003BB8 @ case 2
	.4byte _08003C18 @ case 3
	.4byte _08003BC2 @ case 4
	.4byte _08003BCC @ case 5
	.4byte _08003BCC @ case 6
	.4byte _08003BD6 @ case 7
	.4byte _08003BE0 @ case 8
	.4byte _08003BE0 @ case 9
	.4byte _08003C18 @ case 10
	.4byte _08003BE6 @ case 11
	.4byte _08003C0C @ case 12
	.4byte _08003C0C @ case 13
_08003BAC:
	movs r1, #0
	movs r0, #8
	strb r0, [r5, #4]
	strb r1, [r5, #5]
	movs r2, #0x13
	b _08003C18
_08003BB8:
	movs r0, #7
	strb r0, [r5, #4]
	movs r0, #8
	strb r0, [r5, #5]
	b _08003C18
_08003BC2:
	movs r0, #0
	strb r0, [r5, #5]
	strb r0, [r5, #4]
	movs r2, #0x21
	b _08003C18
_08003BCC:
	movs r1, #0
	movs r0, #0xb
	strb r0, [r5, #4]
	strb r1, [r5, #5]
	b _08003C18
_08003BD6:
	movs r0, #0
	strb r0, [r5, #5]
	strb r0, [r5, #4]
	movs r2, #0x23
	b _08003C18
_08003BE0:
	movs r0, #0xe
	strb r0, [r5, #4]
	b _08003C18
_08003BE6:
	ldrb r0, [r5, #0x11]
	strb r0, [r5, #4]
	ldrb r0, [r5, #0x12]
	strb r0, [r5, #5]
	ldr r4, _08003C08 @ =gUnk_03002540
	ldr r0, [r4]
	ldrb r0, [r0, #3]
	bl rfu_LMAN_disconnect
	ldr r0, [r4]
	ldrb r0, [r0, #3]
	strh r0, [r5, #0x14]
	movs r0, #0x33
	movs r1, #1
	bl rfu_LMAN_occureCallback
	b _08003C26
	.align 2, 0
_08003C08: .4byte gUnk_03002540
_08003C0C:
	movs r0, #0x12
	strb r0, [r5, #4]
	b _08003C18
_08003C12:
	strb r2, [r5, #5]
	strb r2, [r5, #4]
	movs r2, #0x43
_08003C18:
	ldrb r0, [r5, #4]
	cmp r0, #0
	bne _08003C26
	adds r0, r2, #0
	movs r1, #0
	bl rfu_LMAN_occureCallback
_08003C26:
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start rfu_LMAN_linkWatcher
rfu_LMAN_linkWatcher: @ 0x08003C2C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	movs r1, #0
	mov r8, r1
	mov r5, sp
	adds r5, #1
	mov r4, sp
	adds r4, #2
	mov r1, sp
	adds r2, r5, #0
	adds r3, r4, #0
	bl rfu_REQBN_watchLink
	mov r0, sp
	ldrb r0, [r0]
	adds r7, r4, #0
	cmp r0, #0
	beq _08003CF6
	ldr r1, _08003CC8 @ =gUnk_03001D48
	mov r0, sp
	ldrb r0, [r0]
	strh r0, [r1, #0x14]
	ldrb r0, [r5]
	strh r0, [r1, #0x16]
	ldrb r0, [r1, #9]
	adds r6, r1, #0
	cmp r0, #0
	beq _08003CE6
	movs r0, #1
	strb r0, [r6, #0xa]
	ldrb r0, [r6, #6]
	cmp r0, #0
	bne _08003C82
	ldrb r0, [r5]
	cmp r0, #0
	bne _08003C82
	movs r0, #4
	strb r0, [r6, #0xa]
_08003C82:
	ldrb r0, [r6, #0xa]
	cmp r0, #1
	bne _08003CCC
	movs r2, #0
	mov r4, sp
	movs r5, #1
	mov ip, r6
	mov r3, ip
	adds r3, #0x30
	movs r6, #0x34
	add r6, ip
	mov sb, r6
_08003C9A:
	ldrb r0, [r4]
	asrs r0, r2
	ands r0, r5
	cmp r0, #0
	beq _08003CB8
	adds r0, r5, #0
	lsls r0, r2
	ldrb r1, [r3]
	orrs r0, r1
	strb r0, [r3]
	lsls r0, r2, #1
	add r0, sb
	mov r6, ip
	ldrh r1, [r6, #0x32]
	strh r1, [r0]
_08003CB8:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _08003C9A
	movs r0, #0x31
	b _08003CDE
	.align 2, 0
_08003CC8: .4byte gUnk_03001D48
_08003CCC:
	movs r0, #0
	strb r0, [r6, #0xa]
	mov r0, sp
	ldrb r0, [r0]
	bl rfu_LMAN_disconnect
	movs r0, #1
	mov r8, r0
	movs r0, #0x33
_08003CDE:
	movs r1, #1
	bl rfu_LMAN_occureCallback
	b _08003CF2
_08003CE6:
	mov r0, sp
	ldrb r0, [r0]
	bl sub_08001AD4
	movs r1, #1
	mov r8, r1
_08003CF2:
	bl rfu_LMAN_managerChangeAgbClockMaster
_08003CF6:
	ldr r0, _08003DD4 @ =gUnk_03002540
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #1
	bne _08003DC4
	ldrb r0, [r7]
	cmp r0, #0
	beq _08003D54
	movs r2, #0
	ldr r6, _08003DD8 @ =gUnk_03001D48
	movs r3, #1
	adds r4, r6, #0
	adds r4, #0x34
	adds r6, #0x30
	adds r5, r7, #0
_08003D14:
	ldrb r0, [r6]
	asrs r0, r2
	ands r0, r3
	cmp r0, #0
	beq _08003D30
	ldrb r0, [r5]
	asrs r0, r2
	ands r0, r3
	cmp r0, #0
	beq _08003D30
	lsls r0, r2, #1
	adds r0, r0, r4
	movs r1, #0
	strh r1, [r0]
_08003D30:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _08003D14
	ldr r3, _08003DD8 @ =gUnk_03001D48
	adds r2, r3, #0
	adds r2, #0x30
	ldrb r1, [r7]
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	ldrb r0, [r7]
	strh r0, [r3, #0x14]
	movs r0, #0x32
	movs r1, #1
	bl rfu_LMAN_occureCallback
_08003D54:
	ldr r0, _08003DD8 @ =gUnk_03001D48
	adds r4, r0, #0
	adds r4, #0x30
	ldrb r1, [r4]
	adds r6, r0, #0
	cmp r1, #0
	beq _08003DC0
	movs r3, #0
	movs r2, #0
	movs r5, #1
_08003D68:
	ldrb r0, [r4]
	asrs r0, r2
	ands r0, r5
	cmp r0, #0
	beq _08003D9A
	lsls r1, r2, #1
	adds r0, r6, #0
	adds r0, #0x34
	adds r1, r1, r0
	ldrh r0, [r1]
	cmp r0, #0
	beq _08003D9A
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08003D9A
	adds r0, r5, #0
	lsls r0, r2
	ldrb r1, [r4]
	bics r1, r0
	strb r1, [r4]
	orrs r3, r0
	lsls r0, r3, #0x18
	lsrs r3, r0, #0x18
_08003D9A:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _08003D68
	cmp r3, #0
	beq _08003DB2
	adds r0, r3, #0
	bl sub_08001AD4
	movs r6, #1
	mov r8, r6
_08003DB2:
	ldr r0, _08003DD8 @ =gUnk_03001D48
	adds r1, r0, #0
	adds r1, #0x30
	ldrb r1, [r1]
	adds r6, r0, #0
	cmp r1, #0
	bne _08003DC4
_08003DC0:
	movs r0, #0
	strb r0, [r6, #0xa]
_08003DC4:
	mov r0, r8
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08003DD4: .4byte gUnk_03002540
_08003DD8: .4byte gUnk_03001D48

	thumb_func_start rfu_LMAN_syncVBlank
rfu_LMAN_syncVBlank: @ 0x08003DDC
	push {lr}
	bl rfu_syncVBlank
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08003DF4
	movs r0, #0xf1
	movs r1, #0
	bl rfu_LMAN_occureCallback
	bl rfu_LMAN_managerChangeAgbClockMaster
_08003DF4:
	pop {r0}
	bx r0

	thumb_func_start rfu_LMAN_manager_entity
rfu_LMAN_manager_entity: @ 0x08003DF8
	push {r4, lr}
	adds r3, r0, #0
	ldr r1, _08003E10 @ =gUnk_03001D48
	ldr r2, [r1, #0x40]
	cmp r2, #0
	bne _08003E14
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _08003E14
	strb r2, [r1, #4]
	b _08003FE2
	.align 2, 0
_08003E10: .4byte gUnk_03001D48
_08003E14:
	ldr r0, _08003E48 @ =gUnk_03001D48
	ldrb r0, [r0, #7]
	cmp r0, #0
	beq _08003E22
	adds r0, r3, #0
	bl rfu_LMAN_settingPCSWITCH
_08003E22:
	ldr r4, _08003E48 @ =gUnk_03001D48
	ldrb r0, [r4, #4]
	cmp r0, #0
	bne _08003E2C
	b _08003FAC
_08003E2C:
	bl rfu_waitREQComplete
	movs r0, #1
	strb r0, [r4, #0xe]
	ldrb r0, [r4, #4]
	subs r0, #1
	cmp r0, #0x16
	bls _08003E3E
	b _08003FA2
_08003E3E:
	lsls r0, r0, #2
	ldr r1, _08003E4C @ =_08003E50
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08003E48: .4byte gUnk_03001D48
_08003E4C: .4byte _08003E50
_08003E50: @ jump table
	.4byte _08003ED0 @ case 0
	.4byte _08003F08 @ case 1
	.4byte _08003F0E @ case 2
	.4byte _08003F24 @ case 3
	.4byte _08003F3C @ case 4
	.4byte _08003F42 @ case 5
	.4byte _08003F48 @ case 6
	.4byte _08003FA2 @ case 7
	.4byte _08003F4E @ case 8
	.4byte _08003F54 @ case 9
	.4byte _08003F5A @ case 10
	.4byte _08003F60 @ case 11
	.4byte _08003F70 @ case 12
	.4byte _08003F76 @ case 13
	.4byte _08003FA2 @ case 14
	.4byte _08003F7C @ case 15
	.4byte _08003F8C @ case 16
	.4byte _08003F92 @ case 17
	.4byte _08003F98 @ case 18
	.4byte _08003FA2 @ case 19
	.4byte _08003F9E @ case 20
	.4byte _08003FA2 @ case 21
	.4byte _08003EAC @ case 22
_08003EAC:
	bl rfu_LMAN_REQBN_softReset_and_checkID
	ldr r1, _08003EC8 @ =0x00008001
	movs r2, #0xff
	cmp r0, r1
	bne _08003EBA
	movs r2, #0x44
_08003EBA:
	ldr r1, _08003ECC @ =gUnk_03001D48
	movs r0, #0
	strb r0, [r1, #5]
	strb r0, [r1, #4]
	adds r0, r2, #0
	b _08003EFA
	.align 2, 0
_08003EC8: .4byte 0x00008001
_08003ECC: .4byte gUnk_03001D48
_08003ED0:
	bl rfu_LMAN_REQBN_softReset_and_checkID
	ldr r1, _08003EE8 @ =0x00008001
	cmp r0, r1
	bne _08003EF0
	ldr r0, _08003EEC @ =gUnk_03001D48
	ldrb r1, [r0, #5]
	strb r1, [r0, #4]
	movs r1, #3
	strb r1, [r0, #5]
	b _08003FA2
	.align 2, 0
_08003EE8: .4byte 0x00008001
_08003EEC: .4byte gUnk_03001D48
_08003EF0:
	ldr r1, _08003F04 @ =gUnk_03001D48
	movs r0, #0
	strb r0, [r1, #5]
	strb r0, [r1, #4]
	movs r0, #0xff
_08003EFA:
	movs r1, #0
	bl rfu_LMAN_occureCallback
	b _08003FA2
	.align 2, 0
_08003F04: .4byte gUnk_03001D48
_08003F08:
	bl rfu_REQ_reset
	b _08003FA2
_08003F0E:
	ldr r0, _08003F20 @ =gUnk_03001D48
	ldr r2, [r0, #0x3c]
	ldrh r0, [r2, #2]
	ldrb r1, [r2]
	ldrb r2, [r2, #1]
	bl rfu_REQ_configSystem
	b _08003FA2
	.align 2, 0
_08003F20: .4byte gUnk_03001D48
_08003F24:
	ldr r0, _08003F38 @ =gUnk_03001D48
	ldr r3, [r0, #0x3c]
	ldrb r0, [r3, #4]
	ldrh r1, [r3, #6]
	ldr r2, [r3, #8]
	ldr r3, [r3, #0xc]
	bl rfu_REQ_configGameData
	b _08003FA2
	.align 2, 0
_08003F38: .4byte gUnk_03001D48
_08003F3C:
	bl rfu_REQ_startSearchChild
	b _08003FA2
_08003F42:
	bl rfu_REQ_pollSearchChild
	b _08003FA2
_08003F48:
	bl rfu_REQ_endSearchChild
	b _08003FA2
_08003F4E:
	bl rfu_REQ_startSearchParent
	b _08003FA2
_08003F54:
	bl rfu_REQ_pollSearchParent
	b _08003FA2
_08003F5A:
	bl rfu_REQ_endSearchParent
	b _08003FA2
_08003F60:
	ldr r0, _08003F6C @ =gUnk_03001D48
	ldrh r0, [r0, #0x1e]
	bl rfu_REQ_startConnectParent
	b _08003FA2
	.align 2, 0
_08003F6C: .4byte gUnk_03001D48
_08003F70:
	bl rfu_REQ_pollConnectParent
	b _08003FA2
_08003F76:
	bl rfu_REQ_endConnectParent
	b _08003FA2
_08003F7C:
	ldr r0, _08003F88 @ =gUnk_03002540
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	bl rfu_REQ_CHILD_startConnectRecovery
	b _08003FA2
	.align 2, 0
_08003F88: .4byte gUnk_03002540
_08003F8C:
	bl rfu_REQ_CHILD_pollConnectRecovery
	b _08003FA2
_08003F92:
	bl rfu_REQ_CHILD_endConnectRecovery
	b _08003FA2
_08003F98:
	bl rfu_REQ_changeMasterSlave
	b _08003FA2
_08003F9E:
	bl rfu_REQ_stopMode
_08003FA2:
	bl rfu_waitREQComplete
	ldr r1, _08003FE8 @ =gUnk_03001D48
	movs r0, #0
	strb r0, [r1, #0xe]
_08003FAC:
	ldr r0, _08003FE8 @ =gUnk_03001D48
	ldrb r0, [r0, #4]
	subs r0, #0x12
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bhi _08003FBC
	b _08003E22
_08003FBC:
	ldr r0, _08003FEC @ =gUnk_03002540
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #1
	bne _08003FD2
	movs r0, #0
	bl rfu_LMAN_linkWatcher
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08003FE2
_08003FD2:
	bl rfu_LMAN_PARENT_checkRecvChildName
	bl rfu_LMAN_CHILD_checkSendChildName
	bl rfu_LMAN_CHILD_linkRecoveryProcess
	bl rfu_LMAN_checkNICommunicateStatus
_08003FE2:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08003FE8: .4byte gUnk_03001D48
_08003FEC: .4byte gUnk_03002540

	thumb_func_start rfu_LMAN_settingPCSWITCH
rfu_LMAN_settingPCSWITCH: @ 0x08003FF0
	push {r4, lr}
	adds r3, r0, #0
	ldr r0, _08004014 @ =gUnk_03001D48
	ldrb r1, [r0, #7]
	adds r4, r0, #0
	cmp r1, #5
	bne _0800401A
	movs r2, #1
	strb r2, [r4, #6]
	strb r1, [r4, #4]
	ldrh r0, [r4, #0x1c]
	strh r0, [r4, #0x1a]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08004018
	movs r0, #6
	strb r0, [r4, #7]
	b _0800401A
	.align 2, 0
_08004014: .4byte gUnk_03001D48
_08004018:
	strb r2, [r4, #7]
_0800401A:
	ldrb r0, [r4, #7]
	cmp r0, #1
	bne _08004044
	strb r0, [r4, #6]
	movs r0, #5
	strb r0, [r4, #4]
	adds r0, r3, #0
	movs r1, #0x8c
	bl __umodsi3
	strh r0, [r4, #0x1a]
	movs r1, #0x8c
	subs r1, r1, r0
	strh r1, [r4, #0x1c]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08004040
	movs r0, #2
	b _08004042
_08004040:
	movs r0, #3
_08004042:
	strb r0, [r4, #7]
_08004044:
	ldrb r0, [r4, #7]
	cmp r0, #3
	bne _0800405A
	movs r0, #0
	strb r0, [r4, #6]
	movs r0, #0x28
	strh r0, [r4, #0x1a]
	movs r0, #4
	strb r0, [r4, #7]
	movs r0, #9
	strb r0, [r4, #4]
_0800405A:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start rfu_LMAN_REQ_callback
rfu_LMAN_REQ_callback: @ 0x08004060
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	ldr r0, _08004098 @ =gUnk_03001D48
	ldrb r1, [r0, #0xe]
	adds r7, r0, #0
	cmp r1, #0
	bne _0800407E
	b _08004544
_0800407E:
	movs r0, #0
	strb r0, [r7, #0xe]
	mov r0, r8
	subs r0, #0x10
	cmp r0, #0x2d
	bls _0800408C
	b _08004536
_0800408C:
	lsls r0, r0, #2
	ldr r1, _0800409C @ =_080040A0
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08004098: .4byte gUnk_03001D48
_0800409C: .4byte _080040A0
_080040A0: @ jump table
	.4byte _08004158 @ case 0
	.4byte _08004536 @ case 1
	.4byte _08004536 @ case 2
	.4byte _08004536 @ case 3
	.4byte _08004536 @ case 4
	.4byte _08004536 @ case 5
	.4byte _08004184 @ case 6
	.4byte _08004170 @ case 7
	.4byte _08004536 @ case 8
	.4byte _08004198 @ case 9
	.4byte _080041A8 @ case 10
	.4byte _080041CC @ case 11
	.4byte _080041EC @ case 12
	.4byte _0800420C @ case 13
	.4byte _0800427C @ case 14
	.4byte _080042AE @ case 15
	.4byte _080042C4 @ case 16
	.4byte _0800430C @ case 17
	.4byte _08004536 @ case 18
	.4byte _08004536 @ case 19
	.4byte _08004536 @ case 20
	.4byte _08004536 @ case 21
	.4byte _08004536 @ case 22
	.4byte _08004484 @ case 23
	.4byte _08004536 @ case 24
	.4byte _08004536 @ case 25
	.4byte _08004536 @ case 26
	.4byte _08004536 @ case 27
	.4byte _08004536 @ case 28
	.4byte _08004536 @ case 29
	.4byte _08004536 @ case 30
	.4byte _08004536 @ case 31
	.4byte _08004536 @ case 32
	.4byte _08004536 @ case 33
	.4byte _0800437C @ case 34
	.4byte _080043C8 @ case 35
	.4byte _08004410 @ case 36
	.4byte _08004536 @ case 37
	.4byte _08004536 @ case 38
	.4byte _08004536 @ case 39
	.4byte _08004536 @ case 40
	.4byte _08004536 @ case 41
	.4byte _08004536 @ case 42
	.4byte _08004536 @ case 43
	.4byte _08004536 @ case 44
	.4byte _08004524 @ case 45
_08004158:
	cmp r6, #0
	beq _0800415E
	b _08004536
_0800415E:
	ldr r0, _0800416C @ =gUnk_03001D48
	ldrb r1, [r0, #5]
	strb r1, [r0, #4]
	movs r1, #4
	strb r1, [r0, #5]
	b _08004536
	.align 2, 0
_0800416C: .4byte gUnk_03001D48
_08004170:
	cmp r6, #0
	beq _08004176
	b _08004536
_08004176:
	ldr r0, _08004180 @ =gUnk_03001D48
	ldrb r1, [r0, #5]
	strb r1, [r0, #4]
	strb r6, [r0, #5]
	b _08004536
	.align 2, 0
_08004180: .4byte gUnk_03001D48
_08004184:
	cmp r6, #0
	beq _0800418A
	b _08004536
_0800418A:
	ldr r0, _08004194 @ =gUnk_03001D48
	strb r6, [r0, #5]
	strb r6, [r0, #4]
	movs r0, #0
	b _080044A2
	.align 2, 0
_08004194: .4byte gUnk_03001D48
_08004198:
	cmp r6, #0
	beq _0800419E
	b _08004536
_0800419E:
	ldr r1, _080041A4 @ =gUnk_03001D48
	movs r0, #6
	b _080042B8
	.align 2, 0
_080041A4: .4byte gUnk_03001D48
_080041A8:
	ldr r1, _080041C8 @ =gUnk_03001D48
	ldrh r0, [r1, #0x1a]
	cmp r0, #0
	bne _080041B2
	b _08004536
_080041B2:
	subs r0, #1
	strh r0, [r1, #0x1a]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080041BE
	b _08004536
_080041BE:
	movs r0, #7
	strb r0, [r1, #4]
	movs r0, #8
	strb r0, [r1, #5]
	b _08004536
	.align 2, 0
_080041C8: .4byte gUnk_03001D48
_080041CC:
	cmp r6, #0
	beq _080041D2
	b _08004536
_080041D2:
	ldr r0, _080041E8 @ =gUnk_03001D48
	ldrb r1, [r0, #5]
	strb r1, [r0, #4]
	strb r6, [r0, #5]
	ldrb r0, [r0, #7]
	cmp r0, #0
	beq _080041E2
	b _08004536
_080041E2:
	movs r0, #0x13
	b _080044A2
	.align 2, 0
_080041E8: .4byte gUnk_03001D48
_080041EC:
	cmp r6, #0
	beq _080041F2
	b _08004536
_080041F2:
	ldrb r0, [r7, #0xb]
	cmp r0, #1
	bne _08004202
	ldrh r0, [r7, #0x1a]
	cmp r0, #1
	bls _08004202
	subs r0, #1
	strh r0, [r7, #0x1a]
_08004202:
	ldr r1, _08004208 @ =gUnk_03001D48
	movs r0, #0xa
	b _080042B8
	.align 2, 0
_08004208: .4byte gUnk_03001D48
_0800420C:
	cmp r6, #0
	bne _08004252
	bl rfu_LMAN_CHILD_checkEnableParentCandidate
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r1, sp
	strb r0, [r1]
	ldr r4, _08004274 @ =gUnk_03001D48
	strh r0, [r4, #0x14]
	cmp r0, #0
	beq _0800422C
	movs r0, #0x20
	movs r1, #1
	bl rfu_LMAN_occureCallback
_0800422C:
	ldrb r0, [r4, #0xb]
	cmp r0, #0
	beq _08004252
	ldrh r0, [r4, #0x1a]
	cmp r0, #1
	beq _08004252
	ldr r0, _08004278 @ =gUnk_03002540
	ldr r0, [r0]
	ldrb r0, [r0, #8]
	cmp r0, #4
	bne _08004252
	bl rfu_REQ_endSearchParent
	bl rfu_waitREQComplete
	movs r0, #9
	strb r0, [r4, #4]
	movs r0, #1
	strb r0, [r4, #0xb]
_08004252:
	ldr r1, _08004274 @ =gUnk_03001D48
	ldrh r0, [r1, #0x1a]
	cmp r0, #0
	bne _0800425C
	b _08004536
_0800425C:
	subs r0, #1
	strh r0, [r1, #0x1a]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08004268
	b _08004536
_08004268:
	movs r0, #0xb
	strb r0, [r1, #4]
	movs r0, #0
	strb r0, [r1, #5]
	b _08004536
	.align 2, 0
_08004274: .4byte gUnk_03001D48
_08004278: .4byte gUnk_03002540
_0800427C:
	cmp r6, #0
	beq _08004282
	b _08004536
_08004282:
	ldr r2, _0800429C @ =gUnk_03001D48
	ldrb r0, [r2, #5]
	strb r0, [r2, #4]
	ldrb r1, [r2, #7]
	cmp r1, #0
	bne _080042A0
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08004296
	b _08004536
_08004296:
	movs r0, #0x21
	b _080044A2
	.align 2, 0
_0800429C: .4byte gUnk_03001D48
_080042A0:
	cmp r1, #7
	bne _080042A6
	b _08004536
_080042A6:
	movs r0, #5
	strb r0, [r2, #4]
	strb r0, [r2, #7]
	b _08004536
_080042AE:
	cmp r6, #0
	beq _080042B4
	b _08004536
_080042B4:
	ldr r1, _080042C0 @ =gUnk_03001D48
	movs r0, #0xd
_080042B8:
	strb r0, [r1, #5]
	strb r0, [r1, #4]
	b _08004536
	.align 2, 0
_080042C0: .4byte gUnk_03001D48
_080042C4:
	cmp r6, #0
	bne _080042E8
	ldr r4, _08004304 @ =gUnk_03001D58
	mov r0, sp
	adds r1, r4, #0
	bl rfu_getConnectParentStatus
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080042E8
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	bne _080042E8
	adds r1, r4, #0
	subs r1, #0x10
	movs r0, #0xe
	strb r0, [r1, #4]
_080042E8:
	ldr r1, _08004308 @ =gUnk_03001D48
	ldrh r0, [r1, #0x1a]
	cmp r0, #0
	bne _080042F2
	b _08004536
_080042F2:
	subs r0, #1
	strh r0, [r1, #0x1a]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _080042FE
	b _08004536
_080042FE:
	movs r0, #0xe
	strb r0, [r1, #4]
	b _08004536
	.align 2, 0
_08004304: .4byte gUnk_03001D58
_08004308: .4byte gUnk_03001D48
_0800430C:
	cmp r6, #0
	beq _08004312
	b _08004536
_08004312:
	ldr r4, _08004344 @ =gUnk_03001D58
	mov r0, sp
	adds r1, r4, #0
	bl rfu_getConnectParentStatus
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08004324
	b _08004536
_08004324:
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	bne _08004348
	adds r1, r4, #0
	subs r1, #0x10
	movs r0, #0x13
	strb r0, [r1, #4]
	movs r0, #0xf
	strb r0, [r1, #5]
	movs r0, #0x22
	strh r0, [r1, #0x1e]
	ldrb r0, [r1, #0x10]
	strh r0, [r1, #0x14]
	b _08004368
	.align 2, 0
_08004344: .4byte gUnk_03001D58
_08004348:
	adds r1, r4, #0
	subs r1, #0x10
	strb r6, [r1, #5]
	strb r6, [r1, #4]
	movs r0, #0x23
	strh r0, [r1, #0x1e]
	mov r0, sp
	ldrb r0, [r0]
	strh r0, [r1, #0x14]
	ldrb r0, [r1, #7]
	cmp r0, #0
	beq _08004368
	movs r0, #3
	strb r0, [r1, #7]
	movs r0, #9
	strb r0, [r1, #4]
_08004368:
	ldr r4, _08004378 @ =gUnk_03001D48
	ldrb r0, [r4, #0x1e]
	movs r1, #1
	bl rfu_LMAN_occureCallback
	movs r0, #0
	strh r0, [r4, #0x1e]
	b _08004536
	.align 2, 0
_08004378: .4byte gUnk_03001D48
_0800437C:
	cmp r6, #0
	beq _08004382
	b _08004536
_08004382:
	ldr r2, _080043C4 @ =gUnk_03002540
	ldr r3, [r2]
	ldrb r0, [r3, #3]
	movs r1, #0
	strh r0, [r7, #0x14]
	movs r0, #0x11
	strb r0, [r7, #5]
	strb r0, [r7, #4]
	strb r1, [r7, #0x10]
	ldrb r0, [r3, #3]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080043A0
	b _08004536
_080043A0:
	adds r1, r7, #0
	movs r3, #1
_080043A4:
	ldrb r0, [r1, #0x10]
	adds r0, #1
	strb r0, [r1, #0x10]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _080043B4
	b _08004536
_080043B4:
	ldr r0, [r2]
	ldrb r0, [r0, #3]
	ldrb r4, [r7, #0x10]
	asrs r0, r4
	ands r0, r3
	cmp r0, #0
	beq _080043A4
	b _08004536
	.align 2, 0
_080043C4: .4byte gUnk_03002540
_080043C8:
	cmp r6, #0
	bne _080043E6
	mov r0, sp
	bl rfu_CHILD_getConnectRecoveryStatus
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080043E6
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #1
	bhi _080043E6
	ldr r1, _0800440C @ =gUnk_03001D48
	movs r0, #0x12
	strb r0, [r1, #4]
_080043E6:
	ldr r2, _0800440C @ =gUnk_03001D48
	ldrb r0, [r2, #0x10]
	lsls r0, r0, #1
	adds r1, r2, #0
	adds r1, #0x34
	adds r1, r0, r1
	ldrh r0, [r1]
	cmp r0, #0
	bne _080043FA
	b _08004536
_080043FA:
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08004406
	b _08004536
_08004406:
	movs r0, #0x12
	strb r0, [r2, #4]
	b _08004536
	.align 2, 0
_0800440C: .4byte gUnk_03001D48
_08004410:
	cmp r6, #0
	beq _08004416
	b _08004536
_08004416:
	mov r0, sp
	bl rfu_CHILD_getConnectRecoveryStatus
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08004424
	b _08004536
_08004424:
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	bne _08004440
	ldr r1, _0800443C @ =gUnk_03001D48
	movs r0, #0x13
	strb r0, [r1, #4]
	movs r0, #0x16
	strb r0, [r1, #5]
	movs r0, #0x32
	strh r0, [r1, #0x1e]
	b _08004454
	.align 2, 0
_0800443C: .4byte gUnk_03001D48
_08004440:
	ldr r4, _0800447C @ =gUnk_03001D48
	strb r6, [r4, #5]
	strb r6, [r4, #4]
	ldr r0, _08004480 @ =gUnk_03002540
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	bl rfu_LMAN_disconnect
	movs r0, #0x33
	strh r0, [r4, #0x1e]
_08004454:
	ldr r5, _0800447C @ =gUnk_03001D48
	ldrb r0, [r5, #0x10]
	lsls r0, r0, #1
	adds r1, r5, #0
	adds r1, #0x34
	adds r0, r0, r1
	movs r1, #0
	movs r4, #0
	strh r4, [r0]
	adds r0, r5, #0
	adds r0, #0x30
	strb r1, [r0]
	strb r1, [r5, #0xa]
	ldrb r0, [r5, #0x1e]
	movs r1, #1
	bl rfu_LMAN_occureCallback
	strh r4, [r5, #0x1e]
	b _08004536
	.align 2, 0
_0800447C: .4byte gUnk_03001D48
_08004480: .4byte gUnk_03002540
_08004484:
	cmp r6, #0
	bne _08004536
	ldr r5, _080044AC @ =gUnk_03001D48
	ldrb r1, [r5, #5]
	adds r0, r1, #0
	cmp r0, #0x16
	bne _080044B0
	ldrb r0, [r5, #0x11]
	strb r0, [r5, #4]
	ldrb r0, [r5, #0x12]
	strb r0, [r5, #5]
	ldrb r0, [r5, #2]
	movs r0, #1
	strb r0, [r5, #2]
	movs r0, #0x41
_080044A2:
	movs r1, #0
	bl rfu_LMAN_occureCallback
	b _08004536
	.align 2, 0
_080044AC: .4byte gUnk_03001D48
_080044B0:
	cmp r0, #0xf
	bne _08004536
	strb r1, [r5, #4]
	ldrb r0, [r5, #2]
	movs r4, #1
	strb r4, [r5, #2]
	movs r0, #0x41
	movs r1, #0
	bl rfu_LMAN_occureCallback
	adds r1, r5, #0
	adds r1, #0x24
	ldrb r0, [r5, #0x10]
	lsls r4, r0
	ldrb r0, [r1]
	orrs r4, r0
	strb r4, [r1]
	ldrb r0, [r5, #0x10]
	lsls r0, r0, #1
	adds r1, #4
	adds r0, r0, r1
	ldrh r1, [r5, #0x26]
	movs r7, #0
	strh r1, [r0]
	ldrb r1, [r5, #0x10]
	movs r0, #4
	bl rfu_clearSlot
	mov r4, sp
	ldrb r0, [r5, #0x10]
	movs r1, #0xe
	bl rfu_NI_CHILD_setSendGameName
	strb r0, [r4]
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08004536
	strb r7, [r5, #5]
	strb r7, [r5, #4]
	bl rfu_LMAN_managerChangeAgbClockMaster
	ldr r0, _08004520 @ =gUnk_03002540
	ldr r0, [r0]
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	orrs r0, r1
	bl rfu_LMAN_disconnect
	mov r0, sp
	ldrb r0, [r0]
	strh r0, [r5, #0x14]
	movs r0, #0x25
	movs r1, #1
	bl rfu_LMAN_occureCallback
	b _08004536
	.align 2, 0
_08004520: .4byte gUnk_03002540
_08004524:
	cmp r6, #0
	bne _08004536
	ldr r0, _08004540 @ =gUnk_03001D48
	strb r6, [r0, #5]
	strb r6, [r0, #4]
	movs r0, #0x42
	movs r1, #0
	bl rfu_LMAN_occureCallback
_08004536:
	ldr r1, _08004540 @ =gUnk_03001D48
	movs r0, #1
	strb r0, [r1, #0xe]
	b _08004592
	.align 2, 0
_08004540: .4byte gUnk_03001D48
_08004544:
	cmp r6, #3
	bne _08004592
	ldrb r0, [r7, #0xf]
	cmp r0, #0
	beq _08004592
	mov r3, r8
	cmp r3, #0x24
	beq _0800455C
	cmp r3, #0x26
	beq _0800455C
	cmp r3, #0x27
	bne _08004592
_0800455C:
	bl rfu_REQ_RFUStatus
	bl rfu_waitREQComplete
	mov r0, sp
	bl rfu_getRFUStatus
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	bne _08004592
	ldr r4, _080045A8 @ =gUnk_03002540
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0
	bne _08004592
	bl rfu_getSTWIRecvBuffer
	ldr r1, [r4]
	ldrb r1, [r1, #2]
	strb r1, [r0, #4]
	movs r1, #1
	strb r1, [r0, #5]
	movs r0, #0x29
	bl rfu_LMAN_linkWatcher
	movs r6, #0
_08004592:
	mov r4, r8
	cmp r4, #0x26
	bne _0800459A
	b _080046AE
_0800459A:
	cmp r4, #0x26
	bgt _080045AC
	cmp r4, #0x10
	bne _080045A4
	b _080046CC
_080045A4:
	b _080046EA
	.align 2, 0
_080045A8: .4byte gUnk_03002540
_080045AC:
	mov r0, r8
	cmp r0, #0x30
	beq _080045BA
	cmp r0, #0x3d
	bne _080045B8
	b _080046CC
_080045B8:
	b _080046EA
_080045BA:
	cmp r6, #0
	beq _080045C0
	b _080046EE
_080045C0:
	bl rfu_getSTWIRecvBuffer
	ldr r4, _08004670 @ =gUnk_03001D48
	ldrb r0, [r0, #8]
	strh r0, [r4, #0x14]
	bl rfu_LMAN_reflectCommunicationStatus
	adds r2, r4, #0
	adds r2, #0x30
	ldrb r1, [r2]
	cmp r1, #0
	beq _08004616
	ldrb r0, [r4, #0x14]
	adds r3, r1, #0
	bics r3, r0
	adds r0, r3, #0
	strb r0, [r2]
	movs r3, #0
	adds r7, r4, #0
	adds r1, r7, #0
	movs r5, #1
	adds r4, r1, #0
	adds r4, #0x34
	movs r2, #0
_080045F0:
	ldrh r0, [r1, #0x14]
	asrs r0, r3
	ands r0, r5
	cmp r0, #0
	beq _08004600
	lsls r0, r3, #1
	adds r0, r0, r4
	strh r2, [r0]
_08004600:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _080045F0
	ldr r1, _08004670 @ =gUnk_03001D48
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _08004616
	strb r0, [r1, #5]
	strb r0, [r1, #4]
_08004616:
	mov r3, sp
	ldr r1, _08004670 @ =gUnk_03001D48
	ldrb r2, [r1]
	ldrb r0, [r1, #0x14]
	ands r0, r2
	strb r0, [r3]
	movs r3, #0
	adds r7, r1, #0
	ldr r2, _08004674 @ =gUnk_03002540
	mov r1, sp
	movs r5, #1
	adds r4, r7, #0
_0800462E:
	ldrb r0, [r1]
	asrs r0, r3
	ands r0, r5
	cmp r0, #0
	beq _08004642
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _08004642
	subs r0, #1
	strb r0, [r7, #1]
_08004642:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _0800462E
	ldrb r1, [r7, #0x14]
	ldrb r0, [r7]
	bics r0, r1
	strb r0, [r7]
	ldrb r1, [r7, #7]
	cmp r1, #0
	beq _0800468C
	ldr r0, [r2]
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _0800469E
	cmp r1, #8
	bne _08004678
	ldrh r0, [r7, #0x1c]
	strh r0, [r7, #0x1a]
	movs r0, #6
	strb r0, [r7, #7]
	b _0800468A
	.align 2, 0
_08004670: .4byte gUnk_03001D48
_08004674: .4byte gUnk_03002540
_08004678:
	ldrb r0, [r7, #4]
	subs r0, #6
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0800468C
	movs r0, #1
	strb r0, [r7, #7]
	movs r0, #5
_0800468A:
	strb r0, [r7, #4]
_0800468C:
	ldr r0, [r2]
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _0800469E
	ldrb r0, [r7, #4]
	cmp r0, #0
	bne _0800469E
	movs r0, #0xff
	strb r0, [r7, #6]
_0800469E:
	ldrb r0, [r7, #0xe]
	cmp r0, #0
	bne _080046EA
	movs r0, #0x40
	movs r1, #1
	bl rfu_LMAN_occureCallback
	b _080046EA
_080046AE:
	bl rfu_LMAN_CHILD_checkSendChildName2
	ldr r0, _080046C8 @ =gUnk_03002540
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _080046EA
	movs r0, #0x50
	movs r1, #0
	bl rfu_LMAN_occureCallback
	b _080046EA
	.align 2, 0
_080046C8: .4byte gUnk_03002540
_080046CC:
	cmp r6, #0
	bne _080046EE
	ldr r0, _08004718 @ =gUnk_03001D48
	strb r6, [r0, #0xd]
	strb r6, [r0, #1]
	strb r6, [r0]
	movs r1, #0xff
	strb r1, [r0, #6]
	bl rfu_LMAN_managerChangeAgbClockMaster
	mov r4, r8
	cmp r4, #0x3d
	bne _080046EA
	bl rfu_LMAN_endManager
_080046EA:
	cmp r6, #0
	beq _0800473E
_080046EE:
	ldr r7, _08004718 @ =gUnk_03001D48
	mov r0, r8
	cmp r0, #0x1c
	bne _08004720
	cmp r6, #0
	beq _08004720
	ldrb r0, [r7, #7]
	cmp r0, #4
	bne _08004720
	ldr r2, _0800471C @ =gUnk_03002540
	ldr r1, [r2]
	movs r0, #1
	strb r0, [r1]
	ldr r1, [r2]
	movs r0, #0xf
	strb r0, [r1, #2]
	bl rfu_LMAN_disconnect
	bl rfu_waitREQComplete
	b _08004750
	.align 2, 0
_08004718: .4byte gUnk_03001D48
_0800471C: .4byte gUnk_03002540
_08004720:
	movs r1, #0
	mov r3, r8
	strh r3, [r7, #0x14]
	strh r6, [r7, #0x16]
	ldrb r0, [r7, #0xe]
	cmp r0, #0
	beq _08004732
	strb r1, [r7, #5]
	strb r1, [r7, #4]
_08004732:
	movs r0, #0xf0
	movs r1, #2
	bl rfu_LMAN_occureCallback
	bl rfu_LMAN_managerChangeAgbClockMaster
_0800473E:
	mov r4, r8
	cmp r4, #0xff
	bne _08004750
	movs r0, #0xf2
	movs r1, #0
	bl rfu_LMAN_occureCallback
	bl rfu_LMAN_managerChangeAgbClockMaster
_08004750:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start rfu_LMAN_MSC_callback
rfu_LMAN_MSC_callback: @ 0x0800475C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	ldr r4, _08004790 @ =gUnk_03001D48
	ldrb r7, [r4, #0xe]
	movs r0, #0
	strb r0, [r4, #0xe]
	movs r0, #1
	strb r0, [r4, #0xf]
	ldr r0, _08004794 @ =gUnk_03002540
	ldr r0, [r0]
	ldrb r5, [r0]
	cmp r5, #0
	bne _08004798
	adds r0, r6, #0
	bl rfu_LMAN_linkWatcher
	ldrb r0, [r4, #2]
	cmp r0, #1
	beq _080047B0
	bl rfu_LMAN_managerChangeAgbClockMaster
	strb r5, [r4, #0xf]
	strb r7, [r4, #0xe]
	b _080047D4
	.align 2, 0
_08004790: .4byte gUnk_03001D48
_08004794: .4byte gUnk_03002540
_08004798:
	mov r0, sp
	bl rfu_UNI_PARENT_getDRAC_ACK
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080047B0
	mov r1, sp
	ldrb r0, [r4, #3]
	ldrb r1, [r1]
	orrs r0, r1
	ldrb r1, [r4, #3]
	strb r0, [r4, #3]
_080047B0:
	ldr r4, _080047DC @ =gUnk_03001D48
	ldr r1, [r4, #0x44]
	cmp r1, #0
	beq _080047CC
	adds r0, r6, #0
	bl _call_via_r1
	bl rfu_waitREQComplete
	ldrb r0, [r4, #2]
	cmp r0, #2
	bne _080047CC
	bl rfu_LMAN_managerChangeAgbClockMaster
_080047CC:
	ldr r1, _080047DC @ =gUnk_03001D48
	movs r0, #0
	strb r0, [r1, #0xf]
	strb r7, [r1, #0xe]
_080047D4:
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080047DC: .4byte gUnk_03001D48

	thumb_func_start rfu_LMAN_PARENT_checkRecvChildName
rfu_LMAN_PARENT_checkRecvChildName: @ 0x080047E0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	ldr r1, _08004864 @ =gUnk_03001D48
	ldrb r0, [r1, #4]
	subs r0, #5
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r3, r1, #0
	cmp r0, #3
	bls _080047FE
	b _080049F2
_080047FE:
	ldr r0, _08004868 @ =gUnk_03002540
	ldr r2, [r0]
	ldrb r1, [r2, #2]
	ldrb r0, [r3, #0xc]
	adds r4, r1, #0
	eors r4, r0
	ands r4, r1
	ldrb r0, [r2, #7]
	bics r4, r0
	mov r8, r4
	strb r1, [r3, #0xc]
	cmp r4, #0
	beq _08004826
	strh r4, [r3, #0x14]
	movs r0, #0x10
	movs r1, #1
	str r3, [sp, #4]
	bl rfu_LMAN_occureCallback
	ldr r3, [sp, #4]
_08004826:
	movs r0, #0
	str r0, [sp]
	movs r6, #0
	adds r7, r3, #0
	movs r1, #0x24
	adds r1, r1, r3
	mov sb, r1
_08004834:
	movs r0, #0x80
	lsls r0, r0, #0x11
	lsls r0, r6
	lsrs r4, r0, #0x18
	movs r5, #0
	mov r0, r8
	ands r0, r4
	cmp r0, #0
	beq _08004886
	lsls r1, r6, #1
	adds r0, r7, #0
	adds r0, #0x28
	adds r1, r1, r0
	ldrh r0, [r7, #0x26]
	strh r0, [r1]
	mov r2, sb
	ldrb r1, [r2]
	adds r0, r4, #0
	orrs r0, r1
	strb r0, [r2]
	adds r6, #1
	mov sl, r6
	b _0800493C
	.align 2, 0
_08004864: .4byte gUnk_03001D48
_08004868: .4byte gUnk_03002540
_0800486C:
	ldrb r1, [r7]
	adds r0, r4, #0
	orrs r0, r1
	strb r0, [r7]
	ldrb r0, [r7, #1]
	adds r0, #1
	strb r0, [r7, #1]
	ldr r0, [sp]
	orrs r0, r4
	str r0, [sp]
	movs r0, #1
	orrs r5, r0
	b _080048D0
_08004886:
	mov r1, sb
	ldrb r0, [r1]
	ands r0, r4
	adds r2, r6, #1
	mov sl, r2
	cmp r0, #0
	beq _0800493C
	ldr r0, _080048E0 @ =gUnk_03002530
	lsls r1, r6, #2
	adds r1, r1, r0
	ldr r1, [r1]
	ldrh r0, [r1, #0x34]
	cmp r0, #0x46
	bne _080048EC
	adds r0, r1, #0
	adds r0, #0x61
	ldrb r0, [r0]
	cmp r0, #1
	bne _08004904
	movs r5, #2
	ldr r3, [r3, #0x20]
	ldrh r2, [r3]
	ldr r0, _080048E4 @ =0x0000FFFF
	cmp r2, r0
	beq _080048D0
	ldr r0, _080048E8 @ =gUnk_03002540
	ldr r0, [r0]
	lsls r1, r6, #5
	adds r0, r0, r1
	ldrh r0, [r0, #0x18]
	ldr r1, _080048E4 @ =0x0000FFFF
_080048C4:
	cmp r0, r2
	beq _0800486C
	adds r3, #2
	ldrh r2, [r3]
	cmp r2, r1
	bne _080048C4
_080048D0:
	movs r0, #1
	ands r0, r5
	cmp r0, #0
	bne _08004904
	movs r0, #4
	orrs r5, r0
	b _08004904
	.align 2, 0
_080048E0: .4byte gUnk_03002530
_080048E4: .4byte 0x0000FFFF
_080048E8: .4byte gUnk_03002540
_080048EC:
	lsls r1, r6, #1
	adds r0, r3, #0
	adds r0, #0x28
	adds r1, r1, r0
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	ldr r1, _080049C0 @ =0x0000FFFF
	ands r0, r1
	cmp r0, #0
	bne _08004904
	movs r5, #6
_08004904:
	movs r0, #2
	ands r0, r5
	cmp r0, #0
	beq _0800492A
	mov r2, sb
	ldrb r0, [r2]
	bics r0, r4
	movs r2, #0
	mov r1, sb
	strb r0, [r1]
	lsls r0, r6, #1
	adds r1, r7, #0
	adds r1, #0x28
	adds r0, r0, r1
	strh r2, [r0]
	movs r0, #8
	adds r1, r6, #0
	bl rfu_clearSlot
_0800492A:
	movs r0, #4
	ands r5, r0
	ldr r3, _080049C4 @ =gUnk_03001D48
	cmp r5, #0
	beq _0800493C
	ldrb r1, [r7, #0xd]
	adds r0, r4, #0
	orrs r0, r1
	strb r0, [r7, #0xd]
_0800493C:
	mov r2, sl
	lsls r0, r2, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bhi _08004948
	b _08004834
_08004948:
	ldr r4, [sp]
	cmp r4, #0
	beq _0800495A
	ldr r0, _080049C4 @ =gUnk_03001D48
	strh r4, [r0, #0x14]
	movs r0, #0x11
	movs r1, #1
	bl rfu_LMAN_occureCallback
_0800495A:
	ldr r1, _080049C4 @ =gUnk_03001D48
	ldrb r0, [r1, #0xd]
	cmp r0, #0
	beq _08004996
	movs r5, #1
	ldr r0, _080049C8 @ =gUnk_03002540
	ldr r0, [r0]
	ldrb r0, [r0, #6]
	cmp r0, #0
	beq _0800497A
	ldrb r0, [r1, #3]
	ldrb r1, [r1]
	ands r0, r1
	cmp r0, r1
	beq _0800497A
	movs r5, #0
_0800497A:
	cmp r5, #0
	beq _08004996
	ldr r4, _080049C4 @ =gUnk_03001D48
	ldrb r0, [r4, #0xd]
	bl rfu_LMAN_disconnect
	ldrb r0, [r4, #0xd]
	movs r1, #0
	strh r0, [r4, #0x14]
	strb r1, [r4, #0xd]
	movs r0, #0x12
	movs r1, #1
	bl rfu_LMAN_occureCallback
_08004996:
	ldr r0, _080049C4 @ =gUnk_03001D48
	adds r1, r0, #0
	adds r1, #0x24
	ldrb r1, [r1]
	adds r3, r0, #0
	cmp r1, #0
	bne _080049F2
	ldrb r0, [r3, #4]
	cmp r0, #8
	bne _080049F2
	ldrb r0, [r3, #7]
	cmp r0, #0
	bne _080049CC
	strb r0, [r3, #5]
	strb r0, [r3, #4]
	movs r0, #0x14
	movs r1, #0
	bl rfu_LMAN_occureCallback
	b _080049F2
	.align 2, 0
_080049C0: .4byte 0x0000FFFF
_080049C4: .4byte gUnk_03001D48
_080049C8: .4byte gUnk_03002540
_080049CC:
	cmp r0, #2
	bne _080049D8
	movs r0, #3
	strb r0, [r3, #7]
	movs r0, #9
	b _080049DE
_080049D8:
	movs r0, #1
	strb r0, [r3, #7]
	movs r0, #5
_080049DE:
	strb r0, [r3, #4]
	ldrb r0, [r3]
	cmp r0, #0
	beq _080049F2
	movs r0, #0
	strh r0, [r3, #0x1a]
	movs r0, #8
	strb r0, [r3, #7]
	movs r0, #5
	strb r0, [r3, #4]
_080049F2:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start rfu_LMAN_CHILD_checkSendChildName
rfu_LMAN_CHILD_checkSendChildName: @ 0x08004A04
	push {r4, r5, r6, lr}
	ldr r1, _08004AA8 @ =0x04000208
	ldrh r0, [r1]
	adds r6, r0, #0
	movs r0, #0
	strh r0, [r1]
	ldr r4, _08004AAC @ =gUnk_03001D48
	ldrb r0, [r4, #4]
	cmp r0, #0xf
	bne _08004A68
	ldrb r1, [r4, #0x10]
	lsls r1, r1, #1
	adds r5, r4, #0
	adds r5, #0x28
	adds r1, r1, r5
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	beq _08004A3E
	ldr r1, _08004AB0 @ =gUnk_03002530
	ldrb r0, [r4, #0x10]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, #0x27
	bne _08004A68
_08004A3E:
	bl rfu_LMAN_requestChangeAgbClockMaster
	movs r0, #0x18
	strb r0, [r4, #4]
	ldrb r1, [r4, #0x10]
	movs r0, #4
	bl rfu_clearSlot
	adds r2, r4, #0
	adds r2, #0x24
	movs r1, #1
	ldrb r0, [r4, #0x10]
	lsls r1, r0
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	ldrb r0, [r4, #0x10]
	lsls r0, r0, #1
	adds r0, r0, r5
	movs r1, #0
	strh r1, [r0]
_08004A68:
	ldr r0, _08004AA8 @ =0x04000208
	strh r6, [r0]
	ldr r5, _08004AAC @ =gUnk_03001D48
	ldrb r0, [r5, #4]
	cmp r0, #0x18
	bne _08004AA2
	ldrb r0, [r5, #2]
	cmp r0, #1
	bne _08004A7E
	bl rfu_LMAN_requestChangeAgbClockMaster
_08004A7E:
	ldrb r0, [r5, #2]
	adds r4, r0, #0
	cmp r4, #0
	bne _08004AA2
	strb r4, [r5, #5]
	strb r4, [r5, #4]
	ldr r0, _08004AB4 @ =gUnk_03002540
	ldr r0, [r0]
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	orrs r0, r1
	bl rfu_LMAN_disconnect
	strh r4, [r5, #0x14]
	movs r0, #0x25
	movs r1, #1
	bl rfu_LMAN_occureCallback
_08004AA2:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08004AA8: .4byte 0x04000208
_08004AAC: .4byte gUnk_03001D48
_08004AB0: .4byte gUnk_03002530
_08004AB4: .4byte gUnk_03002540

	thumb_func_start rfu_LMAN_CHILD_checkSendChildName2
rfu_LMAN_CHILD_checkSendChildName2: @ 0x08004AB8
	push {r4, r5, lr}
	ldr r5, _08004B0C @ =gUnk_03001D48
	ldrb r0, [r5, #4]
	cmp r0, #0xf
	bne _08004B04
	ldr r1, _08004B10 @ =gUnk_03002530
	ldrb r2, [r5, #0x10]
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, #0x26
	bne _08004B04
	movs r4, #0
	strb r4, [r5, #5]
	strb r4, [r5, #4]
	movs r0, #4
	adds r1, r2, #0
	bl rfu_clearSlot
	adds r2, r5, #0
	adds r2, #0x24
	movs r1, #1
	ldrb r0, [r5, #0x10]
	lsls r1, r0
	ldrb r0, [r2]
	bics r0, r1
	strb r0, [r2]
	ldrb r0, [r5, #0x10]
	lsls r0, r0, #1
	adds r1, r5, #0
	adds r1, #0x28
	adds r0, r0, r1
	strh r4, [r0]
	movs r0, #0x24
	movs r1, #0
	bl rfu_LMAN_occureCallback
_08004B04:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08004B0C: .4byte gUnk_03001D48
_08004B10: .4byte gUnk_03002530

	thumb_func_start rfu_LMAN_CHILD_linkRecoveryProcess
rfu_LMAN_CHILD_linkRecoveryProcess: @ 0x08004B14
	push {lr}
	ldr r1, _08004B3C @ =gUnk_03001D48
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _08004B38
	ldrb r0, [r1, #0xa]
	cmp r0, #1
	bne _08004B38
	ldrb r0, [r1, #4]
	strb r0, [r1, #0x11]
	ldrb r0, [r1, #5]
	strb r0, [r1, #0x12]
	movs r0, #0x10
	strb r0, [r1, #4]
	movs r0, #0x11
	strb r0, [r1, #5]
	movs r0, #2
	strb r0, [r1, #0xa]
_08004B38:
	pop {r0}
	bx r0
	.align 2, 0
_08004B3C: .4byte gUnk_03001D48

	thumb_func_start rfu_LMAN_CHILD_checkEnableParentCandidate
rfu_LMAN_CHILD_checkEnableParentCandidate: @ 0x08004B40
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r6, #0
	movs r5, #0
	ldr r1, _08004BAC @ =gUnk_03002540
	ldr r0, [r1]
	ldrb r0, [r0, #8]
	cmp r6, r0
	bhs _08004B9C
	mov r8, r0
	ldr r0, _08004BB0 @ =gUnk_03001D48
	mov sl, r0
	mov sb, r1
_08004B60:
	mov r1, sl
	ldr r3, [r1, #0x20]
	ldrh r2, [r3]
	adds r0, r5, #1
	mov ip, r0
	ldr r1, _08004BB4 @ =0x0000FFFF
	cmp r2, r1
	beq _08004B92
	mov r1, sb
	ldr r0, [r1]
	lsls r1, r5, #5
	adds r0, r0, r1
	ldrh r4, [r0, #0x18]
	ldr r7, _08004BB4 @ =0x0000FFFF
	movs r1, #1
	lsls r1, r5
_08004B80:
	cmp r4, r2
	bne _08004B8A
	orrs r6, r1
	lsls r0, r6, #0x18
	lsrs r6, r0, #0x18
_08004B8A:
	adds r3, #2
	ldrh r2, [r3]
	cmp r2, r7
	bne _08004B80
_08004B92:
	mov r1, ip
	lsls r0, r1, #0x18
	lsrs r5, r0, #0x18
	cmp r5, r8
	blo _08004B60
_08004B9C:
	adds r0, r6, #0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08004BAC: .4byte gUnk_03002540
_08004BB0: .4byte gUnk_03001D48
_08004BB4: .4byte 0x0000FFFF

	thumb_func_start rfu_LMAN_occureCallback
rfu_LMAN_occureCallback: @ 0x08004BB8
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r4, _08004BDC @ =gUnk_03001D48
	ldr r2, [r4, #0x40]
	cmp r2, #0
	beq _08004BCE
	bl _call_via_r2
_08004BCE:
	movs r0, #0
	strh r0, [r4, #0x16]
	strh r0, [r4, #0x14]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08004BDC: .4byte gUnk_03001D48

	thumb_func_start rfu_LMAN_disconnect
rfu_LMAN_disconnect: @ 0x08004BE0
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r4, _08004C00 @ =gUnk_03001D48
	ldrb r5, [r4, #0xe]
	movs r1, #1
	strb r1, [r4, #0xe]
	bl rfu_REQ_disconnect
	bl rfu_waitREQComplete
	strb r5, [r4, #0xe]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08004C00: .4byte gUnk_03001D48

	thumb_func_start rfu_LMAN_reflectCommunicationStatus
rfu_LMAN_reflectCommunicationStatus: @ 0x08004C04
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, _08004CD0 @ =gUnk_03002540
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	cmp r0, #0
	beq _08004C4C
	movs r4, #0
_08004C16:
	ldr r1, _08004CD4 @ =gUnk_03002530
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r0, [r2]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r1, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08004C42
	ldrb r1, [r2, #0x1a]
	adds r0, r5, #0
	ands r0, r1
	cmp r0, #0
	beq _08004C42
	adds r2, r1, #0
	bics r2, r5
	movs r0, #0x20
	adds r1, r4, #0
	bl rfu_changeSendTarget
_08004C42:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08004C16
_08004C4C:
	ldr r0, _08004CD0 @ =gUnk_03002540
	ldr r0, [r0]
	ldrb r0, [r0, #5]
	cmp r0, #0
	beq _08004C8A
	movs r4, #0
_08004C58:
	ldr r1, _08004CD4 @ =gUnk_03002530
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r0, [r2, #0x34]
	movs r3, #0x80
	lsls r3, r3, #8
	adds r1, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _08004C80
	adds r0, r2, #0
	adds r0, #0x4e
	ldrb r0, [r0]
	ands r0, r5
	cmp r0, #0
	beq _08004C80
	adds r0, r4, #0
	bl rfu_NI_stopReceivingData
_08004C80:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08004C58
_08004C8A:
	ldr r0, _08004CD0 @ =gUnk_03002540
	ldr r3, [r0]
	ldrb r2, [r3, #6]
	cmp r2, #0
	beq _08004CC8
	mvns r1, r5
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r3, #6]
	movs r4, #0
	ldr r7, _08004CD8 @ =gUnk_03002510
	ldr r6, _08004CDC @ =0x00008024
_08004CA2:
	lsls r0, r4, #2
	adds r0, r0, r7
	ldr r2, [r0]
	ldrh r0, [r2]
	cmp r0, r6
	bne _08004CBE
	ldrb r3, [r2, #3]
	adds r0, r5, #0
	ands r0, r3
	cmp r0, #0
	beq _08004CBE
	adds r0, r1, #0
	ands r0, r3
	strb r0, [r2, #3]
_08004CBE:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08004CA2
_08004CC8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004CD0: .4byte gUnk_03002540
_08004CD4: .4byte gUnk_03002530
_08004CD8: .4byte gUnk_03002510
_08004CDC: .4byte 0x00008024

	thumb_func_start rfu_LMAN_checkNICommunicateStatus
rfu_LMAN_checkNICommunicateStatus: @ 0x08004CE0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _08004DCC @ =gUnk_03001D48
	ldrh r0, [r0, #0x18]
	cmp r0, #0
	beq _08004DBC
	ldr r0, _08004DD0 @ =gUnk_03002540
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	cmp r0, #0
	beq _08004D80
	movs r6, #0
_08004D00:
	ldr r3, _08004DD4 @ =gUnk_03002530
	lsls r2, r6, #2
	adds r0, r2, r3
	ldr r0, [r0]
	ldrh r1, [r0]
	movs r4, #0x80
	lsls r4, r4, #8
	adds r0, r4, #0
	ands r1, r0
	adds r7, r2, #0
	adds r0, r6, #1
	mov sb, r0
	cmp r1, #0
	beq _08004D76
	movs r5, #0
	movs r4, #0
	movs r1, #1
	mov r8, r1
	mov sl, r3
_08004D26:
	adds r0, r7, r3
	ldr r0, [r0]
	ldrb r0, [r0, #0x1a]
	asrs r0, r4
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _08004D50
	lsls r0, r4, #2
	adds r0, r0, r3
	ldr r0, [r0]
	ldr r1, _08004DCC @ =gUnk_03001D48
	ldrh r0, [r0, #2]
	ldrh r1, [r1, #0x18]
	cmp r0, r1
	bls _08004D50
	mov r0, r8
	lsls r0, r4
	orrs r5, r0
	lsls r0, r5, #0x18
	lsrs r5, r0, #0x18
_08004D50:
	cmp r5, #0
	beq _08004D6C
	mov r1, sl
	adds r0, r7, r1
	ldr r0, [r0]
	ldrb r0, [r0, #0x1a]
	adds r2, r5, #0
	eors r2, r0
	movs r0, #0x20
	adds r1, r6, #0
	str r3, [sp]
	bl rfu_changeSendTarget
	ldr r3, [sp]
_08004D6C:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08004D26
_08004D76:
	mov r3, sb
	lsls r0, r3, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _08004D00
_08004D80:
	ldr r0, _08004DD0 @ =gUnk_03002540
	ldr r0, [r0]
	ldrb r0, [r0, #5]
	cmp r0, #0
	beq _08004DBC
	movs r6, #0
_08004D8C:
	ldr r1, _08004DD4 @ =gUnk_03002530
	lsls r0, r6, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r0, [r2, #0x34]
	movs r4, #0x80
	lsls r4, r4, #8
	adds r1, r4, #0
	ands r0, r1
	cmp r0, #0
	beq _08004DB2
	ldr r1, _08004DCC @ =gUnk_03001D48
	ldrh r0, [r2, #0x36]
	ldrh r1, [r1, #0x18]
	cmp r0, r1
	bls _08004DB2
	adds r0, r6, #0
	bl rfu_NI_stopReceivingData
_08004DB2:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _08004D8C
_08004DBC:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08004DCC: .4byte gUnk_03001D48
_08004DD0: .4byte gUnk_03002540
_08004DD4: .4byte gUnk_03002530

	thumb_func_start rfu_LMAN_setMSCCallback
rfu_LMAN_setMSCCallback: @ 0x08004DD8
	push {lr}
	ldr r1, _08004DE8 @ =gUnk_03001D48
	str r0, [r1, #0x44]
	ldr r0, _08004DEC @ =rfu_LMAN_MSC_callback
	bl rfu_setMSCCallback
	pop {r0}
	bx r0
	.align 2, 0
_08004DE8: .4byte gUnk_03001D48
_08004DEC: .4byte rfu_LMAN_MSC_callback

	thumb_func_start rfu_LMAN_setLMANCallback
rfu_LMAN_setLMANCallback: @ 0x08004DF0
	ldr r1, _08004DF8 @ =gUnk_03001D48
	str r0, [r1, #0x40]
	bx lr
	.align 2, 0
_08004DF8: .4byte gUnk_03001D48

	thumb_func_start rfu_LMAN_setLinkRecovery
rfu_LMAN_setLinkRecovery: @ 0x08004DFC
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	ldr r0, _08004E20 @ =gUnk_03001D48
	ldrb r1, [r0, #9]
	adds r3, r0, #0
	cmp r1, #0
	beq _08004E24
	cmp r4, #0
	bne _08004E24
	adds r0, #0x30
	ldrb r0, [r0]
	cmp r0, #0
	beq _08004E24
	movs r0, #5
	b _08004E34
	.align 2, 0
_08004E20: .4byte gUnk_03001D48
_08004E24:
	ldr r2, _08004E3C @ =0x04000208
	ldrh r1, [r2]
	movs r0, #0
	strh r0, [r2]
	strb r4, [r3, #9]
	strh r5, [r3, #0x32]
	strh r1, [r2]
	movs r0, #0
_08004E34:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_08004E3C: .4byte 0x04000208

	thumb_func_start rfu_LMAN_setNIFailCounterLimit
rfu_LMAN_setNIFailCounterLimit: @ 0x08004E40
	push {lr}
	lsls r0, r0, #0x10
	lsrs r2, r0, #0x10
	ldr r0, _08004E5C @ =gUnk_03002540
	ldr r0, [r0]
	ldrb r1, [r0, #4]
	ldrb r0, [r0, #5]
	orrs r0, r1
	cmp r0, #0
	bne _08004E64
	ldr r0, _08004E60 @ =gUnk_03001D48
	strh r2, [r0, #0x18]
	movs r0, #0
	b _08004E74
	.align 2, 0
_08004E5C: .4byte gUnk_03002540
_08004E60: .4byte gUnk_03001D48
_08004E64:
	ldr r1, _08004E78 @ =gUnk_03001D48
	movs r0, #6
	strh r0, [r1, #0x14]
	movs r0, #0xf3
	movs r1, #1
	bl rfu_LMAN_occureCallback
	movs r0, #6
_08004E74:
	pop {r1}
	bx r1
	.align 2, 0
_08004E78: .4byte gUnk_03001D48

	thumb_func_start rfu_LMAN_setFastSearchParent
rfu_LMAN_setFastSearchParent: @ 0x08004E7C
	push {lr}
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r3, r2, #0
	ldr r1, _08004EA4 @ =gUnk_03001D48
	ldrb r0, [r1, #4]
	subs r0, #9
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #2
	bhi _08004EA8
	movs r0, #7
	strh r0, [r1, #0x14]
	movs r0, #0xf3
	movs r1, #1
	bl rfu_LMAN_occureCallback
	movs r0, #7
	b _08004EB6
	.align 2, 0
_08004EA4: .4byte gUnk_03001D48
_08004EA8:
	cmp r2, #0
	beq _08004EB2
	movs r0, #1
	strb r0, [r1, #0xb]
	b _08004EB4
_08004EB2:
	strb r3, [r1, #0xb]
_08004EB4:
	movs r0, #0
_08004EB6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start rfu_LMAN_managerChangeAgbClockMaster
rfu_LMAN_managerChangeAgbClockMaster: @ 0x08004EBC
	push {lr}
	ldr r1, _08004ED8 @ =gUnk_03001D48
	ldrb r0, [r1, #2]
	cmp r0, #0
	beq _08004ED4
	ldrb r0, [r1, #2]
	movs r0, #0
	strb r0, [r1, #2]
	movs r0, #0x45
	movs r1, #0
	bl rfu_LMAN_occureCallback
_08004ED4:
	pop {r0}
	bx r0
	.align 2, 0
_08004ED8: .4byte gUnk_03001D48

	thumb_func_start rfu_LMAN_requestChangeAgbClockMaster
rfu_LMAN_requestChangeAgbClockMaster: @ 0x08004EDC
	push {lr}
	ldr r1, _08004EF0 @ =gUnk_03001D48
	ldrb r0, [r1, #2]
	cmp r0, #0
	bne _08004EF4
	movs r0, #0x45
	movs r1, #0
	bl rfu_LMAN_occureCallback
	b _08004F00
	.align 2, 0
_08004EF0: .4byte gUnk_03001D48
_08004EF4:
	ldrb r0, [r1, #2]
	cmp r0, #1
	bne _08004F00
	ldrb r0, [r1, #2]
	movs r0, #2
	strb r0, [r1, #2]
_08004F00:
	pop {r0}
	bx r0

	thumb_func_start rfu_LMAN_forceChangeSP
rfu_LMAN_forceChangeSP: @ 0x08004F04
	push {lr}
	ldr r0, _08004F24 @ =gUnk_03001D48
	ldrb r1, [r0, #7]
	adds r2, r0, #0
	cmp r1, #0
	beq _08004F6E
	ldrb r0, [r2, #4]
	subs r0, #5
	cmp r0, #6
	bhi _08004F6E
	lsls r0, r0, #2
	ldr r1, _08004F28 @ =_08004F2C
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08004F24: .4byte gUnk_03001D48
_08004F28: .4byte _08004F2C
_08004F2C: @ jump table
	.4byte _08004F48 @ case 0
	.4byte _08004F50 @ case 1
	.4byte _08004F5A @ case 2
	.4byte _08004F5A @ case 3
	.4byte _08004F60 @ case 4
	.4byte _08004F60 @ case 5
	.4byte _08004F66 @ case 6
_08004F48:
	movs r0, #3
	strb r0, [r2, #7]
	movs r0, #9
	b _08004F6C
_08004F50:
	movs r0, #2
	strb r0, [r2, #7]
	movs r0, #1
	strh r0, [r2, #0x1a]
	b _08004F6E
_08004F5A:
	movs r0, #2
	strb r0, [r2, #7]
	b _08004F6E
_08004F60:
	movs r0, #0x28
	strh r0, [r2, #0x1a]
	b _08004F6E
_08004F66:
	movs r0, #0x28
	strh r0, [r2, #0x1a]
	movs r0, #0xa
_08004F6C:
	strb r0, [r2, #4]
_08004F6E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08004F74
sub_08004F74: @ 0x08004F74
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r6, r0, #0
	ldr r0, _08004FF0 @ =gUnk_030023DC
	movs r4, #0
	strb r4, [r0]
	movs r0, #1
	bl sub_08005AB8
	movs r5, #0xf
	bl _call_via_r6
	movs r0, #0xf
	movs r1, #0x1f
	bl sub_08005A98
	ldr r0, _08004FF4 @ =gUnk_03001D94
	strb r4, [r0]
	ldr r0, _08004FF8 @ =gUnk_030023E0
	movs r1, #0
	strh r1, [r0]
	ldr r0, _08004FFC @ =gUnk_030023E2
	strh r1, [r0]
	ldr r0, _08005000 @ =gUnk_030023DF
	strb r1, [r0]
	ldr r0, _08005004 @ =gUnk_030023DD
	strb r1, [r0]
	ldr r0, _08005008 @ =gUnk_030023DE
	strb r1, [r0]
	adds r0, r6, #0
	bl sub_08005014
	ldr r1, _0800500C @ =gUnk_030023D8
	movs r0, #8
	str r0, [r1]
	movs r0, #0xa0
	str r0, [sp]
	movs r1, #0xe0
	lsls r1, r1, #0x13
	ldr r2, _08005010 @ =0x01000100
	mov r0, sp
	bl CpuFastSet
_08004FCA:
	adds r0, r5, #0
	movs r1, #0x1f
	bl sub_08005A98
	subs r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	bl _call_via_r6
	cmp r5, #0
	bne _08004FCA
	ldr r1, _08004FF0 @ =gUnk_030023DC
	movs r0, #1
	strb r0, [r1]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08004FF0: .4byte gUnk_030023DC
_08004FF4: .4byte gUnk_03001D94
_08004FF8: .4byte gUnk_030023E0
_08004FFC: .4byte gUnk_030023E2
_08005000: .4byte gUnk_030023DF
_08005004: .4byte gUnk_030023DD
_08005008: .4byte gUnk_030023DE
_0800500C: .4byte gUnk_030023D8
_08005010: .4byte 0x01000100

	thumb_func_start sub_08005014
sub_08005014: @ 0x08005014
	push {lr}
	bl _call_via_r0
	ldr r2, _08005048 @ =0x04000008
	ldr r1, _0800504C @ =gUnk_08016538
	ldrh r0, [r1]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #2]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #4]
	strh r0, [r2]
	adds r2, #2
	ldrh r0, [r1, #6]
	strh r0, [r2]
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xe0
	lsls r2, r2, #4
	adds r0, r2, #0
	strh r0, [r1]
	bl sub_0800534C
	pop {r0}
	bx r0
	.align 2, 0
_08005048: .4byte 0x04000008
_0800504C: .4byte gUnk_08016538

	thumb_func_start sub_08005050
sub_08005050: @ 0x08005050
	push {r4, r5, r6, r7, lr}
	sub sp, #0x30
	ldr r1, _080050A0 @ =gUnk_030023DF
	movs r0, #1
	strb r0, [r1]
	movs r6, #1
	bl sub_0800065C
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	bl sub_08000F2C
	bl sub_08005460
	movs r0, #0xa0
	str r0, [sp, #0x28]
	add r0, sp, #0x28
	movs r4, #0xe0
	lsls r4, r4, #0x13
	ldr r2, _080050A4 @ =0x01000100
	adds r1, r4, #0
	bl CpuFastSet
	movs r0, #0
	mov r1, sp
	bl sub_08005B4C
	adds r7, r4, #0
_08005088:
	bl sub_0800333C
	ldr r0, _080050A8 @ =gUnk_03000B52
	ldrh r0, [r0]
	cmp r0, #0x40
	bne _080050AC
	cmp r5, #1
	beq _080050D6
	cmp r5, #6
	beq _080050D6
	subs r0, r5, #1
	b _080050D2
	.align 2, 0
_080050A0: .4byte gUnk_030023DF
_080050A4: .4byte 0x01000100
_080050A8: .4byte gUnk_03000B52
_080050AC:
	cmp r0, #0x80
	bne _080050BC
	cmp r5, #5
	beq _080050D6
	cmp r5, #0xa
	beq _080050D6
	adds r0, r5, #1
	b _080050D2
_080050BC:
	cmp r0, #0x10
	bne _080050C8
	cmp r5, #5
	bhi _080050D6
	adds r0, r5, #5
	b _080050D2
_080050C8:
	cmp r0, #0x20
	bne _080050D6
	cmp r5, #5
	bls _080050D6
	subs r0, r5, #5
_080050D2:
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_080050D6:
	ldr r0, _08005128 @ =gUnk_03000B52
	ldrh r1, [r0]
	cmp r1, #1
	bne _08005130
	movs r6, #0
	adds r0, r5, #0
	bl sub_08000668
	bl sub_08000F2C
	bl sub_080054AC
	movs r0, #0xa0
	str r0, [sp, #0x2c]
	add r0, sp, #0x2c
	adds r1, r7, #0
	ldr r2, _0800512C @ =0x01000100
	bl CpuFastSet
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	add r4, sp, #0x18
	adds r1, r4, #0
	bl sub_08005C8C
	adds r0, r4, #0
	adds r1, r7, #0
	movs r2, #8
	bl CpuSet
_08005112:
	cmp r6, #0x78
	bls _0800511A
	bl sub_080034C0
_0800511A:
	bl sub_08000F2C
	adds r0, r6, #1
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	b _08005112
	.align 2, 0
_08005128: .4byte gUnk_03000B52
_0800512C: .4byte 0x01000100
_08005130:
	ldrh r0, [r0]
	cmp r0, #2
	bne _0800513A
	bl sub_080034C0
_0800513A:
	ldr r0, _08005168 @ =gUnk_08016510
	subs r1, r5, #1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldrb r0, [r1]
	ldrb r1, [r1, #1]
	mov r2, sp
	bl sub_08005BC0
	bl sub_08000F2C
	mov r0, sp
	movs r1, #0xe0
	lsls r1, r1, #0x13
	movs r2, #0xc
	bl CpuSet
	cmp r6, #0
	bne _08005088
	add sp, #0x30
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005168: .4byte gUnk_08016510

	thumb_func_start sub_0800516C
sub_0800516C: @ 0x0800516C
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	ldr r4, _080051C8 @ =gUnk_030023DC
	ldrb r0, [r4]
	cmp r0, #2
	beq _08005190
	cmp r0, #1
	bne _080051E0
	bl sub_08005AC4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080051E0
	movs r0, #2
	strb r0, [r4]
_08005190:
	ldr r0, _080051CC @ =gUnk_030023DF
	ldrb r5, [r0]
	cmp r5, #0
	bne _080051E0
	ldr r4, _080051D0 @ =gUnk_030023DD
	ldrb r0, [r4]
	cmp r0, #0
	bne _080051A8
	bl sub_0800538C
	movs r0, #1
	strb r0, [r4]
_080051A8:
	ldr r4, _080051D4 @ =gUnk_030023E0
	ldrh r0, [r4]
	cmp r0, r6
	bls _080051DC
	ldr r0, _080051D8 @ =gUnk_030023D8
	ldr r2, [r0]
	subs r2, r2, r7
	str r2, [r0]
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	movs r0, #3
	movs r1, #0
	bl sub_08005AFC
	strh r5, [r4]
	b _080051E0
	.align 2, 0
_080051C8: .4byte gUnk_030023DC
_080051CC: .4byte gUnk_030023DF
_080051D0: .4byte gUnk_030023DD
_080051D4: .4byte gUnk_030023E0
_080051D8: .4byte gUnk_030023D8
_080051DC:
	adds r0, #1
	strh r0, [r4]
_080051E0:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_080051E8
sub_080051E8: @ 0x080051E8
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r6, r1, #0x18
	ldr r4, _08005228 @ =gUnk_030023DC
	ldrb r0, [r4]
	cmp r0, #2
	beq _0800520E
	cmp r0, #1
	beq _08005200
	b _080052F6
_08005200:
	bl sub_08005AC4
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _080052F6
	movs r0, #2
	strb r0, [r4]
_0800520E:
	ldr r0, _0800522C @ =gUnk_030023DF
	ldrb r2, [r0]
	cmp r2, #0
	bne _080052F6
	ldr r7, _08005230 @ =gUnk_030023DD
	ldrb r0, [r7]
	cmp r0, #1
	beq _08005272
	cmp r0, #1
	bgt _08005234
	cmp r0, #0
	beq _0800523E
	b _080052F6
	.align 2, 0
_08005228: .4byte gUnk_030023DC
_0800522C: .4byte gUnk_030023DF
_08005230: .4byte gUnk_030023DD
_08005234:
	cmp r0, #2
	beq _0800529C
	cmp r0, #3
	beq _080052CE
	b _080052F6
_0800523E:
	ldr r5, _08005268 @ =gUnk_030023E2
	ldrh r0, [r5]
	adds r1, r6, #0
	bl __divsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x1f
	bl sub_08005A78
	ldrh r4, [r5]
	adds r0, r4, #0
	adds r1, r6, #0
	bl __divsi3
	cmp r0, #0xe
	ble _0800526C
	movs r0, #1
	strb r0, [r7]
	b _080052F6
	.align 2, 0
_08005268: .4byte gUnk_030023E2
_0800526C:
	adds r0, r4, #1
	strh r0, [r5]
	b _080052F6
_08005272:
	ldr r0, _08005280 @ =gUnk_030023DE
	ldrb r0, [r0]
	cmp r0, #0
	beq _08005284
	cmp r0, #1
	beq _0800528A
	b _0800528E
	.align 2, 0
_08005280: .4byte gUnk_030023DE
_08005284:
	bl sub_0800538C
	b _0800528E
_0800528A:
	bl sub_08005420
_0800528E:
	ldr r1, _08005298 @ =gUnk_030023DD
	movs r0, #2
	strb r0, [r1]
	b _080052F6
	.align 2, 0
_08005298: .4byte gUnk_030023DD
_0800529C:
	ldr r5, _080052C4 @ =gUnk_030023E2
	ldrh r0, [r5]
	adds r1, r6, #0
	bl __divsi3
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	movs r1, #0x1f
	bl sub_08005A78
	ldrh r4, [r5]
	adds r0, r4, #0
	adds r1, r6, #0
	bl __divsi3
	cmp r0, #0
	bgt _080052C8
	movs r0, #3
	strb r0, [r7]
	b _080052F6
	.align 2, 0
_080052C4: .4byte gUnk_030023E2
_080052C8:
	subs r0, r4, #1
	strh r0, [r5]
	b _080052F6
_080052CE:
	ldr r1, _080052FC @ =gUnk_030023E0
	ldrh r0, [r1]
	adds r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r5
	bls _080052F6
	movs r3, #0
	strh r2, [r1]
	strb r3, [r7]
	ldr r1, _08005300 @ =gUnk_030023DE
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080052F6
	strb r3, [r1]
_080052F6:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080052FC: .4byte gUnk_030023E0
_08005300: .4byte gUnk_030023DE

	thumb_func_start sub_08005304
sub_08005304: @ 0x08005304
	push {lr}
	ldr r0, _08005338 @ =gUnk_080516C0
	ldr r1, _0800533C @ =0x06004000
	movs r2, #0xa0
	lsls r2, r2, #5
	bl CpuFastSet
	ldr r0, _08005340 @ =gUnk_080626C0
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	bl CpuFastSet
	ldr r0, _08005344 @ =gUnk_080616C0
	ldr r1, _08005348 @ =0x06000800
	movs r2, #0x80
	lsls r2, r2, #3
	bl CpuSet
	movs r0, #0
	movs r1, #0x1f
	bl sub_08005A78
	pop {r0}
	bx r0
	.align 2, 0
_08005338: .4byte gUnk_080516C0
_0800533C: .4byte 0x06004000
_08005340: .4byte gUnk_080626C0
_08005344: .4byte gUnk_080616C0
_08005348: .4byte 0x06000800

	thumb_func_start sub_0800534C
sub_0800534C: @ 0x0800534C
	push {lr}
	ldr r0, _08005378 @ =gUnk_080596C0
	ldr r1, _0800537C @ =0x06004000
	movs r2, #0xfa
	lsls r2, r2, #2
	bl CpuFastSet
	ldr r0, _08005380 @ =gUnk_080628C0
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	bl CpuFastSet
	ldr r0, _08005384 @ =gUnk_08061EC0
	ldr r1, _08005388 @ =0x06000800
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuFastSet
	pop {r0}
	bx r0
	.align 2, 0
_08005378: .4byte gUnk_080596C0
_0800537C: .4byte 0x06004000
_08005380: .4byte gUnk_080628C0
_08005384: .4byte gUnk_08061EC0
_08005388: .4byte 0x06000800

	thumb_func_start sub_0800538C
sub_0800538C: @ 0x0800538C
	push {r4, lr}
	sub sp, #0x14
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xe0
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08005400 @ =gUnk_08062AC0
	ldr r1, _08005404 @ =0x06004000
	movs r2, #0x80
	lsls r2, r2, #6
	bl CpuFastSet
	ldr r0, _08005408 @ =gUnk_0808AAC0
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	bl CpuFastSet
	ldr r0, _0800540C @ =gUnk_0808BAC0
	ldr r1, _08005410 @ =0x06001000
	movs r4, #0x80
	lsls r4, r4, #2
	adds r2, r4, #0
	bl CpuFastSet
	ldr r0, _08005414 @ =gUnk_0808B2C0
	ldr r1, _08005418 @ =0x06001800
	adds r2, r4, #0
	bl CpuFastSet
	movs r0, #0xa0
	str r0, [sp, #0x10]
	add r0, sp, #0x10
	movs r4, #0xe0
	lsls r4, r4, #0x13
	ldr r2, _0800541C @ =0x01000100
	adds r1, r4, #0
	bl CpuFastSet
	bl sub_0800065C
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r1, sp
	bl sub_08005C04
	mov r0, sp
	adds r1, r4, #0
	movs r2, #8
	bl CpuSet
	add sp, #0x14
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08005400: .4byte gUnk_08062AC0
_08005404: .4byte 0x06004000
_08005408: .4byte gUnk_0808AAC0
_0800540C: .4byte gUnk_0808BAC0
_08005410: .4byte 0x06001000
_08005414: .4byte gUnk_0808B2C0
_08005418: .4byte 0x06001800
_0800541C: .4byte 0x01000100

	thumb_func_start sub_08005420
sub_08005420: @ 0x08005420
	push {lr}
	ldr r0, _0800544C @ =gUnk_08062AC0
	ldr r1, _08005450 @ =0x06004000
	movs r2, #0x80
	lsls r2, r2, #6
	bl CpuFastSet
	ldr r0, _08005454 @ =gUnk_0808AAC0
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	bl CpuFastSet
	ldr r0, _08005458 @ =gUnk_0808B2C0
	ldr r1, _0800545C @ =0x06000800
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuFastSet
	pop {r0}
	bx r0
	.align 2, 0
_0800544C: .4byte gUnk_08062AC0
_08005450: .4byte 0x06004000
_08005454: .4byte gUnk_0808AAC0
_08005458: .4byte gUnk_0808B2C0
_0800545C: .4byte 0x06000800

	thumb_func_start sub_08005460
sub_08005460: @ 0x08005460
	push {lr}
	movs r1, #0x80
	lsls r1, r1, #0x13
	movs r2, #0xe0
	lsls r2, r2, #5
	adds r0, r2, #0
	strh r0, [r1]
	ldr r0, _08005498 @ =gUnk_0806AAC0
	ldr r1, _0800549C @ =0x06004000
	movs r2, #0x80
	lsls r2, r2, #6
	bl CpuFastSet
	ldr r0, _080054A0 @ =gUnk_0808ACC0
	movs r1, #0xa0
	lsls r1, r1, #0x13
	movs r2, #0x80
	bl CpuFastSet
	ldr r0, _080054A4 @ =gUnk_0808C2C0
	ldr r1, _080054A8 @ =0x06001000
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuFastSet
	pop {r0}
	bx r0
	.align 2, 0
_08005498: .4byte gUnk_0806AAC0
_0800549C: .4byte 0x06004000
_080054A0: .4byte gUnk_0808ACC0
_080054A4: .4byte gUnk_0808C2C0
_080054A8: .4byte 0x06001000

	thumb_func_start sub_080054AC
sub_080054AC: @ 0x080054AC
	push {lr}
	ldr r0, _080054C0 @ =gUnk_0808CAC0
	ldr r1, _080054C4 @ =0x06001000
	movs r2, #0x80
	lsls r2, r2, #2
	bl CpuFastSet
	pop {r0}
	bx r0
	.align 2, 0
_080054C0: .4byte gUnk_0808CAC0
_080054C4: .4byte 0x06001000

	thumb_func_start sub_080054C8
sub_080054C8: @ 0x080054C8
	push {lr}
	ldr r0, _080054D8 @ =gUnk_03001D94
	ldrb r0, [r0]
	cmp r0, #0
	beq _080054DC
	bl sub_08005304
	b _080054E4
	.align 2, 0
_080054D8: .4byte gUnk_03001D94
_080054DC:
	movs r0, #0
	movs r1, #2
	bl sub_0800516C
_080054E4:
	pop {r0}
	bx r0

	thumb_func_start sub_080054E8
sub_080054E8: @ 0x080054E8
	push {lr}
	ldr r1, _080054F8 @ =gUnk_03001D94
	strb r0, [r1]
	movs r0, #0
	bl sub_08005AB8
	pop {r0}
	bx r0
	.align 2, 0
_080054F8: .4byte gUnk_03001D94

	thumb_func_start nullsub_9
nullsub_9: @ 0x080054FC
	bx lr
	.align 2, 0

	thumb_func_start sub_08005500
sub_08005500: @ 0x08005500
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xa0
	str r0, [sp, #0x80]
	str r1, [sp, #0x84]
	str r2, [sp, #0x88]
	str r3, [sp, #0x8c]
	ldr r0, [sp, #0xc0]
	ldr r2, [sp, #0xc4]
	ldr r1, [sp, #0xc8]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x90]
	lsls r2, r2, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x94]
	movs r5, #0
	movs r6, #0
	lsrs r2, r2, #0x17
	adds r3, r3, r2
	ldrb r0, [r3]
	cmp r0, #0
	bne _08005538
	b _08005662
_08005538:
	cmp r5, r1
	blo _0800553E
	b _08005662
_0800553E:
	ldrb r1, [r3]
	lsls r1, r1, #8
	ldrb r0, [r3, #1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	lsrs r0, r0, #0x18
	lsls r0, r0, #6
	ldr r3, _08005674 @ =0xFFFF6100
	adds r0, r0, r3
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08005678 @ =0x0000889E
	cmp r1, r0
	bls _08005566
	ldr r1, _0800567C @ =0xFFFFFDC0
	adds r0, r4, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_08005566:
	lsls r4, r4, #5
	mov r8, r4
	movs r7, #0
	ldr r3, [sp, #0x84]
	adds r3, r3, r6
	mov sb, r3
	adds r2, #2
	mov sl, r2
	ldr r0, [sp, #0x90]
	adds r6, r6, r0
	str r6, [sp, #0x98]
	adds r5, #1
	str r5, [sp, #0x9c]
_08005580:
	mov r1, r8
	adds r4, r1, r7
	ldr r2, [sp, #0x80]
	adds r4, r2, r4
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08005AE8
	adds r6, r0, #0
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08005AE8
	lsls r5, r7, #2
	mov r3, sp
	adds r1, r3, r5
	lsls r0, r0, #4
	orrs r0, r6
	strb r0, [r1]
	ldrb r1, [r4]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08005AE8
	adds r6, r0, #0
	ldrb r1, [r4]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08005AE8
	adds r1, r5, #1
	add r1, sp
	lsls r0, r0, #4
	orrs r0, r6
	strb r0, [r1]
	ldrb r1, [r4]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08005AE8
	adds r6, r0, #0
	ldrb r1, [r4]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08005AE8
	adds r1, r5, #2
	add r1, sp
	lsls r0, r0, #4
	orrs r0, r6
	strb r0, [r1]
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_08005AE8
	adds r6, r0, #0
	ldrb r1, [r4]
	movs r0, #1
	ands r0, r1
	bl sub_08005AE8
	adds r5, #3
	mov r2, sp
	adds r1, r2, r5
	lsls r0, r0, #4
	orrs r0, r6
	strb r0, [r1]
	adds r0, r7, #1
	lsls r0, r0, #0x10
	lsrs r7, r0, #0x10
	cmp r7, #0x1f
	bls _08005580
	ldr r0, [sp, #0xcc]
	mov r1, sp
	mov r2, sb
	ldr r3, [sp, #0x88]
	bl sub_08005820
	mov r3, sl
	lsls r0, r3, #0x10
	lsrs r2, r0, #0x10
	ldr r1, [sp, #0x98]
	lsls r0, r1, #0x10
	lsrs r6, r0, #0x10
	ldr r3, [sp, #0x9c]
	lsls r0, r3, #0x18
	lsrs r5, r0, #0x18
	ldr r0, [sp, #0x8c]
	adds r3, r0, r2
	ldrb r0, [r3]
	cmp r0, #0
	beq _08005662
	ldr r1, [sp, #0x94]
	cmp r5, r1
	bhs _08005662
	b _0800553E
_08005662:
	add sp, #0xa0
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005674: .4byte 0xFFFF6100
_08005678: .4byte 0x0000889E
_0800567C: .4byte 0xFFFFFDC0

	thumb_func_start sub_08005680
sub_08005680: @ 0x08005680
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xa4
	str r0, [sp, #0x80]
	str r1, [sp, #0x84]
	str r2, [sp, #0x88]
	str r3, [sp, #0x8c]
	ldr r0, [sp, #0xc4]
	ldr r3, [sp, #0xc8]
	ldr r1, [sp, #0xcc]
	ldr r2, [sp, #0xd4]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x90]
	lsls r3, r3, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	str r1, [sp, #0x94]
	lsls r2, r2, #0x18
	lsrs r7, r2, #0x18
	movs r5, #0
	movs r6, #0
	lsrs r3, r3, #0x17
	ldr r0, [sp, #0x8c]
	adds r2, r0, r3
	ldrb r0, [r2]
	cmp r0, #0
	bne _080056C0
	b _08005802
_080056C0:
	cmp r5, r1
	blo _080056C6
	b _08005802
_080056C6:
	ldrb r1, [r2]
	lsls r1, r1, #8
	ldrb r0, [r2, #1]
	adds r0, r0, r1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	lsrs r0, r0, #0x18
	lsls r0, r0, #6
	ldr r2, _08005814 @ =0xFFFF6100
	adds r0, r0, r2
	subs r0, r1, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	ldr r0, _08005818 @ =0x0000889E
	cmp r1, r0
	bls _080056EE
	ldr r1, _0800581C @ =0xFFFFFDC0
	adds r0, r4, r1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
_080056EE:
	lsls r4, r4, #5
	mov sb, r4
	movs r2, #0
	mov r8, r2
	ldr r0, [sp, #0x84]
	adds r0, r0, r6
	mov sl, r0
	adds r3, #2
	str r3, [sp, #0x9c]
	ldr r1, [sp, #0x90]
	adds r6, r6, r1
	str r6, [sp, #0x98]
	adds r5, #1
	str r5, [sp, #0xa0]
_0800570A:
	mov r4, sb
	add r4, r8
	ldr r2, [sp, #0x80]
	adds r4, r2, r4
	ldrb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r7, #0
	bl sub_08005AD0
	adds r6, r0, #0
	ldrb r1, [r4]
	movs r0, #0x40
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r7, #0
	bl sub_08005AD0
	mov r1, r8
	lsls r5, r1, #2
	mov r2, sp
	adds r1, r2, r5
	lsls r0, r0, #4
	orrs r0, r6
	strb r0, [r1]
	ldrb r1, [r4]
	movs r0, #0x20
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r7, #0
	bl sub_08005AD0
	adds r6, r0, #0
	ldrb r1, [r4]
	movs r0, #0x10
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r7, #0
	bl sub_08005AD0
	adds r1, r5, #1
	add r1, sp
	lsls r0, r0, #4
	orrs r0, r6
	strb r0, [r1]
	ldrb r1, [r4]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r7, #0
	bl sub_08005AD0
	adds r6, r0, #0
	ldrb r1, [r4]
	movs r0, #4
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r7, #0
	bl sub_08005AD0
	adds r1, r5, #2
	add r1, sp
	lsls r0, r0, #4
	orrs r0, r6
	strb r0, [r1]
	ldrb r1, [r4]
	movs r0, #2
	ands r0, r1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r7, #0
	bl sub_08005AD0
	adds r6, r0, #0
	ldrb r1, [r4]
	movs r0, #1
	ands r0, r1
	adds r1, r7, #0
	bl sub_08005AD0
	adds r5, #3
	mov r2, sp
	adds r1, r2, r5
	lsls r0, r0, #4
	orrs r0, r6
	strb r0, [r1]
	mov r0, r8
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r8, r0
	cmp r0, #0x1f
	bls _0800570A
	ldr r0, [sp, #0xd0]
	mov r1, sp
	mov r2, sl
	ldr r3, [sp, #0x88]
	bl sub_08005820
	ldr r1, [sp, #0x9c]
	lsls r0, r1, #0x10
	lsrs r3, r0, #0x10
	ldr r2, [sp, #0x98]
	lsls r0, r2, #0x10
	lsrs r6, r0, #0x10
	ldr r1, [sp, #0xa0]
	lsls r0, r1, #0x18
	lsrs r5, r0, #0x18
	ldr r0, [sp, #0x8c]
	adds r2, r0, r3
	ldrb r0, [r2]
	cmp r0, #0
	beq _08005802
	ldr r1, [sp, #0x94]
	cmp r5, r1
	bhs _08005802
	b _080056C6
_08005802:
	add sp, #0xa4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005814: .4byte 0xFFFF6100
_08005818: .4byte 0x0000889E
_0800581C: .4byte 0xFFFFFDC0

	thumb_func_start sub_08005820
sub_08005820: @ 0x08005820
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x10
	str r0, [sp]
	adds r5, r1, #0
	str r2, [sp, #0xc]
	str r3, [sp, #4]
	adds r0, r3, #0
	cmp r0, #0
	bge _0800583C
	adds r0, #7
_0800583C:
	asrs r2, r0, #3
	lsls r0, r2, #8
	ldr r1, [sp, #0xc]
	cmp r1, #0
	bge _08005848
	adds r1, #7
_08005848:
	asrs r1, r1, #3
	lsls r1, r1, #3
	adds r0, r0, r1
	lsls r0, r0, #2
	ldr r3, [sp]
	adds r3, r3, r0
	str r3, [sp]
	ldr r7, [sp, #0xc]
	subs r7, r7, r1
	str r7, [sp, #0xc]
	lsls r0, r2, #3
	ldr r1, [sp, #4]
	subs r1, r1, r0
	str r1, [sp, #4]
	lsls r0, r1, #2
	adds r4, r3, r0
	movs r0, #8
	subs r1, r0, r1
	cmp r1, #0
	ble _080058D0
	subs r0, r0, r7
	lsls r0, r0, #2
	mov r8, r0
	movs r0, #1
	rsbs r0, r0, #0
	adds r2, r7, #0
	lsls r2, r2, #2
	mov ip, r2
	mov sl, r0
	mov r3, sl
	lsls r3, r2
	mov sl, r3
	adds r6, r1, #0
	mov sb, r0
	mov r7, sb
	mov r0, r8
	lsrs r7, r0
	mov sb, r7
_08005894:
	ldr r2, [r5]
	ldr r3, [r5, #0x20]
	ldr r0, [r4]
	mov r1, sb
	ands r0, r1
	adds r7, r2, #0
	mov r1, ip
	lsls r7, r1
	orrs r0, r7
	str r0, [r4]
	mov r7, r8
	lsrs r2, r7
	adds r0, r3, #0
	lsls r0, r1
	orrs r2, r0
	str r2, [r4, #0x20]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _080058C6
	ldr r0, [r4, #0x40]
	mov r1, sl
	ands r0, r1
	lsrs r3, r7
	orrs r0, r3
	str r0, [r4, #0x40]
_080058C6:
	adds r4, #4
	adds r5, #4
	subs r6, #1
	cmp r6, #0
	bne _08005894
_080058D0:
	ldr r2, [sp]
	movs r3, #0x80
	lsls r3, r3, #3
	adds r4, r2, r3
	str r4, [sp]
	ldr r7, [sp, #4]
	cmp r7, #0
	ble _08005942
	movs r0, #8
	ldr r1, [sp, #0xc]
	subs r0, r0, r1
	lsls r0, r0, #2
	mov r8, r0
	movs r0, #1
	rsbs r0, r0, #0
	lsls r1, r1, #2
	mov ip, r1
	mov sl, r0
	mov r2, sl
	lsls r2, r1
	mov sl, r2
	adds r6, r7, #0
	mov sb, r0
	mov r3, sb
	mov r7, r8
	lsrs r3, r7
	mov sb, r3
_08005906:
	ldr r2, [r5]
	ldr r3, [r5, #0x20]
	ldr r0, [r4]
	mov r1, sb
	ands r0, r1
	adds r7, r2, #0
	mov r1, ip
	lsls r7, r1
	orrs r0, r7
	str r0, [r4]
	mov r7, r8
	lsrs r2, r7
	adds r0, r3, #0
	lsls r0, r1
	orrs r2, r0
	str r2, [r4, #0x20]
	ldr r0, [sp, #0xc]
	cmp r0, #0
	beq _08005938
	ldr r0, [r4, #0x40]
	mov r1, sl
	ands r0, r1
	lsrs r3, r7
	orrs r0, r3
	str r0, [r4, #0x40]
_08005938:
	adds r4, #4
	adds r5, #4
	subs r6, #1
	cmp r6, #0
	bne _08005906
_08005942:
	adds r5, #0x20
	movs r0, #8
	ldr r2, [sp, #4]
	subs r1, r0, r2
	cmp r1, #0
	ble _080059AE
	ldr r3, [sp, #0xc]
	subs r0, r0, r3
	lsls r0, r0, #2
	mov r8, r0
	movs r0, #1
	rsbs r0, r0, #0
	lsls r3, r3, #2
	mov ip, r3
	mov sl, r0
	mov r7, sl
	lsls r7, r3
	mov sl, r7
	adds r6, r1, #0
	mov sb, r0
	mov r1, r8
	lsrs r0, r1
	mov sb, r0
_08005970:
	ldr r2, [r5]
	ldr r3, [r5, #0x20]
	ldr r0, [r4]
	mov r7, sb
	ands r0, r7
	adds r1, r2, #0
	mov r7, ip
	lsls r1, r7
	orrs r0, r1
	str r0, [r4]
	mov r0, r8
	lsrs r2, r0
	adds r0, r3, #0
	lsls r0, r7
	orrs r2, r0
	str r2, [r4, #0x20]
	ldr r1, [sp, #0xc]
	cmp r1, #0
	beq _080059A4
	ldr r0, [r4, #0x40]
	mov r2, sl
	ands r0, r2
	mov r7, r8
	lsrs r3, r7
	orrs r0, r3
	str r0, [r4, #0x40]
_080059A4:
	adds r4, #4
	adds r5, #4
	subs r6, #1
	cmp r6, #0
	bne _08005970
_080059AE:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _08005A22
	ldr r1, [sp]
	movs r2, #0x80
	lsls r2, r2, #3
	adds r4, r1, r2
	cmp r0, #0
	ble _08005A22
	movs r0, #8
	ldr r3, [sp, #0xc]
	subs r0, r0, r3
	lsls r0, r0, #2
	mov r8, r0
	movs r0, #1
	rsbs r0, r0, #0
	lsls r3, r3, #2
	mov ip, r3
	mov sl, r0
	mov r7, sl
	lsls r7, r3
	mov sl, r7
	ldr r6, [sp, #4]
	mov sb, r0
	mov r1, r8
	lsrs r0, r1
	mov sb, r0
_080059E4:
	ldr r2, [r5]
	ldr r3, [r5, #0x20]
	ldr r0, [r4]
	mov r7, sb
	ands r0, r7
	adds r1, r2, #0
	mov r7, ip
	lsls r1, r7
	orrs r0, r1
	str r0, [r4]
	mov r0, r8
	lsrs r2, r0
	adds r0, r3, #0
	lsls r0, r7
	orrs r2, r0
	str r2, [r4, #0x20]
	ldr r1, [sp, #0xc]
	cmp r1, #0
	beq _08005A18
	ldr r0, [r4, #0x40]
	mov r2, sl
	ands r0, r2
	mov r7, r8
	lsrs r3, r7
	orrs r0, r3
	str r0, [r4, #0x40]
_08005A18:
	adds r4, #4
	adds r5, #4
	subs r6, #1
	cmp r6, #0
	bne _080059E4
_08005A22:
	add sp, #0x10
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08005A34
sub_08005A34: @ 0x08005A34
	push {lr}
	ldr r0, _08005A50 @ =gUnk_08082AC0
	ldr r1, _08005A54 @ =0x06010000
	movs r2, #0x80
	lsls r2, r2, #6
	bl CpuFastSet
	ldr r0, _08005A58 @ =gUnk_0808B0C0
	ldr r1, _08005A5C @ =0x05000200
	movs r2, #0x80
	bl CpuFastSet
	pop {r0}
	bx r0
	.align 2, 0
_08005A50: .4byte gUnk_08082AC0
_08005A54: .4byte 0x06010000
_08005A58: .4byte gUnk_0808B0C0
_08005A5C: .4byte 0x05000200

	thumb_func_start sub_08005A60
sub_08005A60: @ 0x08005A60
	movs r0, #0
	bx lr

	thumb_func_start nullsub_1
nullsub_1: @ 0x08005A64
	bx lr
	.align 2, 0

	thumb_func_start sub_08005A68
sub_08005A68: @ 0x08005A68
	movs r0, #1
	bx lr

	thumb_func_start sub_08005A6C
sub_08005A6C: @ 0x08005A6C
	movs r0, #1
	bx lr

	thumb_func_start sub_08005A70
sub_08005A70: @ 0x08005A70
	movs r0, #1
	bx lr

	thumb_func_start sub_08005A74
sub_08005A74: @ 0x08005A74
	movs r0, #0
	bx lr

	thumb_func_start sub_08005A78
sub_08005A78: @ 0x08005A78
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	ldr r3, _08005A90 @ =0x04000050
	movs r2, #0xc0
	lsls r2, r2, #0x18
	orrs r2, r1
	lsrs r2, r2, #0x18
	strh r2, [r3]
	ldr r1, _08005A94 @ =0x04000054
	strh r0, [r1]
	bx lr
	.align 2, 0
_08005A90: .4byte 0x04000050
_08005A94: .4byte 0x04000054

	thumb_func_start sub_08005A98
sub_08005A98: @ 0x08005A98
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	ldr r3, _08005AB0 @ =0x04000050
	movs r2, #0x80
	orrs r1, r2
	strh r1, [r3]
	ldr r1, _08005AB4 @ =0x04000054
	strh r0, [r1]
	bx lr
	.align 2, 0
_08005AB0: .4byte 0x04000050
_08005AB4: .4byte 0x04000054

	thumb_func_start sub_08005AB8
sub_08005AB8: @ 0x08005AB8
	ldr r1, _08005AC0 @ =gUnk_03001D92
	strb r0, [r1]
	bx lr
	.align 2, 0
_08005AC0: .4byte gUnk_03001D92

	thumb_func_start sub_08005AC4
sub_08005AC4: @ 0x08005AC4
	ldr r0, _08005ACC @ =gUnk_03001D92
	ldrb r0, [r0]
	bx lr
	.align 2, 0
_08005ACC: .4byte gUnk_03001D92

	thumb_func_start sub_08005AD0
sub_08005AD0: @ 0x08005AD0
	push {lr}
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	cmp r0, #0
	bne _08005AE0
	movs r0, #0
	b _08005AE2
_08005AE0:
	adds r0, r1, #0
_08005AE2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08005AE8
sub_08005AE8: @ 0x08005AE8
	push {lr}
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08005AF4
	movs r0, #0
	b _08005AF6
_08005AF4:
	movs r0, #1
_08005AF6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08005AFC
sub_08005AFC: @ 0x08005AFC
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r3, r0, #0
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	cmp r0, #1
	beq _08005B2C
	cmp r0, #1
	bgt _08005B1A
	cmp r0, #0
	beq _08005B24
	b _08005B44
_08005B1A:
	cmp r3, #2
	beq _08005B34
	cmp r3, #3
	beq _08005B3C
	b _08005B44
_08005B24:
	ldr r0, _08005B28 @ =0x04000010
	b _08005B3E
	.align 2, 0
_08005B28: .4byte 0x04000010
_08005B2C:
	ldr r0, _08005B30 @ =0x04000014
	b _08005B3E
	.align 2, 0
_08005B30: .4byte 0x04000014
_08005B34:
	ldr r0, _08005B38 @ =0x04000018
	b _08005B3E
	.align 2, 0
_08005B38: .4byte 0x04000018
_08005B3C:
	ldr r0, _08005B48 @ =0x0400001C
_08005B3E:
	strh r1, [r0]
	adds r0, #2
	strh r2, [r0]
_08005B44:
	pop {r0}
	bx r0
	.align 2, 0
_08005B48: .4byte 0x0400001C

	thumb_func_start sub_08005B4C
sub_08005B4C: @ 0x08005B4C
	push {r4, r5, r6, lr}
	mov r6, r8
	push {r6}
	sub sp, #0x10
	adds r4, r0, #0
	adds r6, r1, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	movs r0, #1
	mov r8, r0
	str r0, [sp]
	movs r5, #0
	str r5, [sp, #4]
	str r5, [sp, #8]
	str r6, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0
	movs r2, #0
	movs r3, #2
	bl sub_08005D78
	adds r0, r4, #4
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov r1, r8
	str r1, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	adds r1, r6, #0
	adds r1, #8
	str r1, [sp, #0xc]
	movs r1, #0x20
	movs r2, #0
	movs r3, #2
	bl sub_08005D78
	adds r4, #8
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	mov r0, r8
	str r0, [sp]
	str r5, [sp, #4]
	str r5, [sp, #8]
	adds r6, #0x10
	str r6, [sp, #0xc]
	adds r0, r4, #0
	movs r1, #0x40
	movs r2, #0
	movs r3, #2
	bl sub_08005D78
	add sp, #0x10
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08005BC0
sub_08005BC0: @ 0x08005BC0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x10
	lsrs r5, r5, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	bl sub_08005E1C
	adds r0, r4, #0
	adds r0, #0x20
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r2, r6, #0
	adds r2, #8
	adds r1, r5, #0
	bl sub_08005E1C
	adds r4, #0x40
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	adds r6, #0x10
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl sub_08005E1C
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08005C04
sub_08005C04: @ 0x08005C04
	push {r4, r5, r6, lr}
	sub sp, #0x10
	adds r5, r1, #0
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #9
	bhi _08005C4A
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	movs r0, #0x40
	movs r1, #0xd0
	movs r2, #0xa
	movs r3, #0
	bl sub_08005D78
	lsls r0, r6, #0x11
	movs r1, #0x80
	lsls r1, r1, #0xf
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	adds r4, r5, #0
	adds r4, #8
	str r4, [sp, #0xc]
	movs r1, #0xda
	movs r2, #0xa
	movs r3, #0
	bl sub_08005D78
	b _08005C78
_08005C4A:
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r5, [sp, #0xc]
	movs r0, #0x42
	movs r1, #0xd0
	movs r2, #0xa
	movs r3, #0
	bl sub_08005D78
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	adds r4, r5, #0
	adds r4, #8
	str r4, [sp, #0xc]
	movs r0, #0x40
	movs r1, #0xda
	movs r2, #0xa
	movs r3, #0
	bl sub_08005D78
_08005C78:
	adds r0, r5, #0
	bl sub_08005E34
	adds r0, r4, #0
	bl sub_08005E34
	add sp, #0x10
	pop {r4, r5, r6}
	pop {r0}
	bx r0

	thumb_func_start sub_08005C8C
sub_08005C8C: @ 0x08005C8C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r7, r1, #0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #9
	bhi _08005CD4
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r7, [sp, #0xc]
	movs r0, #0x40
	movs r1, #0x7c
	movs r2, #0x54
	movs r3, #0
	bl sub_08005D78
	lsls r0, r5, #0x11
	movs r1, #0x80
	lsls r1, r1, #0xf
	adds r0, r0, r1
	lsrs r0, r0, #0x10
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	adds r4, r7, #0
	adds r4, #8
	str r4, [sp, #0xc]
	movs r1, #0x86
	movs r2, #0x54
	movs r3, #0
	bl sub_08005D78
	adds r6, r4, #0
	b _08005D06
_08005CD4:
	adds r6, r7, #0
	adds r6, #8
	cmp r5, #0xa
	bne _08005D06
	movs r4, #0
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r7, [sp, #0xc]
	movs r0, #0x42
	movs r1, #0x7c
	movs r2, #0x54
	movs r3, #0
	bl sub_08005D78
	str r4, [sp]
	str r4, [sp, #4]
	str r4, [sp, #8]
	str r6, [sp, #0xc]
	movs r0, #0x40
	movs r1, #0x86
	movs r2, #0x54
	movs r3, #0
	bl sub_08005D78
_08005D06:
	adds r0, r7, #0
	bl sub_08005E34
	adds r0, r6, #0
	bl sub_08005E34
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start sub_08005D1C
sub_08005D1C: @ 0x08005D1C
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r4, r0, #0
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	lsls r2, r2, #0x10
	lsrs r2, r2, #0x10
	cmp r0, #1
	beq _08005D4C
	cmp r0, #1
	bgt _08005D3A
	cmp r0, #0
	beq _08005D44
	b _08005D6C
_08005D3A:
	cmp r4, #2
	beq _08005D54
	cmp r4, #3
	beq _08005D5C
	b _08005D6C
_08005D44:
	ldr r1, _08005D48 @ =0x04000010
	b _08005D5E
	.align 2, 0
_08005D48: .4byte 0x04000010
_08005D4C:
	ldr r1, _08005D50 @ =0x04000014
	b _08005D5E
	.align 2, 0
_08005D50: .4byte 0x04000014
_08005D54:
	ldr r1, _08005D58 @ =0x04000018
	b _08005D5E
	.align 2, 0
_08005D58: .4byte 0x04000018
_08005D5C:
	ldr r1, _08005D74 @ =0x0400001C
_08005D5E:
	ldrh r0, [r1]
	adds r0, r3, r0
	strh r0, [r1]
	adds r1, #2
	ldrh r0, [r1]
	adds r0, r2, r0
	strh r0, [r1]
_08005D6C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08005D74: .4byte 0x0400001C

	thumb_func_start sub_08005D78
sub_08005D78: @ 0x08005D78
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, [sp, #0x20]
	ldr r5, [sp, #0x24]
	mov sb, r5
	ldr r5, [sp, #0x28]
	mov r8, r5
	ldr r6, [sp, #0x2c]
	lsls r1, r1, #0x18
	lsls r3, r3, #0x18
	mov r5, sb
	lsls r5, r5, #0x18
	mov sb, r5
	mov r5, r8
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	mov r8, r5
	strb r2, [r6]
	movs r5, #0xd
	rsbs r5, r5, #0
	movs r2, #0x11
	rsbs r2, r2, #0
	mov sl, r2
	subs r2, #0x10
	mov ip, r2
	movs r7, #0x3f
	lsls r4, r4, #6
	strb r4, [r6, #1]
	lsrs r1, r1, #0x18
	ldrh r4, [r6, #2]
	ldr r2, _08005E14 @ =0xFFFFFE00
	ands r2, r4
	orrs r2, r1
	strh r2, [r6, #2]
	ldrb r2, [r6, #3]
	movs r1, #0xf
	rsbs r1, r1, #0
	ands r1, r2
	mov r2, sl
	ands r1, r2
	mov r2, ip
	ands r1, r2
	lsrs r3, r3, #0x12
	ands r1, r7
	orrs r1, r3
	strb r1, [r6, #3]
	lsls r0, r0, #0x16
	lsrs r0, r0, #0x16
	ldrh r2, [r6, #4]
	ldr r1, _08005E18 @ =0xFFFFFC00
	ands r1, r2
	orrs r1, r0
	strh r1, [r6, #4]
	movs r0, #3
	mov r1, r8
	ands r1, r0
	lsls r1, r1, #2
	ldrb r0, [r6, #5]
	ands r5, r0
	orrs r5, r1
	mov r2, sb
	lsrs r2, r2, #0x14
	movs r0, #0xf
	ands r5, r0
	orrs r5, r2
	strb r5, [r6, #5]
	movs r5, #0
	strh r5, [r6, #6]
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005E14: .4byte 0xFFFFFE00
_08005E18: .4byte 0xFFFFFC00

	thumb_func_start sub_08005E1C
sub_08005E1C: @ 0x08005E1C
	strb r1, [r2]
	lsls r0, r0, #0x17
	lsrs r0, r0, #0x17
	ldrh r3, [r2, #2]
	ldr r1, _08005E30 @ =0xFFFFFE00
	ands r1, r3
	orrs r1, r0
	strh r1, [r2, #2]
	bx lr
	.align 2, 0
_08005E30: .4byte 0xFFFFFE00

	thumb_func_start sub_08005E34
sub_08005E34: @ 0x08005E34
	ldrb r1, [r0, #3]
	movs r2, #0x10
	orrs r1, r2
	movs r2, #0x20
	orrs r1, r2
	strb r1, [r0, #3]
	bx lr
	.align 2, 0

	thumb_func_start sub_08005E44
sub_08005E44: @ 0x08005E44
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	mov r8, r0
	mov sb, r1
	mov sl, r2
	lsls r5, r3, #0x18
	lsrs r5, r5, #0x18
	ldr r6, _08005F20 @ =gUnk_030023E4
	ldr r0, _08005F24 @ =sub_08005F6C
	bl sub_0800288C
	adds r1, r0, #0
	str r1, [r6]
	movs r4, #0
	str r4, [sp]
	ldr r2, _08005F28 @ =0x010004B7
	mov r0, sp
	bl CpuFastSet
	ldr r0, [r6]
	strb r4, [r0]
	ldr r0, [r6]
	str r4, [r0, #0x18]
	strb r5, [r0, #0x16]
	ldr r0, [r6]
	ldr r2, _08005F2C @ =0x000012D8
	adds r1, r0, r2
	ldr r3, _08005F30 @ =0x000012DC
	adds r0, r0, r3
	str r0, [r1]
	cmp r5, #1
	bne _08005EEC
	mov r7, sl
	ldr r0, [r7, #8]
	cmp r0, #0
	beq _08005EE2
	adds r5, r2, #0
_08005E96:
	ldr r1, _08005F20 @ =gUnk_030023E4
	ldr r0, [r1]
	adds r0, r0, r5
	ldr r3, [r0]
	lsls r0, r4, #3
	subs r0, r0, r4
	lsls r0, r0, #4
	adds r0, r0, r4
	lsls r0, r0, #2
	lsls r2, r4, #1
	adds r2, r2, r4
	lsls r2, r2, #2
	add r2, sl
	adds r3, r0, r3
	adds r1, r2, #0
	ldm r1!, {r6, r7}
	stm r3!, {r6, r7}
	ldr r3, _08005F20 @ =gUnk_030023E4
	ldr r1, [r3]
	adds r1, r1, r5
	ldr r1, [r1]
	adds r0, r0, r1
	adds r0, #8
	ldr r1, [r2, #8]
	movs r2, #0xde
	lsls r2, r2, #1
	bl memcpy
	adds r0, r4, #1
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	lsls r0, r4, #1
	adds r0, r0, r4
	lsls r0, r0, #2
	add r0, sl
	ldr r0, [r0, #8]
	cmp r0, #0
	bne _08005E96
_08005EE2:
	ldr r0, _08005F20 @ =gUnk_030023E4
	ldr r0, [r0]
	ldr r6, _08005F34 @ =0x000012D4
	adds r0, r0, r6
	strh r4, [r0]
_08005EEC:
	ldr r4, _08005F20 @ =gUnk_030023E4
	ldr r0, [r4]
	adds r0, #1
	mov r1, r8
	movs r2, #0xd
	bl memcpy
	ldr r0, [r4]
	adds r0, #0xe
	mov r1, sb
	movs r2, #8
	bl memcpy
	bl sub_08005FF4
	ldr r0, _08005F38 @ =sub_08006710
	bl sub_08005F3C
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08005F20: .4byte gUnk_030023E4
_08005F24: .4byte sub_08005F6C
_08005F28: .4byte 0x010004B7
_08005F2C: .4byte 0x000012D8
_08005F30: .4byte 0x000012DC
_08005F34: .4byte 0x000012D4
_08005F38: .4byte sub_08006710

	thumb_func_start sub_08005F3C
sub_08005F3C: @ 0x08005F3C
	push {r4, lr}
	ldr r3, _08005F60 @ =gUnk_030023E4
	ldr r1, [r3]
	ldr r4, _08005F64 @ =0x0000068C
	adds r2, r1, r4
	str r0, [r2]
	movs r0, #0xd2
	lsls r0, r0, #3
	adds r1, r1, r0
	movs r2, #0
	strb r2, [r1]
	ldr r0, [r3]
	ldr r1, _08005F68 @ =0x00000694
	adds r0, r0, r1
	str r2, [r0]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08005F60: .4byte gUnk_030023E4
_08005F64: .4byte 0x0000068C
_08005F68: .4byte 0x00000694

	thumb_func_start sub_08005F6C
sub_08005F6C: @ 0x08005F6C
	push {r4, r5, lr}
	ldr r4, _08005FA8 @ =gUnk_030023E4
	str r0, [r4]
	bl sub_08002090
	ldr r2, [r4]
	strh r0, [r2, #0x1c]
	movs r1, #0x80
	lsls r1, r1, #7
	ands r1, r0
	cmp r1, #0
	bne _08005FE2
	ldr r0, [r2, #0x18]
	adds r0, #1
	str r0, [r2, #0x18]
	ldr r5, _08005FAC @ =0x00000689
	adds r0, r2, r5
	ldrb r0, [r0]
	cmp r0, #0
	beq _08005FB4
	bl sub_08006068
	ldr r0, [r4]
	ldr r1, _08005FB0 @ =0x0000068C
	adds r0, r0, r1
	ldr r0, [r0]
	bl _call_via_r0
	b _08005FD8
	.align 2, 0
_08005FA8: .4byte gUnk_030023E4
_08005FAC: .4byte 0x00000689
_08005FB0: .4byte 0x0000068C
_08005FB4:
	bl sub_08006228
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08005FC8
	ldr r0, [r4]
	adds r0, r0, r5
	movs r1, #1
	strb r1, [r0]
	b _08005FD8
_08005FC8:
	ldr r2, [r4]
	ldr r1, [r2, #0x18]
	movs r0, #0x96
	lsls r0, r0, #2
	cmp r1, r0
	ble _08005FD8
	movs r0, #1
	strb r0, [r2]
_08005FD8:
	ldr r0, _08005FE8 @ =gUnk_030023E4
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #0
	bne _08005FEC
_08005FE2:
	movs r0, #0
	b _08005FEE
	.align 2, 0
_08005FE8: .4byte gUnk_030023E4
_08005FEC:
	movs r0, #1
_08005FEE:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start sub_08005FF4
sub_08005FF4: @ 0x08005FF4
	push {r4, r5, lr}
	sub sp, #4
	movs r5, #0
	str r5, [sp]
	ldr r4, _08006058 @ =gUnk_030023E4
	ldr r1, [r4]
	adds r1, #0x20
	ldr r2, _0800605C @ =0x0100019B
	mov r0, sp
	bl CpuFastSet
	ldr r0, [r4]
	str r5, [r0, #0x20]
	ldr r1, _08006060 @ =0x00000625
	adds r0, r0, r1
	strb r5, [r0]
	ldr r0, [r4]
	adds r1, #0xc
	adds r0, r0, r1
	strb r5, [r0]
	ldr r0, [r4]
	adds r1, #0x57
	adds r0, r0, r1
	strb r5, [r0]
	ldr r0, [r4]
	subs r1, #0x62
	adds r0, r0, r1
	movs r1, #8
	strb r1, [r0]
	ldr r0, [r4]
	ldr r1, _08006064 @ =0x00000627
	adds r0, r0, r1
	strb r5, [r0]
	ldr r0, [r4]
	adds r1, #9
	adds r0, r0, r1
	strb r5, [r0]
	ldr r0, [r4]
	subs r1, #0xc
	adds r0, r0, r1
	strb r5, [r0]
	ldr r0, [r4]
	adds r1, #0x65
	adds r0, r0, r1
	strb r5, [r0]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08006058: .4byte gUnk_030023E4
_0800605C: .4byte 0x0100019B
_08006060: .4byte 0x00000625
_08006064: .4byte 0x00000627

	thumb_func_start sub_08006068
sub_08006068: @ 0x08006068
	push {lr}
	bl sub_080062DC
	bl sub_080064D4
	ldr r0, _08006088 @ =gUnk_030023E4
	ldr r2, [r0]
	ldr r1, [r2, #0x20]
	movs r0, #0x96
	lsls r0, r0, #2
	cmp r1, r0
	ble _08006084
	movs r0, #1
	strb r0, [r2]
_08006084:
	pop {r0}
	bx r0
	.align 2, 0
_08006088: .4byte gUnk_030023E4

	thumb_func_start sub_0800608C
sub_0800608C: @ 0x0800608C
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r5, r1, #0
	ldr r0, _080060E4 @ =gUnk_030023E4
	ldr r4, [r0]
	cmp r1, #0xfc
	bhi _080060F8
	cmp r1, #0
	beq _080060F8
	ldr r0, _080060E8 @ =0x00000631
	adds r2, r4, r0
	ldrb r1, [r2]
	cmp r1, #0
	bne _080060F8
	movs r0, #2
	strb r0, [r2]
	ldr r2, _080060EC @ =0x00000633
	adds r0, r4, r2
	strb r1, [r0]
	adds r0, r5, #0
	adds r0, #0xb
	movs r1, #0xc
	bl __divsi3
	ldr r2, _080060F0 @ =0x00000632
	adds r1, r4, r2
	strb r0, [r1]
	ldr r0, _080060F4 @ =0x00000424
	adds r4, r4, r0
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r4, #0
	movs r1, #0
	bl memset
	adds r0, r4, #0
	adds r1, r6, #0
	adds r2, r5, #0
	bl memcpy
	movs r0, #1
	b _080060FA
	.align 2, 0
_080060E4: .4byte gUnk_030023E4
_080060E8: .4byte 0x00000631
_080060EC: .4byte 0x00000633
_080060F0: .4byte 0x00000632
_080060F4: .4byte 0x00000424
_080060F8:
	movs r0, #0
_080060FA:
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start sub_08006100
sub_08006100: @ 0x08006100
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	movs r2, #0
	ldr r0, _08006120 @ =gUnk_030023E4
	ldr r4, [r0]
	adds r6, r4, #0
	adds r6, #0x20
	ldr r0, _08006124 @ =0x00000631
	adds r3, r4, r0
	ldrb r0, [r3]
	cmp r0, #0
	beq _08006128
	movs r0, #0
	b _080061A4
	.align 2, 0
_08006120: .4byte gUnk_030023E4
_08006124: .4byte 0x00000631
_08006128:
	ldr r5, _08006140 @ =0x00000642
	adds r0, r4, r5
	strb r2, [r0]
	adds r5, #1
	adds r0, r4, r5
	strb r1, [r0]
	cmp r1, #0x77
	beq _08006144
	cmp r1, #0xa1
	beq _08006190
	b _080061A2
	.align 2, 0
_08006140: .4byte 0x00000642
_08006144:
	ldr r1, _0800616C @ =0x00000644
	adds r0, r4, r1
	movs r1, #2
	strb r1, [r0]
	ldr r3, _08006170 @ =0x00000645
	adds r0, r4, r3
	strb r2, [r0]
	bl sub_080026BC
	adds r2, r0, #0
	movs r1, #0
	movs r5, #1
	ldr r3, _08006174 @ =0x00000646
	adds r0, r4, r3
	movs r3, #0
_08006162:
	cmp r1, r2
	bne _08006178
	strb r5, [r0]
	b _0800617A
	.align 2, 0
_0800616C: .4byte 0x00000644
_08006170: .4byte 0x00000645
_08006174: .4byte 0x00000646
_08006178:
	strb r3, [r0]
_0800617A:
	adds r0, #1
	adds r1, #1
	cmp r1, #3
	ble _08006162
	ldr r5, _0800618C @ =0x00000611
	adds r1, r6, r5
	movs r0, #1
	strb r0, [r1]
	b _080061A0
	.align 2, 0
_0800618C: .4byte 0x00000611
_08006190:
	ldr r1, _080061AC @ =0x00000644
	adds r0, r4, r1
	strb r2, [r0]
	ldr r5, _080061B0 @ =0x00000645
	adds r0, r4, r5
	strb r2, [r0]
	movs r0, #1
	strb r0, [r3]
_080061A0:
	movs r2, #1
_080061A2:
	adds r0, r2, #0
_080061A4:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_080061AC: .4byte 0x00000644
_080061B0: .4byte 0x00000645

	thumb_func_start sub_080061B4
sub_080061B4: @ 0x080061B4
	push {lr}
	ldr r0, _080061C8 @ =gUnk_030023E4
	ldr r0, [r0]
	ldr r1, _080061CC @ =0x00000631
	adds r0, r0, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _080061D0
	movs r0, #0
	b _080061D2
	.align 2, 0
_080061C8: .4byte gUnk_030023E4
_080061CC: .4byte 0x00000631
_080061D0:
	movs r0, #1
_080061D2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080061D8
sub_080061D8: @ 0x080061D8
	push {r4, r5, r6, r7, lr}
	adds r3, r0, #0
	adds r7, r1, #0
	ldr r6, _0800621C @ =gUnk_030023E4
	ldr r1, [r6]
	movs r5, #0xd1
	lsls r5, r5, #3
	adds r2, r1, r5
	ldrb r0, [r2]
	cmp r0, #0
	beq _08006220
	movs r4, #0xc6
	lsls r4, r4, #3
	adds r0, r1, r4
	ldrb r4, [r0]
	cmp r4, #0
	bne _08006220
	movs r0, #0x89
	lsls r0, r0, #2
	adds r1, r1, r0
	ldrb r2, [r2]
	adds r0, r3, #0
	bl memcpy
	ldr r0, [r6]
	adds r0, r0, r5
	ldrb r0, [r0]
	strb r0, [r7]
	ldr r0, [r6]
	adds r0, r0, r5
	strb r4, [r0]
	movs r0, #1
	b _08006222
	.align 2, 0
_0800621C: .4byte gUnk_030023E4
_08006220:
	movs r0, #0
_08006222:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08006228
sub_08006228: @ 0x08006228
	push {r4, r5, r6, lr}
	movs r6, #0
	ldr r0, _08006268 @ =gUnk_030023E4
	ldr r2, [r0]
	adds r5, r2, #0
	adds r5, #0x20
	ldrh r1, [r2, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #6
	ands r0, r1
	cmp r0, #0
	beq _08006254
	ldr r0, _0800626C @ =0x00000634
	adds r4, r2, r0
	adds r0, r4, #0
	bl sub_0800204C
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08006254
	ldrb r0, [r4]
	strb r0, [r5, #4]
_08006254:
	ldr r0, _08006268 @ =gUnk_030023E4
	ldr r0, [r0]
	ldrh r1, [r0, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	beq _08006270
	movs r6, #0
	b _08006286
	.align 2, 0
_08006268: .4byte gUnk_030023E4
_0800626C: .4byte 0x00000634
_08006270:
	ldr r1, _08006290 @ =0x00000622
	adds r0, r5, r1
	movs r1, #5
	strb r1, [r0]
	movs r1, #1
	bl sub_08001F28
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08006286
	movs r6, #1
_08006286:
	adds r0, r6, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08006290: .4byte 0x00000622

	thumb_func_start sub_08006294
sub_08006294: @ 0x08006294
	push {lr}
	ldr r0, _080062AC @ =gUnk_030023E4
	ldr r0, [r0]
	ldrh r1, [r0, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	bne _080062B0
	movs r0, #0
	b _080062B2
	.align 2, 0
_080062AC: .4byte gUnk_030023E4
_080062B0:
	movs r0, #1
_080062B2:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080062B8
sub_080062B8: @ 0x080062B8
	push {lr}
	ldr r0, _080062D0 @ =gUnk_030023E4
	ldr r0, [r0]
	ldrh r1, [r0, #0x1c]
	movs r0, #0x80
	lsls r0, r0, #7
	ands r0, r1
	cmp r0, #0
	bne _080062D4
	movs r0, #1
	b _080062D6
	.align 2, 0
_080062D0: .4byte gUnk_030023E4
_080062D4:
	movs r0, #0
_080062D6:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080062DC
sub_080062DC: @ 0x080062DC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	movs r0, #0
	mov r8, r0
	ldr r7, _08006320 @ =gUnk_030023E4
	ldr r4, [r7]
	movs r1, #0x20
	adds r1, r1, r4
	mov sl, r1
	bl sub_08006294
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08006300
	b _080064A2
_08006300:
	ldr r2, _08006324 @ =0x00000634
	adds r5, r4, r2
	adds r0, r5, #0
	bl sub_08001FB0
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	cmp r6, #0
	beq _08006314
	b _080064A2
_08006314:
	ldrh r0, [r5]
	cmp r0, #0
	bne _08006328
	movs r0, #1
	b _08006486
	.align 2, 0
_08006320: .4byte gUnk_030023E4
_08006324: .4byte 0x00000634
_08006328:
	ldrb r0, [r5]
	lsrs r0, r0, #5
	ldr r2, _08006354 @ =0x00000626
	adds r1, r4, r2
	ldrb r2, [r1]
	cmp r0, r2
	bne _0800635C
	ldr r0, _08006358 @ =0x00000627
	adds r1, r4, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bhi _0800634A
	b _08006488
_0800634A:
	ldr r1, [r7]
	movs r0, #1
	strb r0, [r1]
	b _080064C6
	.align 2, 0
_08006354: .4byte 0x00000626
_08006358: .4byte 0x00000627
_0800635C:
	strb r0, [r1]
	ldr r1, _0800637C @ =0x00000627
	adds r0, r4, r1
	mov r2, r8
	strb r2, [r0]
	movs r0, #1
	mov r8, r0
	subs r1, #2
	adds r1, r1, r4
	mov sb, r1
	ldrb r0, [r1]
	cmp r0, #0
	beq _08006380
	cmp r0, #1
	beq _080063E2
	b _08006488
	.align 2, 0
_0800637C: .4byte 0x00000627
_08006380:
	ldr r2, _080063B8 @ =0x00000635
	adds r0, r4, r2
	ldrb r0, [r0]
	cmp r0, #0x5f
	beq _080063C4
	cmp r0, #0x88
	bne _080063DC
	ldr r1, _080063BC @ =0x00000636
	adds r0, r4, r1
	ldrb r0, [r0]
	subs r2, #0xd
	adds r1, r4, r2
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x20
	bhi _08006484
	ldr r2, _080063C0 @ =0x0000062C
	adds r0, r4, r2
	str r6, [r0]
	ldrb r0, [r1]
	cmp r0, #0
	beq _08006488
	mov r1, r8
	mov r0, sb
	strb r1, [r0]
	b _08006488
	.align 2, 0
_080063B8: .4byte 0x00000635
_080063BC: .4byte 0x00000636
_080063C0: .4byte 0x0000062C
_080063C4:
	ldr r2, _080063D4 @ =0x00000631
	adds r0, r4, r2
	movs r1, #3
	strb r1, [r0]
	ldr r1, _080063D8 @ =0x00000633
	adds r0, r4, r1
	strb r6, [r0]
	b _08006488
	.align 2, 0
_080063D4: .4byte 0x00000631
_080063D8: .4byte 0x00000633
_080063DC:
	movs r2, #0
	mov r8, r2
	b _08006488
_080063E2:
	ldr r1, _08006460 @ =0x00000635
	adds r0, r4, r1
	ldrb r0, [r0]
	cmp r0, #0x5f
	beq _0800646C
	cmp r0, #0x89
	bne _08006484
	ldrb r0, [r5]
	movs r2, #0x1f
	ands r2, r0
	ldr r0, _08006464 @ =0x0000062C
	adds r5, r4, r0
	mov r1, r8
	lsls r1, r2
	ldr r0, [r5]
	orrs r0, r1
	str r0, [r5]
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	add r0, sl
	adds r0, #4
	ldr r2, _08006468 @ =0x00000636
	adds r1, r4, r2
	movs r2, #0xc
	bl memcpy
	movs r0, #0xc5
	lsls r0, r0, #3
	adds r7, r4, r0
	ldrb r2, [r7]
	mov r0, r8
	lsls r0, r2
	subs r0, #1
	ldr r1, [r5]
	cmp r1, r0
	bne _08006488
	lsls r0, r2, #1
	adds r0, r0, r2
	lsls r0, r0, #2
	movs r2, #0xd1
	lsls r2, r2, #3
	adds r1, r4, r2
	strb r0, [r1]
	movs r2, #0x89
	lsls r2, r2, #2
	adds r0, r4, r2
	ldrb r2, [r1]
	adds r1, r4, #0
	adds r1, #0x24
	bl memcpy
	strb r6, [r7]
	str r6, [r5]
	movs r1, #0xc6
	lsls r1, r1, #3
	adds r0, r4, r1
	mov r2, r8
	strb r2, [r0]
	mov r0, sb
	strb r6, [r0]
	b _08006488
	.align 2, 0
_08006460: .4byte 0x00000635
_08006464: .4byte 0x0000062C
_08006468: .4byte 0x00000636
_0800646C:
	ldr r1, _0800647C @ =0x00000631
	adds r0, r4, r1
	movs r1, #3
	strb r1, [r0]
	ldr r2, _08006480 @ =0x00000633
	adds r0, r4, r2
	strb r6, [r0]
	b _080064C6
	.align 2, 0
_0800647C: .4byte 0x00000631
_08006480: .4byte 0x00000633
_08006484:
	movs r0, #0
_08006486:
	mov r8, r0
_08006488:
	movs r2, #0xc2
	lsls r2, r2, #3
	add r2, sl
	ldrb r0, [r2]
	adds r1, r0, #0
	cmp r1, #0
	beq _080064A2
	cmp r1, #3
	bls _0800649E
	movs r0, #0
	b _080064A0
_0800649E:
	adds r0, #1
_080064A0:
	strb r0, [r2]
_080064A2:
	mov r1, r8
	cmp r1, #0
	bne _080064C0
	ldr r0, _080064BC @ =0x00000605
	add r0, sl
	ldrb r0, [r0]
	cmp r0, #1
	bne _080064C6
	mov r2, sl
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	b _080064C6
	.align 2, 0
_080064BC: .4byte 0x00000605
_080064C0:
	movs r0, #0
	mov r1, sl
	str r0, [r1]
_080064C6:
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start sub_080064D4
sub_080064D4: @ 0x080064D4
	push {r4, r5, r6, r7, lr}
	movs r6, #0
	ldr r0, _080064F4 @ =gUnk_030023E4
	ldr r2, [r0]
	adds r5, r2, #0
	adds r5, #0x20
	ldr r1, _080064F8 @ =0x00000631
	adds r0, r2, r1
	ldrb r0, [r0]
	cmp r0, #2
	beq _08006514
	cmp r0, #2
	bgt _080064FC
	cmp r0, #0
	beq _08006502
	b _08006630
	.align 2, 0
_080064F4: .4byte gUnk_030023E4
_080064F8: .4byte 0x00000631
_080064FC:
	cmp r0, #3
	beq _080065E4
	b _08006630
_08006502:
	ldr r3, _08006510 @ =0x00000642
	adds r0, r2, r3
	movs r1, #0
	movs r2, #0x46
	bl memset
	b _08006630
	.align 2, 0
_08006510: .4byte 0x00000642
_08006514:
	ldr r7, _0800655C @ =0x00000633
	adds r4, r2, r7
	ldrb r1, [r4]
	adds r3, r1, #0
	cmp r3, #0
	bne _08006570
	ldr r1, _08006560 @ =0x00000642
	adds r0, r2, r1
	strb r6, [r0]
	ldr r3, _08006564 @ =0x00000643
	adds r1, r2, r3
	movs r0, #0x88
	strb r0, [r1]
	ldr r4, _08006568 @ =0x00000632
	adds r0, r2, r4
	ldrb r1, [r0]
	adds r7, #0x11
	adds r0, r2, r7
	strb r1, [r0]
	ldr r1, _0800656C @ =0x00000645
	adds r0, r2, r1
	strb r6, [r0]
	adds r3, #3
	adds r1, r2, r3
	movs r0, #0x80
	strb r0, [r1]
	adds r4, #0x15
	adds r0, r2, r4
	strb r6, [r0]
	adds r7, #4
	adds r0, r2, r7
	movs r1, #0
	movs r2, #8
	bl memset
	b _08006630
	.align 2, 0
_0800655C: .4byte 0x00000633
_08006560: .4byte 0x00000642
_08006564: .4byte 0x00000643
_08006568: .4byte 0x00000632
_0800656C: .4byte 0x00000645
_08006570:
	ldr r7, _080065A8 @ =0x00000632
	adds r0, r2, r7
	ldrb r0, [r0]
	cmp r3, r0
	bhi _080065B4
	subs r1, #1
	ldr r3, _080065AC @ =0x00000642
	adds r0, r2, r3
	strb r1, [r0]
	adds r7, #0x11
	adds r1, r2, r7
	movs r0, #0x89
	strb r0, [r1]
	ldr r1, _080065B0 @ =0x00000644
	adds r0, r2, r1
	ldrb r2, [r4]
	lsls r1, r2, #1
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r5
	movs r2, #0xfe
	lsls r2, r2, #2
	adds r1, r1, r2
	movs r2, #0xc
	bl memcpy
	b _08006630
	.align 2, 0
_080065A8: .4byte 0x00000632
_080065AC: .4byte 0x00000642
_080065B0: .4byte 0x00000644
_080065B4:
	ldr r3, _080065D8 @ =0x00000642
	adds r0, r2, r3
	strb r6, [r0]
	ldr r4, _080065DC @ =0x00000643
	adds r1, r2, r4
	movs r0, #0x66
	strb r0, [r1]
	ldr r7, _080065E0 @ =0x00000624
	adds r0, r2, r7
	ldrb r1, [r0]
	adds r3, #2
	adds r0, r2, r3
	strb r1, [r0]
	adds r4, #2
	adds r0, r2, r4
	strb r6, [r0]
	b _08006630
	.align 2, 0
_080065D8: .4byte 0x00000642
_080065DC: .4byte 0x00000643
_080065E0: .4byte 0x00000624
_080065E4:
	ldr r7, _08006610 @ =0x00000633
	adds r0, r2, r7
	ldrb r0, [r0]
	cmp r0, #0
	bne _08006624
	ldr r1, _08006614 @ =0x00000642
	adds r0, r2, r1
	strb r6, [r0]
	ldr r3, _08006618 @ =0x00000643
	adds r1, r2, r3
	movs r0, #0x5f
	strb r0, [r1]
	ldr r4, _0800661C @ =0x00000624
	adds r0, r2, r4
	ldrb r1, [r0]
	adds r7, #0x11
	adds r0, r2, r7
	strb r1, [r0]
	ldr r1, _08006620 @ =0x00000645
	adds r0, r2, r1
	strb r6, [r0]
	b _08006630
	.align 2, 0
_08006610: .4byte 0x00000633
_08006614: .4byte 0x00000642
_08006618: .4byte 0x00000643
_0800661C: .4byte 0x00000624
_08006620: .4byte 0x00000645
_08006624:
	ldr r3, _08006688 @ =0x00000642
	adds r0, r2, r3
	movs r1, #0
	movs r2, #0x46
	bl memset
_08006630:
	bl sub_080062B8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _0800667C
	movs r4, #0xc6
	lsls r4, r4, #3
	adds r3, r5, r4
	adds r1, r3, #0
	ldr r7, _0800668C @ =0x00000614
	adds r0, r5, r7
	ldm r0!, {r2, r4, r7}
	stm r1!, {r2, r4, r7}
	ldrh r0, [r0]
	strh r0, [r1]
	ldr r0, _08006690 @ =0x00000622
	adds r4, r5, r0
	ldrb r2, [r4]
	movs r1, #0x1f
	adds r0, r1, #0
	ands r0, r2
	strb r0, [r4]
	ldrb r0, [r3]
	ands r1, r0
	strb r1, [r3]
	ldr r1, _08006694 @ =0x0000063E
	adds r0, r5, r1
	movs r1, #0
	movs r2, #0x2a
	bl memset
	adds r0, r4, #0
	bl sub_08001EC8
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800667C
	movs r6, #1
_0800667C:
	cmp r6, #0
	bne _08006698
	ldr r0, [r5]
	adds r0, #1
	str r0, [r5]
	b _08006706
	.align 2, 0
_08006688: .4byte 0x00000642
_0800668C: .4byte 0x00000614
_08006690: .4byte 0x00000622
_08006694: .4byte 0x0000063E
_08006698:
	movs r6, #0
	str r6, [r5]
	ldr r2, _080066B0 @ =0x00000611
	adds r3, r5, r2
	ldrb r0, [r3]
	cmp r0, #2
	beq _080066BE
	cmp r0, #2
	bgt _080066B4
	cmp r0, #1
	beq _080066BA
	b _08006706
	.align 2, 0
_080066B0: .4byte 0x00000611
_080066B4:
	cmp r0, #3
	beq _080066F4
	b _08006706
_080066BA:
	strb r6, [r3]
	b _08006706
_080066BE:
	ldr r4, _080066E8 @ =0x00000613
	adds r2, r5, r4
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
	ldrb r1, [r2]
	ldr r7, _080066EC @ =0x00000612
	adds r4, r5, r7
	ldrb r0, [r4]
	adds r0, #2
	cmp r1, r0
	ble _08006706
	ldr r0, _080066F0 @ =0x00000604
	adds r1, r5, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	strb r6, [r3]
	strb r6, [r2]
	strb r6, [r4]
	b _08006706
	.align 2, 0
_080066E8: .4byte 0x00000613
_080066EC: .4byte 0x00000612
_080066F0: .4byte 0x00000604
_080066F4:
	ldr r1, _0800670C @ =0x00000613
	adds r4, r5, r1
	ldrb r0, [r4]
	cmp r0, #0
	bne _08006706
	bl sub_08001C38
	movs r0, #1
	strb r0, [r4]
_08006706:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800670C: .4byte 0x00000613

	thumb_func_start sub_08006710
sub_08006710: @ 0x08006710
	push {r4, r5, lr}
	ldr r0, _08006738 @ =gUnk_030023E4
	ldr r1, [r0]
	ldr r0, _0800673C @ =0x00000694
	adds r2, r1, r0
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	movs r2, #0xd2
	lsls r2, r2, #3
	adds r1, r1, r2
	ldrb r0, [r1]
	cmp r0, #7
	bhi _08006812
	lsls r0, r0, #2
	ldr r1, _08006740 @ =_08006744
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08006738: .4byte gUnk_030023E4
_0800673C: .4byte 0x00000694
_08006740: .4byte _08006744
_08006744: @ jump table
	.4byte _08006764 @ case 0
	.4byte _080067A0 @ case 1
	.4byte _080067A8 @ case 2
	.4byte _080067AE @ case 3
	.4byte _080067A8 @ case 4
	.4byte _080067B6 @ case 5
	.4byte _080067CC @ case 6
	.4byte _080067F8 @ case 7
_08006764:
	ldr r4, _08006794 @ =gUnk_030023E4
	ldr r0, [r4]
	ldr r5, _08006798 @ =0x00000A98
	adds r0, r0, r5
	bl sub_080068D0
	ldr r1, [r4]
	movs r2, #0xd3
	lsls r2, r2, #3
	adds r0, r1, r2
	adds r1, r1, r5
	movs r2, #0x3c
	bl memcpy
	ldr r0, [r4]
	ldr r1, _0800679C @ =0x00000694
	adds r0, r0, r1
	ldr r0, [r0]
	cmp r0, #2
	ble _08006812
	bl sub_080068AC
	b _08006812
	.align 2, 0
_08006794: .4byte gUnk_030023E4
_08006798: .4byte 0x00000A98
_0800679C: .4byte 0x00000694
_080067A0:
	movs r0, #0x77
	bl sub_08006100
	b _080067E8
_080067A8:
	bl sub_080061B4
	b _080067E8
_080067AE:
	movs r0, #0xa1
	bl sub_08006100
	b _080067E8
_080067B6:
	ldr r0, _080067C8 @ =gUnk_030023E4
	ldr r0, [r0]
	movs r2, #0xd3
	lsls r2, r2, #3
	adds r0, r0, r2
	movs r1, #0xc8
	bl sub_0800608C
	b _080067E8
	.align 2, 0
_080067C8: .4byte gUnk_030023E4
_080067CC:
	bl sub_080061B4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08006812
	ldr r0, _080067F4 @ =gUnk_030023E4
	ldr r1, [r0]
	movs r2, #0xd3
	lsls r2, r2, #3
	adds r0, r1, r2
	adds r2, #0xc8
	adds r1, r1, r2
	bl sub_080061D8
_080067E8:
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08006812
	bl sub_080068AC
	b _08006812
	.align 2, 0
_080067F4: .4byte gUnk_030023E4
_080067F8:
	ldr r0, _08006830 @ =gUnk_030023E4
	ldr r1, [r0]
	ldr r2, _08006834 @ =0x00000AD4
	adds r0, r1, r2
	movs r2, #0xd3
	lsls r2, r2, #3
	adds r1, r1, r2
	movs r2, #0x3c
	bl memcpy
	ldr r0, _08006838 @ =sub_08006840
	bl sub_08005F3C
_08006812:
	ldr r0, _08006830 @ =gUnk_030023E4
	ldr r2, [r0]
	ldr r1, _0800683C @ =0x00000694
	adds r0, r2, r1
	ldr r1, [r0]
	movs r0, #0x96
	lsls r0, r0, #3
	cmp r1, r0
	ble _08006828
	movs r0, #1
	strb r0, [r2]
_08006828:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08006830: .4byte gUnk_030023E4
_08006834: .4byte 0x00000AD4
_08006838: .4byte sub_08006840
_0800683C: .4byte 0x00000694

	thumb_func_start sub_08006840
sub_08006840: @ 0x08006840
	push {lr}
	ldr r0, _08006868 @ =gUnk_030023E4
	ldr r1, [r0]
	ldr r0, _0800686C @ =0x00000694
	adds r2, r1, r0
	ldr r0, [r2]
	adds r0, #1
	str r0, [r2]
	movs r0, #0xd2
	lsls r0, r0, #3
	adds r1, r1, r0
	ldrb r0, [r1]
	cmp r0, #1
	beq _08006880
	cmp r0, #1
	bgt _08006870
	cmp r0, #0
	beq _08006876
	b _0800688A
	.align 2, 0
_08006868: .4byte gUnk_030023E4
_0800686C: .4byte 0x00000694
_08006870:
	cmp r0, #2
	beq _08006886
	b _0800688A
_08006876:
	bl sub_08006934
	bl sub_080068AC
	b _0800688A
_08006880:
	bl sub_08006A20
	b _0800688A
_08006886:
	bl nullsub_5
_0800688A:
	ldr r0, _080068A4 @ =gUnk_030023E4
	ldr r2, [r0]
	ldr r1, _080068A8 @ =0x00000694
	adds r0, r2, r1
	ldr r1, [r0]
	movs r0, #0x96
	lsls r0, r0, #3
	cmp r1, r0
	ble _080068A0
	movs r0, #1
	strb r0, [r2]
_080068A0:
	pop {r0}
	bx r0
	.align 2, 0
_080068A4: .4byte gUnk_030023E4
_080068A8: .4byte 0x00000694

	thumb_func_start sub_080068AC
sub_080068AC: @ 0x080068AC
	ldr r3, _080068C8 @ =gUnk_030023E4
	ldr r1, [r3]
	movs r0, #0xd2
	lsls r0, r0, #3
	adds r1, r1, r0
	ldrb r0, [r1]
	adds r0, #1
	movs r2, #0
	strb r0, [r1]
	ldr r0, [r3]
	ldr r1, _080068CC @ =0x00000694
	adds r0, r0, r1
	str r2, [r0]
	bx lr
	.align 2, 0
_080068C8: .4byte gUnk_030023E4
_080068CC: .4byte 0x00000694

	thumb_func_start sub_080068D0
sub_080068D0: @ 0x080068D0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r4, #0
	adds r5, #0x10
	bl sub_0800065C
	str r0, [r5, #4]
	ldr r1, _08006928 @ =gUnk_08016508
	adds r0, r4, #0
	adds r0, #0x18
	movs r2, #8
	bl memcpy
	movs r1, #0
	movs r0, #1
	strb r0, [r5, #0x13]
	str r1, [r5, #0x14]
	movs r0, #2
	strh r0, [r5, #0x1a]
	ldr r0, _0800692C @ =0x00004004
	strh r0, [r4, #0x10]
	movs r0, #0x80
	lsls r0, r0, #8
	strh r0, [r5, #2]
	strb r1, [r5, #0x10]
	ldr r2, _08006930 @ =gUnk_08016C8C
	adds r1, r4, #0
	adds r0, r2, #0
	ldm r0!, {r3, r5, r6}
	stm r1!, {r3, r5, r6}
	ldrh r3, [r0]
	strh r3, [r1]
	ldrb r0, [r0, #2]
	strb r0, [r1, #2]
	adds r4, #0x2c
	ldm r2!, {r0, r1, r3}
	stm r4!, {r0, r1, r3}
	ldrh r0, [r2]
	strh r0, [r4]
	ldrb r0, [r2, #2]
	strb r0, [r4, #2]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08006928: .4byte gUnk_08016508
_0800692C: .4byte 0x00004004
_08006930: .4byte gUnk_08016C8C

	thumb_func_start sub_08006934
sub_08006934: @ 0x08006934
	push {r4, r5, r6, lr}
	mov r6, sb
	mov r5, r8
	push {r5, r6}
	ldr r0, _080069F4 @ =gUnk_030023E4
	mov sb, r0
	ldr r4, [r0]
	movs r1, #0xb1
	lsls r1, r1, #4
	mov r8, r1
	adds r2, r4, r1
	ldr r1, _080069F8 @ =gUnk_0801685C
	ldrb r0, [r4, #0x16]
	lsls r0, r0, #4
	adds r1, #8
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [r2]
	ldr r0, _080069FC @ =0x00000B18
	adds r6, r4, r0
	movs r5, #0
	str r5, [r6]
	str r5, [r6, #8]
	ldr r1, _08006A00 @ =0x00000F2C
	adds r0, r4, r1
	movs r2, #0xa6
	lsls r2, r2, #1
	movs r1, #0
	bl memset
	ldr r1, _08006A04 @ =0x00001078
	adds r0, r4, r1
	movs r2, #0xde
	lsls r2, r2, #1
	movs r1, #0
	bl memset
	ldr r1, _08006A08 @ =0x00000B2C
	adds r0, r4, r1
	movs r2, #0x80
	lsls r2, r2, #3
	movs r1, #0
	bl memset
	ldr r1, _08006A0C @ =0x00001234
	adds r0, r4, r1
	movs r1, #0
	movs r2, #0x64
	bl memset
	mov r1, sb
	ldr r0, [r1]
	add r0, r8
	ldr r0, [r0]
	str r0, [r6, #0x10]
	str r5, [r6, #0xc]
	ldr r1, _08006A10 @ =0x000012B0
	adds r0, r4, r1
	strb r5, [r0]
	ldr r0, _08006A14 @ =0x000012B1
	adds r1, r4, r0
	movs r0, #1
	strb r0, [r1]
	ldr r1, _08006A18 @ =0x000012AC
	adds r0, r4, r1
	str r5, [r0]
	adds r1, #0x12
	adds r0, r4, r1
	strh r5, [r0]
	adds r1, #2
	adds r0, r4, r1
	strh r5, [r0]
	subs r1, #4
	adds r0, r4, r1
	strh r5, [r0]
	subs r1, #6
	adds r0, r4, r1
	strh r5, [r0]
	adds r1, #2
	adds r0, r4, r1
	strh r5, [r0]
	subs r1, #4
	adds r0, r4, r1
	strh r5, [r0]
	adds r1, #0x14
	adds r0, r4, r1
	str r5, [r0]
	ldr r0, _08006A1C @ =0x000012C4
	adds r4, r4, r0
	str r5, [r4]
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080069F4: .4byte gUnk_030023E4
_080069F8: .4byte gUnk_0801685C
_080069FC: .4byte 0x00000B18
_08006A00: .4byte 0x00000F2C
_08006A04: .4byte 0x00001078
_08006A08: .4byte 0x00000B2C
_08006A0C: .4byte 0x00001234
_08006A10: .4byte 0x000012B0
_08006A14: .4byte 0x000012B1
_08006A18: .4byte 0x000012AC
_08006A1C: .4byte 0x000012C4

	thumb_func_start sub_08006A20
sub_08006A20: @ 0x08006A20
	push {r4, lr}
	ldr r1, _08006A40 @ =gUnk_030023E4
	ldr r2, [r1]
	movs r3, #0xb2
	lsls r3, r3, #4
	adds r0, r2, r3
	ldr r0, [r0]
	adds r4, r1, #0
	cmp r0, #4
	bhi _08006B08
	lsls r0, r0, #2
	ldr r1, _08006A44 @ =_08006A48
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08006A40: .4byte gUnk_030023E4
_08006A44: .4byte _08006A48
_08006A48: @ jump table
	.4byte _08006A5C @ case 0
	.4byte _08006A74 @ case 1
	.4byte _08006A8C @ case 2
	.4byte _08006AB8 @ case 3
	.4byte _08006AE8 @ case 4
_08006A5C:
	ldr r1, [r4]
	movs r0, #0xb2
	lsls r0, r0, #4
	adds r2, r1, r0
	movs r0, #4
	str r0, [r2]
	ldr r3, _08006A70 @ =0x00000694
	adds r1, r1, r3
	b _08006AD8
	.align 2, 0
_08006A70: .4byte 0x00000694
_08006A74:
	bl sub_080068AC
	ldr r0, _08006A84 @ =gUnk_030023E4
	ldr r0, [r0]
	ldr r1, _08006A88 @ =0x00000694
	adds r0, r0, r1
	b _08006AF8
	.align 2, 0
_08006A84: .4byte gUnk_030023E4
_08006A88: .4byte 0x00000694
_08006A8C:
	ldr r0, [r4]
	ldr r3, _08006AB0 @ =0x000012AC
	adds r0, r0, r3
	bl sub_08006C60
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08006B0C
	ldr r1, [r4]
	movs r0, #0xb2
	lsls r0, r0, #4
	adds r2, r1, r0
	movs r0, #4
	str r0, [r2]
	ldr r3, _08006AB4 @ =0x00000694
	adds r1, r1, r3
	b _08006AD8
	.align 2, 0
_08006AB0: .4byte 0x000012AC
_08006AB4: .4byte 0x00000694
_08006AB8:
	ldr r0, [r4]
	ldr r1, _08006AE0 @ =0x000012AC
	adds r0, r0, r1
	bl sub_08006B5C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08006B0C
	ldr r1, [r4]
	movs r3, #0xb2
	lsls r3, r3, #4
	adds r2, r1, r3
	movs r0, #4
	str r0, [r2]
	ldr r0, _08006AE4 @ =0x00000694
	adds r1, r1, r0
_08006AD8:
	movs r0, #0
	str r0, [r1]
	b _08006B0C
	.align 2, 0
_08006AE0: .4byte 0x000012AC
_08006AE4: .4byte 0x00000694
_08006AE8:
	ldr r0, [r4]
	ldr r1, _08006B00 @ =0x00000B18
	adds r0, r0, r1
	bl sub_08006D5C
	ldr r0, [r4]
	ldr r3, _08006B04 @ =0x00000694
	adds r0, r0, r3
_08006AF8:
	movs r1, #0
	str r1, [r0]
	b _08006B0C
	.align 2, 0
_08006B00: .4byte 0x00000B18
_08006B04: .4byte 0x00000694
_08006B08:
	movs r0, #1
	strb r0, [r2]
_08006B0C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start nullsub_5
nullsub_5: @ 0x08006B14
	bx lr
	.align 2, 0

	thumb_func_start sub_08006B18
sub_08006B18: @ 0x08006B18
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r2, _08006B54 @ =0x00001121
	movs r3, #0
	cmp r3, r4
	bhs _08006B46
	ldr r6, _08006B58 @ =gUnk_08016C9C
_08006B28:
	lsrs r1, r2, #8
	adds r0, r5, r3
	ldrb r0, [r0]
	eors r2, r0
	lsls r0, r2, #0x18
	lsrs r0, r0, #0x17
	adds r0, r0, r6
	ldrh r0, [r0]
	adds r2, r0, #0
	eors r2, r1
	adds r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r4
	blo _08006B28
_08006B46:
	mvns r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08006B54: .4byte 0x00001121
_08006B58: .4byte gUnk_08016C9C

	thumb_func_start sub_08006B5C
sub_08006B5C: @ 0x08006B5C
	push {r4, r5, lr}
	sub sp, #8
	adds r4, r0, #0
	ldr r5, [r4]
	cmp r5, #1
	beq _08006BCC
	cmp r5, #1
	bgt _08006B72
	cmp r5, #0
	beq _08006B7C
	b _08006C54
_08006B72:
	cmp r5, #2
	beq _08006C1A
	cmp r5, #3
	beq _08006C4C
	b _08006C54
_08006B7C:
	bl sub_080061B4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08006C54
	ldrh r1, [r4, #0xe]
	ldr r2, _08006BC4 @ =0xFFFF0000
	ldr r0, [sp]
	ands r0, r2
	orrs r0, r1
	str r0, [sp]
	ldrh r1, [r4, #0x14]
	ldr r0, [sp, #4]
	ands r0, r2
	orrs r0, r1
	str r0, [sp, #4]
	ldr r0, [r4, #0x1c]
	bl sub_08006B18
	lsls r0, r0, #0x10
	ldr r2, _08006BC8 @ =0x0000FFFF
	ldr r1, [sp]
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	lsrs r1, r1, #0x10
	strh r1, [r4, #0x12]
	strh r5, [r4, #0x10]
	mov r0, sp
	movs r1, #8
	bl sub_0800608C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08006C54
	b _08006C44
	.align 2, 0
_08006BC4: .4byte 0xFFFF0000
_08006BC8: .4byte 0x0000FFFF
_08006BCC:
	bl sub_080061B4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08006C54
	ldrh r0, [r4, #0x10]
	lsls r1, r0, #6
	subs r1, r1, r0
	lsls r1, r1, #2
	ldrh r2, [r4, #0x14]
	subs r0, r2, r1
	cmp r0, #0xfc
	bhi _08006C02
	ldr r0, [r4, #0x1c]
	adds r0, r0, r1
	subs r1, r2, r1
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl sub_0800608C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08006C54
	ldrh r0, [r4, #0x10]
	adds r0, #1
	strh r0, [r4, #0x10]
	b _08006C44
_08006C02:
	ldr r0, [r4, #0x1c]
	adds r0, r0, r1
	movs r1, #0xfc
	bl sub_0800608C
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08006C54
	ldrh r0, [r4, #0x10]
	adds r0, #1
	strh r0, [r4, #0x10]
	b _08006C54
_08006C1A:
	bl sub_080061B4
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08006C54
	ldr r0, [r4, #0x1c]
	ldrh r1, [r4, #0x14]
	bl sub_08006B18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4, #0x12]
	cmp r0, r1
	beq _08006C44
	ldr r0, _08006C40 @ =gUnk_030023E4
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1]
	b _08006C54
	.align 2, 0
_08006C40: .4byte gUnk_030023E4
_08006C44:
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	b _08006C54
_08006C4C:
	movs r0, #0
	str r0, [r4]
	movs r0, #1
	b _08006C56
_08006C54:
	movs r0, #0
_08006C56:
	add sp, #8
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08006C60
sub_08006C60: @ 0x08006C60
	push {r4, r5, lr}
	sub sp, #0x10c
	adds r4, r0, #0
	ldr r5, [r4]
	cmp r5, #1
	beq _08006CC6
	cmp r5, #1
	bgt _08006C76
	cmp r5, #0
	beq _08006C80
	b _08006D2C
_08006C76:
	cmp r5, #2
	beq _08006D0A
	cmp r5, #3
	beq _08006D24
	b _08006D2C
_08006C80:
	add r1, sp, #0x100
	mov r0, sp
	bl sub_080061D8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08006D2C
	add r1, sp, #0x104
	mov r0, sp
	ldm r0!, {r2, r3}
	stm r1!, {r2, r3}
	add r0, sp, #0x104
	ldrh r1, [r0, #4]
	strh r1, [r4, #0xc]
	ldrh r0, [r0, #2]
	strh r0, [r4, #0xa]
	lsls r1, r1, #0x10
	movs r0, #0x80
	lsls r0, r0, #0x13
	cmp r1, r0
	bls _08006CB8
_08006CAA:
	ldr r0, _08006CB4 @ =gUnk_030023E4
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1]
	b _08006D2C
	.align 2, 0
_08006CB4: .4byte gUnk_030023E4
_08006CB8:
	add r1, sp, #0x104
	ldrh r0, [r4, #6]
	ldrh r1, [r1]
	cmp r0, r1
	bne _08006CAA
	strh r5, [r4, #8]
	b _08006D1C
_08006CC6:
	add r1, sp, #0x100
	mov r0, sp
	bl sub_080061D8
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08006D2C
	ldrh r0, [r4, #8]
	lsls r1, r0, #6
	subs r1, r1, r0
	lsls r1, r1, #2
	ldrh r0, [r4, #0xc]
	subs r2, r0, r1
	cmp r2, #0xfc
	bhi _08006CF6
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	mov r1, sp
	bl memcpy
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	b _08006D1C
_08006CF6:
	ldr r0, [r4, #0x18]
	adds r0, r0, r1
	mov r1, sp
	movs r2, #0xfc
	bl memcpy
	ldrh r0, [r4, #8]
	adds r0, #1
	strh r0, [r4, #8]
	b _08006D2C
_08006D0A:
	ldr r0, [r4, #0x18]
	ldrh r1, [r4, #0xc]
	bl sub_08006B18
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldrh r1, [r4, #0xa]
	cmp r0, r1
	bne _08006CAA
_08006D1C:
	ldr r0, [r4]
	adds r0, #1
	str r0, [r4]
	b _08006D2C
_08006D24:
	movs r0, #0
	str r0, [r4]
	movs r0, #1
	b _08006D2E
_08006D2C:
	movs r0, #0
_08006D2E:
	add sp, #0x10c
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08006D38
sub_08006D38: @ 0x08006D38
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	str r0, [r4]
	strh r1, [r4, #0xe]
	strh r0, [r4, #0x10]
	strh r0, [r4, #0x12]
	cmp r3, #0
	beq _08006D4E
	strh r3, [r4, #0x14]
	b _08006D54
_08006D4E:
	movs r0, #0x80
	lsls r0, r0, #3
	strh r0, [r4, #0x14]
_08006D54:
	str r2, [r4, #0x1c]
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08006D5C
sub_08006D5C: @ 0x08006D5C
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0xc]
	lsls r1, r0, #1
	adds r1, r1, r0
	lsls r1, r1, #2
	ldr r2, [r4, #0x10]
	adds r3, r2, r1
	ldr r1, _08006D88 @ =0x00000794
	adds r5, r4, r1
	adds r0, #1
	str r0, [r4, #0xc]
	ldr r0, [r3]
	cmp r0, #0x20
	bls _08006D7C
	b _08007128
_08006D7C:
	lsls r0, r0, #2
	ldr r1, _08006D8C @ =_08006D90
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08006D88: .4byte 0x00000794
_08006D8C: .4byte _08006D90
_08006D90: @ jump table
	.4byte _08006E14 @ case 0
	.4byte _08006E26 @ case 1
	.4byte _08006E2C @ case 2
	.4byte _08006E4C @ case 3
	.4byte _08006E56 @ case 4
	.4byte _08006E6A @ case 5
	.4byte _08006E90 @ case 6
	.4byte _08006EB0 @ case 7
	.4byte _08006EDC @ case 8
	.4byte _08006EF2 @ case 9
	.4byte _08006F1C @ case 10
	.4byte _08006F3C @ case 11
	.4byte _08006F54 @ case 12
	.4byte _08006F68 @ case 13
	.4byte _08006F90 @ case 14
	.4byte _08006FB6 @ case 15
	.4byte _08006FDC @ case 16
	.4byte _08007000 @ case 17
	.4byte _0800700E @ case 18
	.4byte _08007034 @ case 19
	.4byte _08007048 @ case 20
	.4byte _08007056 @ case 21
	.4byte _0800706A @ case 22
	.4byte _08007084 @ case 23
	.4byte _08007094 @ case 24
	.4byte _080070A8 @ case 25
	.4byte _08007128 @ case 26
	.4byte _08007128 @ case 27
	.4byte _08007128 @ case 28
	.4byte _080070C0 @ case 29
	.4byte _080070CE @ case 30
	.4byte _080070E4 @ case 31
	.4byte _08007120 @ case 32
_08006E14:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _08006E1C
	b _08007128
_08006E1C:
	movs r0, #1
	str r0, [r4, #8]
	ldr r0, [r3, #4]
	str r0, [r4, #4]
	b _08007130
_08006E26:
	movs r0, #3
	str r0, [r4, #8]
	b _08007130
_08006E2C:
	ldr r1, [r3, #8]
	cmp r1, #0
	beq _08006E34
	b _08007128
_08006E34:
	str r1, [r5]
	ldr r0, [r3, #4]
	strh r0, [r5, #6]
	strh r1, [r5, #8]
	strh r1, [r5, #0xa]
	strh r1, [r5, #0xc]
	adds r0, r4, #0
	adds r0, #0x14
	str r0, [r5, #0x18]
	movs r0, #2
	str r0, [r4, #8]
	b _08007130
_08006E4C:
	ldr r0, [r3, #4]
	cmp r0, #0
	beq _08006E54
	b _08007128
_08006E54:
	b _08006E62
_08006E56:
	ldr r1, [r4, #4]
	ldr r0, [r3, #4]
	cmp r1, r0
	beq _08006E60
	b _08007130
_08006E60:
	movs r0, #0
_08006E62:
	str r0, [r4, #0xc]
	ldr r0, [r3, #8]
	str r0, [r4, #0x10]
	b _08007130
_08006E6A:
	ldr r0, [r3, #4]
	cmp r0, #0
	beq _08006E72
	b _08007128
_08006E72:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _08006E7A
	b _08007128
_08006E7A:
	ldr r3, _08006E8C @ =0x0000071C
	adds r0, r4, r3
	adds r1, r4, #0
	adds r1, #0x14
	movs r2, #0x64
	bl memcpy
	b _08007130
	.align 2, 0
_08006E8C: .4byte 0x0000071C
_08006E90:
	ldr r0, [r3, #4]
	cmp r0, #0
	beq _08006E98
	b _08007128
_08006E98:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _08006EA0
	b _08007128
_08006EA0:
	ldr r1, _08006EAC @ =0x0000071C
	adds r0, r4, r1
	bl sub_08007140
	b _080070D6
	.align 2, 0
_08006EAC: .4byte 0x0000071C
_08006EB0:
	ldr r0, [r3, #4]
	cmp r0, #0
	beq _08006EB8
	b _08007128
_08006EB8:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _08006EC2
	adds r2, r0, #0
	b _08006EC6
_08006EC2:
	ldr r3, _08006ED4 @ =0x00000414
	adds r2, r4, r3
_08006EC6:
	ldr r0, _08006ED8 @ =0x0000071C
	adds r1, r4, r0
	adds r0, r2, #0
	bl sub_08007184
	str r0, [r4, #4]
	b _08007130
	.align 2, 0
_08006ED4: .4byte 0x00000414
_08006ED8: .4byte 0x0000071C
_08006EDC:
	ldr r0, [r3, #4]
	cmp r0, #0
	beq _08006EE4
	b _08007128
_08006EE4:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _08006EEC
	b _08007128
_08006EEC:
	ldr r0, [r4, #0x14]
	str r0, [r4, #4]
	b _08007130
_08006EF2:
	ldr r0, [r3, #4]
	cmp r0, #0
	beq _08006EFA
	b _08007128
_08006EFA:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _08006F04
	adds r2, r0, #0
	b _08006F0A
_08006F04:
	movs r1, #0xf2
	lsls r1, r1, #3
	adds r2, r4, r1
_08006F0A:
	ldr r3, _08006F18 @ =0x0000071C
	adds r1, r4, r3
	adds r0, r2, #0
	bl sub_080071A0
	str r0, [r4, #4]
	b _08007130
	.align 2, 0
_08006F18: .4byte 0x0000071C
_08006F1C:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _08006F24
	b _08007128
_08006F24:
	ldr r1, _08006F38 @ =0x0000071C
	adds r0, r4, r1
	ldr r1, [r3, #4]
	bl sub_08007230
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	str r0, [r4, #4]
	b _08007130
	.align 2, 0
_08006F38: .4byte 0x0000071C
_08006F3C:
	ldr r0, [r3, #4]
	cmp r0, #0
	beq _08006F44
	b _08007128
_08006F44:
	ldr r1, _08006F50 @ =0x0000071C
	adds r0, r4, r1
	ldr r1, [r3, #8]
	bl sub_080072B0
	b _080070D6
	.align 2, 0
_08006F50: .4byte 0x0000071C
_08006F54:
	ldr r0, [r3, #4]
	cmp r0, #0
	beq _08006F5C
	b _08007128
_08006F5C:
	ldr r0, [r3, #8]
	ldr r1, [r4, #0x14]
	bl sub_080072D8
	str r0, [r4, #4]
	b _08007130
_08006F68:
	ldr r0, [r3, #4]
	cmp r0, #0
	beq _08006F70
	b _08007128
_08006F70:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _08006F7A
	adds r2, r0, #0
	b _08006F7E
_08006F7A:
	ldr r3, _08006F8C @ =0x00000414
	adds r2, r4, r3
_08006F7E:
	movs r3, #0xa6
	lsls r3, r3, #1
	adds r0, r5, #0
	movs r1, #0x16
	bl sub_08006D38
	b _08007130
	.align 2, 0
_08006F8C: .4byte 0x00000414
_08006F90:
	ldr r0, [r3, #4]
	cmp r0, #0
	beq _08006F98
	b _08007128
_08006F98:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _08006FA2
	adds r2, r0, #0
	b _08006FA8
_08006FA2:
	movs r0, #0xac
	lsls r0, r0, #3
	adds r2, r4, r0
_08006FA8:
	movs r3, #0xde
	lsls r3, r3, #1
	adds r0, r5, #0
	movs r1, #0x17
	bl sub_08006D38
	b _08007130
_08006FB6:
	ldr r2, [r3, #8]
	cmp r2, #0
	bne _08006FD0
	movs r1, #0xf0
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r2, [r0]
	ldr r3, _08006FCC @ =0x00000784
	adds r0, r4, r3
	ldr r3, [r0]
	b _08006FD2
	.align 2, 0
_08006FCC: .4byte 0x00000784
_08006FD0:
	ldr r3, [r3, #4]
_08006FD2:
	adds r0, r5, #0
	movs r1, #0x19
	bl sub_08006D38
	b _08007130
_08006FDC:
	ldr r0, [r3, #4]
	cmp r0, #0
	beq _08006FE4
	b _08007128
_08006FE4:
	ldr r0, [r3, #8]
	cmp r0, #0
	beq _08006FEE
	adds r2, r0, #0
	b _08006FF4
_08006FEE:
	movs r0, #0xf2
	lsls r0, r0, #3
	adds r2, r4, r0
_08006FF4:
	adds r0, r5, #0
	movs r1, #0x18
	movs r3, #4
	bl sub_08006D38
	b _08007130
_08007000:
	ldr r2, [r3, #8]
	ldr r3, [r3, #4]
	adds r0, r5, #0
	movs r1, #0x1c
	bl sub_08006D38
	b _08007130
_0800700E:
	ldr r2, [r3, #8]
	cmp r2, #0
	bne _08007028
	movs r1, #0xf1
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r2, [r0]
	ldr r3, _08007024 @ =0x0000078C
	adds r0, r4, r3
	ldr r3, [r0]
	b _0800702A
	.align 2, 0
_08007024: .4byte 0x0000078C
_08007028:
	ldr r3, [r3, #4]
_0800702A:
	adds r0, r5, #0
	movs r1, #0x10
	bl sub_08006D38
	b _08007130
_08007034:
	ldr r0, [r3, #4]
	cmp r0, #0
	bne _08007128
	ldr r2, [r3, #8]
	adds r0, r5, #0
	movs r1, #0x1a
	movs r3, #0xbc
	bl sub_08006D38
	b _08007130
_08007048:
	ldr r2, [r3, #8]
	ldr r3, [r3, #4]
	adds r0, r5, #0
	movs r1, #0x15
	bl sub_08006D38
	b _08007130
_08007056:
	ldr r0, [r3, #4]
	cmp r0, #0
	bne _08007128
	movs r1, #0xf2
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, [r3, #8]
	ldr r1, [r1]
	str r1, [r0]
	b _08007130
_0800706A:
	ldr r0, [r3, #4]
	cmp r0, #0
	bne _08007128
	ldr r1, _08007080 @ =0x00000414
	adds r0, r4, r1
	ldr r1, [r3, #8]
	movs r2, #0xa6
	lsls r2, r2, #1
	bl memcpy
	b _08007130
	.align 2, 0
_08007080: .4byte 0x00000414
_08007084:
	ldr r0, [r3, #4]
	cmp r0, #0
	bne _08007128
	movs r1, #0xac
	lsls r1, r1, #3
	adds r0, r4, r1
	ldr r1, [r3, #8]
	b _08007108
_08007094:
	movs r0, #0xf0
	lsls r0, r0, #3
	adds r1, r4, r0
	ldr r0, [r3, #8]
	str r0, [r1]
	ldr r0, _080070A4 @ =0x00000784
	b _080070B4
	.align 2, 0
_080070A4: .4byte 0x00000784
_080070A8:
	movs r0, #0xf1
	lsls r0, r0, #3
	adds r1, r4, r0
	ldr r0, [r3, #8]
	str r0, [r1]
	ldr r0, _080070BC @ =0x0000078C
_080070B4:
	adds r1, r4, r0
	ldr r0, [r3, #4]
	str r0, [r1]
	b _08007130
	.align 2, 0
_080070BC: .4byte 0x0000078C
_080070C0:
	ldr r2, [r3, #8]
	ldr r3, [r3, #4]
	adds r0, r5, #0
	movs r1, #0x1b
	bl sub_08006D38
	b _08007130
_080070CE:
	ldr r1, _080070E0 @ =0x0000071C
	adds r0, r4, r1
	bl sub_080072F0
_080070D6:
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	str r0, [r4, #4]
	b _08007130
	.align 2, 0
_080070E0: .4byte 0x0000071C
_080070E4:
	movs r3, #0xac
	lsls r3, r3, #3
	adds r0, r4, r3
	ldr r1, _08007114 @ =gUnk_030023E4
	ldr r1, [r1]
	ldr r3, _08007118 @ =0x00000B14
	adds r2, r1, r3
	ldrh r2, [r2]
	ldr r3, _0800711C @ =0x000012D8
	adds r1, r1, r3
	ldr r3, [r1]
	lsls r1, r2, #3
	subs r1, r1, r2
	lsls r1, r1, #4
	adds r1, r1, r2
	lsls r1, r1, #2
	adds r1, r1, r3
	adds r1, #8
_08007108:
	movs r2, #0xde
	lsls r2, r2, #1
	bl memcpy
	b _08007130
	.align 2, 0
_08007114: .4byte gUnk_030023E4
_08007118: .4byte 0x00000B14
_0800711C: .4byte 0x000012D8
_08007120:
	adds r0, r4, #0
	bl nullsub_6
	b _08007130
_08007128:
	ldr r0, _08007138 @ =gUnk_030023E4
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1]
_08007130:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08007138: .4byte gUnk_030023E4

	thumb_func_start nullsub_6
nullsub_6: @ 0x0800713C
	bx lr
	.align 2, 0

	thumb_func_start sub_08007140
sub_08007140: @ 0x08007140
	push {lr}
	adds r2, r0, #0
	ldr r1, [r2]
	ldr r0, _08007178 @ =0x00000101
	cmp r1, r0
	bne _0800717C
	ldr r0, [r2, #0x10]
	movs r1, #0xf
	ands r0, r1
	cmp r0, #0
	beq _0800717C
	ldrh r1, [r2, #4]
	movs r3, #1
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0800717C
	ldr r0, [r2, #8]
	ands r0, r3
	cmp r0, #0
	beq _0800717C
	ldrh r1, [r2, #0xc]
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0800717C
	movs r0, #1
	b _0800717E
	.align 2, 0
_08007178: .4byte 0x00000101
_0800717C:
	movs r0, #0
_0800717E:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_08007184
sub_08007184: @ 0x08007184
	push {lr}
	ldrh r1, [r1, #0x14]
	cmp r1, #0
	bne _08007190
	movs r0, #0
	b _0800719C
_08007190:
	ldrh r0, [r0]
	cmp r0, r1
	beq _0800719A
	movs r0, #2
	b _0800719C
_0800719A:
	movs r0, #1
_0800719C:
	pop {r1}
	bx r1

	thumb_func_start sub_080071A0
sub_080071A0: @ 0x080071A0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	adds r5, r0, #0
	mov sb, r1
	movs r0, #0x20
	add r0, sb
	mov ip, r0
	movs r4, #0
	movs r7, #0
	movs r3, #0
	mov r0, sb
	adds r0, #0x44
	ldrb r0, [r0]
	cmp r4, r0
	bge _08007202
	mov r8, r0
_080071C4:
	lsls r1, r3, #1
	mov r0, ip
	adds r0, #0x16
	adds r0, r0, r1
	ldrh r2, [r0]
	cmp r2, #0
	beq _080071FC
	mov r0, ip
	adds r0, #8
	adds r0, r0, r1
	ldrh r1, [r0]
	cmp r1, #0
	beq _080071FC
	adds r4, #1
	movs r0, #0
	ldrh r6, [r5, #2]
	cmp r2, r6
	bne _080071EA
	movs r0, #1
_080071EA:
	movs r2, #0
	ldrh r6, [r5]
	cmp r1, r6
	bne _080071F4
	movs r2, #1
_080071F4:
	orrs r0, r2
	cmp r0, #0
	beq _080071FC
	adds r7, #1
_080071FC:
	adds r3, #1
	cmp r3, r8
	blt _080071C4
_08007202:
	mov r0, sb
	adds r0, #0x44
	ldrb r0, [r0]
	subs r4, r0, r4
	cmp r4, #0
	bne _08007212
	movs r0, #1
	b _08007224
_08007212:
	cmp r7, #0
	beq _0800721A
	movs r0, #3
	b _08007224
_0800721A:
	cmp r4, #1
	beq _08007222
	movs r0, #2
	b _08007224
_08007222:
	movs r0, #4
_08007224:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_08007230
sub_08007230: @ 0x08007230
	push {lr}
	adds r2, r0, #0
	cmp r1, #4
	bhi _0800729E
	lsls r0, r1, #2
	ldr r1, _08007244 @ =_08007248
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_08007244: .4byte _08007248
_08007248: @ jump table
	.4byte _0800725C @ case 0
	.4byte _08007260 @ case 1
	.4byte _08007264 @ case 2
	.4byte _08007268 @ case 3
	.4byte _08007296 @ case 4
_0800725C:
	ldrh r0, [r2, #0x20]
	b _080072A8
_08007260:
	ldrh r0, [r2, #0x22]
	b _080072A8
_08007264:
	ldrh r0, [r2, #0x24]
	b _080072A8
_08007268:
	movs r3, #0
	adds r0, r2, #0
	adds r0, #0x44
	ldrb r0, [r0]
	cmp r3, r0
	bge _08007290
	adds r1, r2, #0
	adds r1, #0x28
	adds r2, r0, #0
_0800727A:
	ldrh r0, [r1, #0xe]
	cmp r0, #0
	beq _08007288
	ldrh r0, [r1]
	cmp r0, #0
	beq _08007288
	adds r3, #1
_08007288:
	adds r1, #2
	subs r2, #1
	cmp r2, #0
	bne _0800727A
_08007290:
	lsls r0, r3, #0x10
	lsrs r0, r0, #0x10
	b _080072A8
_08007296:
	adds r0, r2, #0
	adds r0, #0x44
	ldrb r0, [r0]
	b _080072A8
_0800729E:
	ldr r0, _080072AC @ =gUnk_030023E4
	ldr r1, [r0]
	movs r0, #1
	strb r0, [r1]
	movs r0, #0
_080072A8:
	pop {r1}
	bx r1
	.align 2, 0
_080072AC: .4byte gUnk_030023E4

	thumb_func_start sub_080072B0
sub_080072B0: @ 0x080072B0
	push {r4, lr}
	movs r3, #0
	adds r2, r0, #0
	adds r2, #0x16
_080072B8:
	ldrh r0, [r2]
	ldrh r4, [r1]
	cmp r0, r4
	beq _080072C4
	movs r0, #0
	b _080072D0
_080072C4:
	adds r1, #2
	adds r2, #2
	adds r3, #1
	cmp r3, #3
	ble _080072B8
	movs r0, #1
_080072D0:
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080072D8
sub_080072D8: @ 0x080072D8
	push {lr}
	cmp r1, r0
	bhs _080072E2
	movs r0, #0
	b _080072EC
_080072E2:
	cmp r1, r0
	beq _080072EA
	movs r0, #2
	b _080072EC
_080072EA:
	movs r0, #1
_080072EC:
	pop {r1}
	bx r1

	thumb_func_start sub_080072F0
sub_080072F0: @ 0x080072F0
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #8
	mov sb, r0
	ldr r1, _08007378 @ =gUnk_08016E9C
	mov r0, sp
	movs r2, #8
	bl memcpy
	ldr r2, _0800737C @ =gUnk_030023E4
	ldr r0, [r2]
	ldr r3, _08007380 @ =0x000012D4
	adds r1, r0, r3
	ldrh r0, [r1]
	cmp r0, #0
	beq _08007374
	movs r6, #0
	mov r8, r6
	movs r7, #0
	ldrh r1, [r1]
	cmp r7, r1
	bge _0800736E
	adds r5, r2, #0
	movs r4, #0
_08007324:
	ldr r0, [r5]
	ldr r1, _08007384 @ =0x000012D8
	adds r0, r0, r1
	ldr r1, [r0]
	adds r1, r1, r4
	mov r0, sb
	bl sub_080072B0
	lsls r0, r0, #0x18
	cmp r0, #0
	bne _08007388
	ldr r0, [r5]
	ldr r3, _08007384 @ =0x000012D8
	adds r0, r0, r3
	ldr r0, [r0]
	adds r1, r4, r0
	ldr r2, [r1]
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	bne _0800735A
	ldr r0, [r1, #4]
	cmp r0, r2
	bne _0800735A
	adds r7, r6, #0
	movs r0, #1
	mov r8, r0
_0800735A:
	movs r1, #0xe2
	lsls r1, r1, #1
	adds r4, r4, r1
	adds r6, #1
	ldr r0, [r5]
	ldr r3, _08007380 @ =0x000012D4
	adds r0, r0, r3
	ldrh r0, [r0]
	cmp r6, r0
	blt _08007324
_0800736E:
	mov r0, r8
	cmp r0, #0
	bne _08007398
_08007374:
	movs r0, #0
	b _080073A4
	.align 2, 0
_08007378: .4byte gUnk_08016E9C
_0800737C: .4byte gUnk_030023E4
_08007380: .4byte 0x000012D4
_08007384: .4byte 0x000012D8
_08007388:
	ldr r0, [r5]
	ldr r1, _08007394 @ =0x00000B14
	adds r0, r0, r1
	strh r6, [r0]
	b _080073A2
	.align 2, 0
_08007394: .4byte 0x00000B14
_08007398:
	ldr r0, _080073B4 @ =gUnk_030023E4
	ldr r0, [r0]
	ldr r3, _080073B8 @ =0x00000B14
	adds r0, r0, r3
	strh r7, [r0]
_080073A2:
	movs r0, #1
_080073A4:
	add sp, #8
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_080073B4: .4byte gUnk_030023E4
_080073B8: .4byte 0x00000B14

	thumb_func_start sub_080073BC
sub_080073BC: @ 0x080073BC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	ldr r6, _08007414 @ =gUnk_030023E8
	ldr r0, _08007418 @ =sub_08007430
	bl sub_0800288C
	adds r1, r0, #0
	str r1, [r6]
	movs r0, #0
	str r0, [sp]
	ldr r2, _0800741C @ =0x01000421
	mov r0, sp
	bl CpuFastSet
	ldr r1, _08007420 @ =gUnk_080516A4
	adds r0, r4, #0
	bl strcmp
	cmp r0, #0
	bne _080073F4
	ldr r1, _08007424 @ =gUnk_080516B4
	adds r0, r5, #0
	bl strcmp
	cmp r0, #0
	beq _080073FE
_080073F4:
	ldr r0, [r6]
	ldr r1, _08007428 @ =0x00001081
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
_080073FE:
	ldr r0, _08007414 @ =gUnk_030023E8
	ldr r0, [r0]
	ldr r1, _0800742C @ =0x0000107E
	adds r0, r0, r1
	movs r1, #0xff
	strb r1, [r0]
	add sp, #4
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08007414: .4byte gUnk_030023E8
_08007418: .4byte sub_08007430
_0800741C: .4byte 0x01000421
_08007420: .4byte gUnk_080516A4
_08007424: .4byte gUnk_080516B4
_08007428: .4byte 0x00001081
_0800742C: .4byte 0x0000107E

	thumb_func_start sub_08007430
sub_08007430: @ 0x08007430
	push {r4, lr}
	sub sp, #4
	ldr r4, _08007488 @ =gUnk_030023E8
	str r0, [r4]
	bl sub_08002090
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	ldr r2, _0800748C @ =0xFFFF0000
	ldr r1, [sp]
	ands r1, r2
	orrs r1, r0
	str r1, [sp]
	mov r0, sp
	ldrb r1, [r0, #1]
	movs r0, #0x40
	ands r0, r1
	cmp r0, #0
	beq _08007466
	ldr r0, [r4]
	ldr r1, _08007490 @ =0x00001081
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	beq _08007484
_08007466:
	ldr r0, [sp]
	bl sub_080074A0
	ldr r0, [sp]
	bl sub_080074E4
	ldr r0, _08007488 @ =gUnk_030023E8
	ldr r0, [r0]
	ldr r1, _08007490 @ =0x00001081
	adds r0, r0, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #0
	bne _08007494
_08007484:
	movs r0, #0
	b _08007496
	.align 2, 0
_08007488: .4byte gUnk_030023E8
_0800748C: .4byte 0xFFFF0000
_08007490: .4byte 0x00001081
_08007494:
	movs r0, #1
_08007496:
	add sp, #4
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_080074A0
sub_080074A0: @ 0x080074A0
	push {r4, lr}
	lsrs r0, r0, #8
	movs r1, #0x80
	ands r1, r0
	cmp r1, #0
	beq _080074D6
	ldr r4, _080074DC @ =gUnk_030023E8
	ldr r0, [r4]
	adds r0, #0x48
	bl sub_08001FB0
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080074D6
	ldr r0, [r4]
	adds r1, r0, #0
	adds r1, #0x48
	ldrh r1, [r1]
	ldr r2, _080074E0 @ =0x0000107C
	adds r0, r0, r2
	strh r1, [r0]
	bl sub_08007588
	bl sub_08007624
	bl sub_08007674
_080074D6:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_080074DC: .4byte gUnk_030023E8
_080074E0: .4byte 0x0000107C

	thumb_func_start sub_080074E4
sub_080074E4: @ 0x080074E4
	push {r4, r5, lr}
	lsrs r0, r0, #8
	movs r1, #0x40
	ands r1, r0
	cmp r1, #0
	bne _0800756E
	ldr r4, _08007574 @ =gUnk_030023E8
	ldr r2, [r4]
	ldr r5, _08007578 @ =0x0000107C
	adds r1, r2, r5
	ldrh r0, [r1]
	strh r0, [r2]
	ldrh r1, [r1]
	ldr r0, _0800757C @ =0x00003333
	cmp r1, r0
	bne _0800752E
	ldr r1, _08007580 @ =0x0000107E
	adds r0, r2, r1
	ldrb r0, [r0]
	strb r0, [r2, #2]
	ldr r2, [r4]
	adds r1, #1
	adds r0, r2, r1
	ldrb r0, [r0]
	strb r0, [r2, #3]
	ldr r0, [r4]
	adds r1, r0, r1
	ldrb r1, [r1]
	lsls r1, r1, #0x18
	asrs r1, r1, #0x18
	lsls r1, r1, #6
	adds r1, r1, r0
	adds r1, #0x78
	adds r0, #4
	movs r2, #0x40
	bl memcpy
_0800752E:
	bl sub_08007738
	ldr r0, [r4]
	bl sub_08001EC8
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _0800756E
	ldr r2, [r4]
	ldrh r1, [r2]
	ldr r0, _08007584 @ =0x00001111
	cmp r1, r0
	bne _08007552
	subs r0, #0x90
	adds r1, r2, r0
	movs r0, #1
	strb r0, [r1]
_08007552:
	ldr r2, [r4]
	adds r0, r2, r5
	strh r3, [r0]
	movs r1, #0x84
	lsls r1, r1, #5
	adds r0, r2, r1
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #2
	bne _0800756E
	ldr r0, [r2, #0x58]
	adds r0, #1
	str r0, [r2, #0x58]
_0800756E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08007574: .4byte gUnk_030023E8
_08007578: .4byte 0x0000107C
_0800757C: .4byte 0x00003333
_08007580: .4byte 0x0000107E
_08007584: .4byte 0x00001111

	thumb_func_start sub_08007588
sub_08007588: @ 0x08007588
	push {r4, lr}
	sub sp, #0xc
	ldr r0, _08007614 @ =gUnk_030023E8
	ldr r2, [r0]
	ldr r1, _08007618 @ =0x0000107C
	adds r0, r2, r1
	ldrh r1, [r0]
	ldr r0, _0800761C @ =0x00002222
	cmp r1, r0
	bne _0800760A
	ldr r0, _08007620 @ =0x00001078
	adds r1, r2, r0
	ldr r4, [r2, #0x4c]
	ldr r0, [r1]
	cmp r4, r0
	beq _0800760A
	str r4, [r1]
	lsrs r0, r4, #0x1d
	adds r0, #3
	bl sub_080035A4
	mov r1, sp
	strb r0, [r1]
	lsls r0, r4, #3
	lsrs r0, r0, #0x1c
	bl sub_080035A4
	mov r1, sp
	strb r0, [r1, #1]
	lsls r0, r4, #7
	lsrs r0, r0, #0x1b
	bl sub_080035A4
	mov r1, sp
	strb r0, [r1, #2]
	lsls r0, r4, #0x1d
	lsrs r0, r0, #0x1d
	strb r0, [r1, #3]
	lsls r0, r4, #0xc
	lsrs r0, r0, #0x1b
	bl sub_080035A4
	mov r1, sp
	strb r0, [r1, #4]
	lsls r0, r4, #0x11
	lsrs r0, r0, #0x1a
	bl sub_080035A4
	mov r1, sp
	strb r0, [r1, #5]
	lsls r0, r4, #0x17
	lsrs r0, r0, #0x1a
	bl sub_080035A4
	mov r1, sp
	strb r0, [r1, #6]
_080075F8:
	mov r0, sp
	bl sub_0800C154
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _080075F8
	movs r0, #1
	bl sub_0800278C
_0800760A:
	add sp, #0xc
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08007614: .4byte gUnk_030023E8
_08007618: .4byte 0x0000107C
_0800761C: .4byte 0x00002222
_08007620: .4byte 0x00001078

	thumb_func_start sub_08007624
sub_08007624: @ 0x08007624
	push {r4, lr}
	ldr r3, _08007660 @ =gUnk_030023E8
	ldr r2, [r3]
	ldr r1, _08007664 @ =0x0000107C
	adds r0, r2, r1
	ldrh r1, [r0]
	ldr r0, _08007668 @ =0x00003333
	cmp r1, r0
	bne _08007658
	adds r0, r2, #0
	adds r0, #0x4b
	ldrb r1, [r0]
	ldr r4, _0800766C @ =0x0000107F
	adds r0, r2, r4
	strb r1, [r0]
	ldr r0, [r3]
	adds r1, r0, #0
	adds r1, #0x4a
	ldrb r2, [r1]
	ldr r3, _08007670 @ =0x0000107E
	adds r1, r0, r3
	movs r0, #0
	ldrsb r0, [r1, r0]
	cmp r2, r0
	beq _08007658
	strb r2, [r1]
_08007658:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08007660: .4byte gUnk_030023E8
_08007664: .4byte 0x0000107C
_08007668: .4byte 0x00003333
_0800766C: .4byte 0x0000107F
_08007670: .4byte 0x0000107E

	thumb_func_start sub_08007674
sub_08007674: @ 0x08007674
	push {r4, lr}
	ldr r4, _080076C4 @ =gUnk_030023E8
	ldr r1, [r4]
	ldr r2, _080076C8 @ =0x0000107C
	adds r0, r1, r2
	ldrh r2, [r0]
	ldr r0, _080076CC @ =0x00005555
	cmp r2, r0
	bne _080076D0
	movs r2, #0x84
	lsls r2, r2, #5
	adds r0, r1, r2
	ldrb r0, [r0]
	lsls r0, r0, #0x18
	asrs r0, r0, #0x18
	cmp r0, #1
	beq _080076FA
	adds r0, r1, #0
	adds r0, #0x58
	movs r1, #0
	movs r2, #0x10
	bl memset
	ldr r0, [r4]
	adds r0, #0x68
	movs r1, #0
	movs r2, #0x10
	bl memset
	ldr r0, [r4]
	movs r1, #1
	rsbs r1, r1, #0
	str r1, [r0, #0x68]
	movs r1, #0x84
	lsls r1, r1, #5
	adds r0, r0, r1
	movs r1, #1
	strb r1, [r0]
	b _080076FA
	.align 2, 0
_080076C4: .4byte gUnk_030023E8
_080076C8: .4byte 0x0000107C
_080076CC: .4byte 0x00005555
_080076D0:
	ldr r0, _080076EC @ =0x00004444
	cmp r2, r0
	bne _080076F0
	bl sub_08007700
	ldr r2, [r4]
	ldr r1, [r2, #0x4c]
	ldr r0, [r1, #4]
	str r0, [r2, #0x5c]
	ldr r0, [r1, #8]
	str r0, [r2, #0x60]
	ldr r0, [r1, #0xc]
	str r0, [r2, #0x64]
	b _080076FA
	.align 2, 0
_080076EC: .4byte 0x00004444
_080076F0:
	movs r2, #0x84
	lsls r2, r2, #5
	adds r1, r1, r2
	movs r0, #0
	strb r0, [r1]
_080076FA:
	pop {r4}
	pop {r0}
	bx r0

	thumb_func_start sub_08007700
sub_08007700: @ 0x08007700
	push {lr}
	ldr r2, _08007718 @ =gUnk_030023E8
	ldr r3, [r2]
	ldr r1, [r3, #0x4c]
	ldr r0, [r3, #0x68]
	subs r1, r1, r0
	cmp r1, #1
	bne _0800771C
	ldr r0, [r3, #0x6c]
	adds r0, #1
	str r0, [r3, #0x6c]
	b _0800772E
	.align 2, 0
_08007718: .4byte gUnk_030023E8
_0800771C:
	cmp r1, #1
	bls _08007728
	ldr r0, [r3, #0x70]
	adds r0, #1
	str r0, [r3, #0x70]
	b _0800772E
_08007728:
	ldr r0, [r3, #0x74]
	adds r0, #1
	str r0, [r3, #0x74]
_0800772E:
	ldr r1, [r2]
	ldr r0, [r1, #0x4c]
	str r0, [r1, #0x68]
	pop {r0}
	bx r0

	thumb_func_start sub_08007738
sub_08007738: @ 0x08007738
	push {r4, lr}
	sub sp, #0x10
	ldr r0, _0800775C @ =gUnk_030023E8
	ldr r1, [r0]
	movs r0, #0x84
	lsls r0, r0, #5
	adds r2, r1, r0
	movs r0, #0
	ldrsb r0, [r2, r0]
	cmp r0, #0
	beq _08007784
	cmp r0, #1
	bne _08007764
	ldr r0, _08007760 @ =0x00005555
	strh r0, [r1]
	movs r0, #2
	strb r0, [r2]
	b _08007784
	.align 2, 0
_0800775C: .4byte gUnk_030023E8
_08007760: .4byte 0x00005555
_08007764:
	ldr r0, _0800778C @ =0x00004444
	strh r0, [r1]
	ldr r0, [r1, #0x58]
	str r0, [sp]
	ldr r0, [r1, #0x6c]
	str r0, [sp, #4]
	ldr r0, [r1, #0x70]
	str r0, [sp, #8]
	ldr r0, [r1, #0x74]
	str r0, [sp, #0xc]
	adds r1, #4
	mov r0, sp
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
_08007784:
	add sp, #0x10
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800778C: .4byte 0x00004444

	thumb_func_start STWI_init_all
STWI_init_all: @ 0x08007790
	push {r4, lr}
	adds r3, r0, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	cmp r2, #1
	bne _080077CC
	adds r2, r3, #0
	adds r2, #0xe8
	str r2, [r1]
	ldr r1, _080077B8 @ =0x040000D4
	ldr r0, _080077BC @ =IntrSIO32
	str r0, [r1]
	str r2, [r1, #4]
	ldr r0, _080077C0 @ =0x800004B0
	str r0, [r1, #8]
	ldr r0, [r1, #8]
	ldr r1, _080077C4 @ =gUnk_03002500
	ldr r2, _080077C8 @ =0x00000A48
	adds r0, r3, r2
	b _080077D6
	.align 2, 0
_080077B8: .4byte 0x040000D4
_080077BC: .4byte IntrSIO32
_080077C0: .4byte 0x800004B0
_080077C4: .4byte gUnk_03002500
_080077C8: .4byte 0x00000A48
_080077CC:
	ldr r0, _08007850 @ =IntrSIO32
	str r0, [r1]
	ldr r1, _08007854 @ =gUnk_03002500
	adds r0, r3, #0
	adds r0, #0xe8
_080077D6:
	str r0, [r1]
	adds r2, r1, #0
	ldr r1, [r2]
	str r3, [r1, #0x28]
	adds r0, r3, #0
	adds r0, #0x74
	str r0, [r1, #0x24]
	ldrb r0, [r1, #0x14]
	movs r4, #0
	movs r0, #1
	strb r0, [r1, #0x14]
	ldr r0, [r2]
	str r4, [r0]
	strb r4, [r0, #4]
	ldr r0, [r2]
	strb r4, [r0, #5]
	ldr r0, [r2]
	strb r4, [r0, #7]
	ldr r0, [r2]
	strb r4, [r0, #8]
	ldr r0, [r2]
	strb r4, [r0, #9]
	ldr r0, [r2]
	str r4, [r0, #0xc]
	ldrb r1, [r0, #0x10]
	strb r4, [r0, #0x10]
	ldr r0, [r2]
	ldrh r1, [r0, #0x12]
	movs r1, #0
	strh r4, [r0, #0x12]
	strb r1, [r0, #0x15]
	ldr r0, [r2]
	adds r0, #0x2c
	ldrb r2, [r0]
	strb r1, [r0]
	ldr r1, _08007858 @ =0x04000134
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	subs r1, #0xc
	ldr r2, _0800785C @ =0x00005003
	adds r0, r2, #0
	strh r0, [r1]
	bl STWI_init_Callback_M
	bl STWI_init_Callback_S
	ldr r3, _08007860 @ =0x04000208
	ldrh r2, [r3]
	strh r4, [r3]
	ldr r4, _08007864 @ =0x04000200
	ldrh r0, [r4]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r4]
	strh r2, [r3]
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08007850: .4byte IntrSIO32
_08007854: .4byte gUnk_03002500
_08007858: .4byte 0x04000134
_0800785C: .4byte 0x00005003
_08007860: .4byte 0x04000208
_08007864: .4byte 0x04000200

	thumb_func_start STWI_init_timer
STWI_init_timer: @ 0x08007868
	push {r4, r5, lr}
	ldr r2, _08007894 @ =STWI_intr_timer
	str r2, [r0]
	ldr r5, _08007898 @ =gUnk_03002500
	ldr r0, [r5]
	movs r4, #0
	strb r1, [r0, #0xa]
	ldr r3, _0800789C @ =0x04000208
	ldrh r2, [r3]
	strh r4, [r3]
	ldr r4, _080078A0 @ =0x04000200
	ldr r1, [r5]
	movs r0, #8
	ldrb r1, [r1, #0xa]
	lsls r0, r1
	ldrh r1, [r4]
	orrs r0, r1
	strh r0, [r4]
	strh r2, [r3]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08007894: .4byte STWI_intr_timer
_08007898: .4byte gUnk_03002500
_0800789C: .4byte 0x04000208
_080078A0: .4byte 0x04000200

	thumb_func_start AgbRFU_SoftReset
AgbRFU_SoftReset: @ 0x080078A4
	push {r4, r5, lr}
	ldr r5, _0800793C @ =0x04000134
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r1, #0
	strh r0, [r5]
	ldr r2, _08007940 @ =0x000080A0
	adds r0, r2, #0
	strh r0, [r5]
	ldr r1, _08007944 @ =gUnk_03002500
	ldr r0, [r1]
	ldrb r0, [r0, #0xa]
	lsls r0, r0, #2
	ldr r3, _08007948 @ =0x04000100
	adds r2, r0, r3
	ldr r4, _0800794C @ =0x04000102
	adds r3, r0, r4
	movs r0, #0
	strh r0, [r3]
	strh r0, [r2]
	movs r0, #0x83
	strh r0, [r3]
	ldrh r0, [r2]
	adds r4, r1, #0
	cmp r0, #0x11
	bhi _080078E4
	ldr r0, _08007950 @ =0x000080A2
	adds r1, r0, #0
_080078DC:
	strh r1, [r5]
	ldrh r0, [r2]
	cmp r0, #0x11
	bls _080078DC
_080078E4:
	movs r0, #3
	strh r0, [r3]
	ldr r1, _0800793C @ =0x04000134
	ldr r2, _08007940 @ =0x000080A0
	adds r0, r2, #0
	strh r0, [r1]
	subs r1, #0xc
	ldr r3, _08007954 @ =0x00005003
	adds r0, r3, #0
	strh r0, [r1]
	ldr r0, [r4]
	movs r2, #0
	str r2, [r0]
	strb r2, [r0, #4]
	ldr r0, [r4]
	strb r2, [r0, #5]
	ldr r0, [r4]
	strb r2, [r0, #6]
	ldr r0, [r4]
	strb r2, [r0, #7]
	ldr r0, [r4]
	strb r2, [r0, #8]
	ldr r0, [r4]
	strb r2, [r0, #9]
	ldr r0, [r4]
	str r2, [r0, #0xc]
	ldrb r1, [r0, #0x10]
	strb r2, [r0, #0x10]
	ldr r1, [r4]
	ldrh r0, [r1, #0x12]
	movs r3, #0
	strh r2, [r1, #0x12]
	ldrb r0, [r1, #0x14]
	movs r0, #1
	strb r0, [r1, #0x14]
	ldr r0, [r4]
	strb r3, [r0, #0x15]
	ldr r0, [r4]
	adds r0, #0x2c
	ldrb r1, [r0]
	strb r3, [r0]
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800793C: .4byte 0x04000134
_08007940: .4byte 0x000080A0
_08007944: .4byte gUnk_03002500
_08007948: .4byte 0x04000100
_0800794C: .4byte 0x04000102
_08007950: .4byte 0x000080A2
_08007954: .4byte 0x00005003

	thumb_func_start STWI_set_MS_mode
STWI_set_MS_mode: @ 0x08007958
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _08007968 @ =gUnk_03002500
	ldr r1, [r1]
	ldrb r2, [r1, #0x14]
	strb r0, [r1, #0x14]
	bx lr
	.align 2, 0
_08007968: .4byte gUnk_03002500

	thumb_func_start STWI_read_status
STWI_read_status: @ 0x0800796C
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r1, r0, #0
	cmp r0, #1
	beq _08007998
	cmp r0, #1
	bgt _08007982
	cmp r0, #0
	beq _0800798C
	b _080079C0
_08007982:
	cmp r1, #2
	beq _080079A4
	cmp r1, #3
	beq _080079B4
	b _080079C0
_0800798C:
	ldr r0, _08007994 @ =gUnk_03002500
	ldr r0, [r0]
	ldrh r0, [r0, #0x12]
	b _080079C2
	.align 2, 0
_08007994: .4byte gUnk_03002500
_08007998:
	ldr r0, _080079A0 @ =gUnk_03002500
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	b _080079C2
	.align 2, 0
_080079A0: .4byte gUnk_03002500
_080079A4:
	ldr r0, _080079B0 @ =gUnk_03002500
	ldr r0, [r0]
	ldr r0, [r0]
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	b _080079C2
	.align 2, 0
_080079B0: .4byte gUnk_03002500
_080079B4:
	ldr r0, _080079BC @ =gUnk_03002500
	ldr r0, [r0]
	ldrb r0, [r0, #6]
	b _080079C2
	.align 2, 0
_080079BC: .4byte gUnk_03002500
_080079C0:
	ldr r0, _080079C8 @ =0x0000FFFF
_080079C2:
	pop {r1}
	bx r1
	.align 2, 0
_080079C8: .4byte 0x0000FFFF

	thumb_func_start STWI_init_Callback_M
STWI_init_Callback_M: @ 0x080079CC
	push {lr}
	movs r0, #0
	bl STWI_set_Callback_M
	pop {r0}
	bx r0

	thumb_func_start STWI_init_Callback_S
STWI_init_Callback_S: @ 0x080079D8
	push {lr}
	movs r0, #0
	bl STWI_set_Callback_S
	pop {r0}
	bx r0

	thumb_func_start STWI_set_Callback_M
STWI_set_Callback_M: @ 0x080079E4
	ldr r1, _080079EC @ =gUnk_03002500
	ldr r1, [r1]
	str r0, [r1, #0x18]
	bx lr
	.align 2, 0
_080079EC: .4byte gUnk_03002500

	thumb_func_start STWI_set_Callback_S
STWI_set_Callback_S: @ 0x080079F0
	ldr r1, _080079F8 @ =gUnk_03002500
	ldr r1, [r1]
	str r0, [r1, #0x1c]
	bx lr
	.align 2, 0
_080079F8: .4byte gUnk_03002500

	thumb_func_start STWI_set_Callback_ID
STWI_set_Callback_ID: @ 0x080079FC
	ldr r1, _08007A04 @ =gUnk_03002500
	ldr r1, [r1]
	str r0, [r1, #0x20]
	bx lr
	.align 2, 0
_08007A04: .4byte gUnk_03002500

	thumb_func_start STWI_poll_CommandEnd
STWI_poll_CommandEnd: @ 0x08007A08
	push {lr}
	ldr r0, _08007A2C @ =gUnk_03002500
	ldr r1, [r0]
	adds r2, r1, #0
	adds r2, #0x2c
	ldrb r1, [r2]
	adds r3, r0, #0
	cmp r1, #1
	bne _08007A22
	adds r1, r2, #0
_08007A1C:
	ldrb r0, [r1]
	cmp r0, #1
	beq _08007A1C
_08007A22:
	ldr r0, [r3]
	ldrh r0, [r0, #0x12]
	pop {r1}
	bx r1
	.align 2, 0
_08007A2C: .4byte gUnk_03002500

	thumb_func_start STWI_send_ResetREQ
STWI_send_ResetREQ: @ 0x08007A30
	push {lr}
	movs r0, #0x10
	bl STWI_init
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08007A4A
	ldr r0, _08007A50 @ =gUnk_03002500
	ldr r0, [r0]
	strb r1, [r0, #4]
	bl STWI_start_Command
_08007A4A:
	pop {r0}
	bx r0
	.align 2, 0
_08007A50: .4byte gUnk_03002500

	thumb_func_start STWI_send_LinkStatusREQ
STWI_send_LinkStatusREQ: @ 0x08007A54
	push {lr}
	movs r0, #0x11
	bl STWI_init
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08007A6E
	ldr r0, _08007A74 @ =gUnk_03002500
	ldr r0, [r0]
	strb r1, [r0, #4]
	bl STWI_start_Command
_08007A6E:
	pop {r0}
	bx r0
	.align 2, 0
_08007A74: .4byte gUnk_03002500

	thumb_func_start STWI_send_VersionStatusREQ
STWI_send_VersionStatusREQ: @ 0x08007A78
	push {lr}
	movs r0, #0x12
	bl STWI_init
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08007A92
	ldr r0, _08007A98 @ =gUnk_03002500
	ldr r0, [r0]
	strb r1, [r0, #4]
	bl STWI_start_Command
_08007A92:
	pop {r0}
	bx r0
	.align 2, 0
_08007A98: .4byte gUnk_03002500

	thumb_func_start STWI_send_SystemStatusREQ
STWI_send_SystemStatusREQ: @ 0x08007A9C
	push {lr}
	movs r0, #0x13
	bl STWI_init
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08007AB6
	ldr r0, _08007ABC @ =gUnk_03002500
	ldr r0, [r0]
	strb r1, [r0, #4]
	bl STWI_start_Command
_08007AB6:
	pop {r0}
	bx r0
	.align 2, 0
_08007ABC: .4byte gUnk_03002500

	thumb_func_start STWI_send_SlotStatusREQ
STWI_send_SlotStatusREQ: @ 0x08007AC0
	push {lr}
	movs r0, #0x14
	bl STWI_init
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08007ADA
	ldr r0, _08007AE0 @ =gUnk_03002500
	ldr r0, [r0]
	strb r1, [r0, #4]
	bl STWI_start_Command
_08007ADA:
	pop {r0}
	bx r0
	.align 2, 0
_08007AE0: .4byte gUnk_03002500

	thumb_func_start STWI_send_ConfigStatusREQ
STWI_send_ConfigStatusREQ: @ 0x08007AE4
	push {lr}
	movs r0, #0x15
	bl STWI_init
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08007AFE
	ldr r0, _08007B04 @ =gUnk_03002500
	ldr r0, [r0]
	strb r1, [r0, #4]
	bl STWI_start_Command
_08007AFE:
	pop {r0}
	bx r0
	.align 2, 0
_08007B04: .4byte gUnk_03002500

	thumb_func_start STWI_send_GameConfigREQ
STWI_send_GameConfigREQ: @ 0x08007B08
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	movs r0, #0x16
	bl STWI_init
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08007B54
	ldr r2, _08007B5C @ =gUnk_03002500
	ldr r1, [r2]
	movs r0, #6
	strb r0, [r1, #4]
	ldr r0, [r2]
	ldr r1, [r0, #0x24]
	adds r1, #4
	ldrh r0, [r4]
	strh r0, [r1]
	adds r1, #2
	adds r4, #2
	movs r2, #0xd
_08007B32:
	ldrb r0, [r4]
	strb r0, [r1]
	adds r1, #1
	adds r4, #1
	subs r2, #1
	cmp r2, #0
	bge _08007B32
	movs r2, #7
_08007B42:
	ldrb r0, [r5]
	strb r0, [r1]
	adds r1, #1
	adds r5, #1
	subs r2, #1
	cmp r2, #0
	bge _08007B42
	bl STWI_start_Command
_08007B54:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08007B5C: .4byte gUnk_03002500

	thumb_func_start STWI_send_SystemConfigREQ
STWI_send_SystemConfigREQ: @ 0x08007B60
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r6, r0, #0x10
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r4, r2, #0x18
	movs r0, #0x17
	bl STWI_init
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08007B96
	ldr r2, _08007B9C @ =gUnk_03002500
	ldr r1, [r2]
	movs r0, #1
	strb r0, [r1, #4]
	ldr r0, [r2]
	ldr r0, [r0, #0x24]
	adds r0, #4
	strb r4, [r0]
	adds r0, #1
	strb r5, [r0]
	adds r0, #1
	strh r6, [r0]
	bl STWI_start_Command
_08007B96:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08007B9C: .4byte gUnk_03002500

	thumb_func_start STWI_send_SC_StartREQ
STWI_send_SC_StartREQ: @ 0x08007BA0
	push {lr}
	movs r0, #0x19
	bl STWI_init
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08007BBA
	ldr r0, _08007BC0 @ =gUnk_03002500
	ldr r0, [r0]
	strb r1, [r0, #4]
	bl STWI_start_Command
_08007BBA:
	pop {r0}
	bx r0
	.align 2, 0
_08007BC0: .4byte gUnk_03002500

	thumb_func_start STWI_send_SC_PollingREQ
STWI_send_SC_PollingREQ: @ 0x08007BC4
	push {lr}
	movs r0, #0x1a
	bl STWI_init
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08007BDE
	ldr r0, _08007BE4 @ =gUnk_03002500
	ldr r0, [r0]
	strb r1, [r0, #4]
	bl STWI_start_Command
_08007BDE:
	pop {r0}
	bx r0
	.align 2, 0
_08007BE4: .4byte gUnk_03002500

	thumb_func_start STWI_send_SC_EndREQ
STWI_send_SC_EndREQ: @ 0x08007BE8
	push {lr}
	movs r0, #0x1b
	bl STWI_init
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08007C02
	ldr r0, _08007C08 @ =gUnk_03002500
	ldr r0, [r0]
	strb r1, [r0, #4]
	bl STWI_start_Command
_08007C02:
	pop {r0}
	bx r0
	.align 2, 0
_08007C08: .4byte gUnk_03002500

	thumb_func_start STWI_send_SP_StartREQ
STWI_send_SP_StartREQ: @ 0x08007C0C
	push {lr}
	movs r0, #0x1c
	bl STWI_init
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08007C26
	ldr r0, _08007C2C @ =gUnk_03002500
	ldr r0, [r0]
	strb r1, [r0, #4]
	bl STWI_start_Command
_08007C26:
	pop {r0}
	bx r0
	.align 2, 0
_08007C2C: .4byte gUnk_03002500

	thumb_func_start STWI_send_SP_PollingREQ
STWI_send_SP_PollingREQ: @ 0x08007C30
	push {lr}
	movs r0, #0x1d
	bl STWI_init
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08007C4A
	ldr r0, _08007C50 @ =gUnk_03002500
	ldr r0, [r0]
	strb r1, [r0, #4]
	bl STWI_start_Command
_08007C4A:
	pop {r0}
	bx r0
	.align 2, 0
_08007C50: .4byte gUnk_03002500

	thumb_func_start STWI_send_SP_EndREQ
STWI_send_SP_EndREQ: @ 0x08007C54
	push {lr}
	movs r0, #0x1e
	bl STWI_init
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08007C6E
	ldr r0, _08007C74 @ =gUnk_03002500
	ldr r0, [r0]
	strb r1, [r0, #4]
	bl STWI_start_Command
_08007C6E:
	pop {r0}
	bx r0
	.align 2, 0
_08007C74: .4byte gUnk_03002500

	thumb_func_start STWI_send_CP_StartREQ
STWI_send_CP_StartREQ: @ 0x08007C78
	push {r4, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r0, #0x1f
	bl STWI_init
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08007C9C
	ldr r2, _08007CA4 @ =gUnk_03002500
	ldr r1, [r2]
	movs r0, #1
	strb r0, [r1, #4]
	ldr r0, [r2]
	ldr r0, [r0, #0x24]
	str r4, [r0, #4]
	bl STWI_start_Command
_08007C9C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08007CA4: .4byte gUnk_03002500

	thumb_func_start STWI_send_CP_PollingREQ
STWI_send_CP_PollingREQ: @ 0x08007CA8
	push {lr}
	movs r0, #0x20
	bl STWI_init
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08007CC2
	ldr r0, _08007CC8 @ =gUnk_03002500
	ldr r0, [r0]
	strb r1, [r0, #4]
	bl STWI_start_Command
_08007CC2:
	pop {r0}
	bx r0
	.align 2, 0
_08007CC8: .4byte gUnk_03002500

	thumb_func_start STWI_send_CP_EndREQ
STWI_send_CP_EndREQ: @ 0x08007CCC
	push {lr}
	movs r0, #0x21
	bl STWI_init
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08007CE6
	ldr r0, _08007CEC @ =gUnk_03002500
	ldr r0, [r0]
	strb r1, [r0, #4]
	bl STWI_start_Command
_08007CE6:
	pop {r0}
	bx r0
	.align 2, 0
_08007CEC: .4byte gUnk_03002500

	thumb_func_start STWI_send_DataTxREQ
STWI_send_DataTxREQ: @ 0x08007CF0
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	lsls r4, r1, #0x18
	lsrs r5, r4, #0x18
	movs r0, #0x24
	bl STWI_init
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08007D2E
	lsrs r2, r4, #0x1a
	movs r0, #3
	ands r0, r5
	cmp r0, #0
	beq _08007D10
	adds r2, #1
_08007D10:
	ldr r1, _08007D34 @ =gUnk_03002500
	ldr r0, [r1]
	strb r2, [r0, #4]
	ldr r0, [r1]
	ldr r1, [r0, #0x24]
	adds r1, #4
	ldrb r2, [r0, #4]
	movs r0, #0x80
	lsls r0, r0, #0x13
	orrs r2, r0
	adds r0, r6, #0
	bl CpuSet
	bl STWI_start_Command
_08007D2E:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08007D34: .4byte gUnk_03002500

	thumb_func_start STWI_send_DataTxAndChangeREQ
STWI_send_DataTxAndChangeREQ: @ 0x08007D38
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	lsls r4, r1, #0x18
	lsrs r5, r4, #0x18
	movs r0, #0x25
	bl STWI_init
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08007D76
	lsrs r2, r4, #0x1a
	movs r0, #3
	ands r0, r5
	cmp r0, #0
	beq _08007D58
	adds r2, #1
_08007D58:
	ldr r1, _08007D7C @ =gUnk_03002500
	ldr r0, [r1]
	strb r2, [r0, #4]
	ldr r0, [r1]
	ldr r1, [r0, #0x24]
	adds r1, #4
	ldrb r2, [r0, #4]
	movs r0, #0x80
	lsls r0, r0, #0x13
	orrs r2, r0
	adds r0, r6, #0
	bl CpuSet
	bl STWI_start_Command
_08007D76:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08007D7C: .4byte gUnk_03002500

	thumb_func_start STWI_send_DataRxREQ
STWI_send_DataRxREQ: @ 0x08007D80
	push {lr}
	movs r0, #0x26
	bl STWI_init
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08007D9A
	ldr r0, _08007DA0 @ =gUnk_03002500
	ldr r0, [r0]
	strb r1, [r0, #4]
	bl STWI_start_Command
_08007D9A:
	pop {r0}
	bx r0
	.align 2, 0
_08007DA0: .4byte gUnk_03002500

	thumb_func_start STWI_send_MS_ChangeREQ
STWI_send_MS_ChangeREQ: @ 0x08007DA4
	push {lr}
	movs r0, #0x27
	bl STWI_init
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08007DBE
	ldr r0, _08007DC4 @ =gUnk_03002500
	ldr r0, [r0]
	strb r1, [r0, #4]
	bl STWI_start_Command
_08007DBE:
	pop {r0}
	bx r0
	.align 2, 0
_08007DC4: .4byte gUnk_03002500

	thumb_func_start STWI_send_DataReadyAndChangeREQ
STWI_send_DataReadyAndChangeREQ: @ 0x08007DC8
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r5, r4, #0
	movs r0, #0x28
	bl STWI_init
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _08007E0E
	cmp r4, #0
	bne _08007DF0
	ldr r0, _08007DEC @ =gUnk_03002500
	ldr r0, [r0]
	strb r3, [r0, #4]
	b _08007E0A
	.align 2, 0
_08007DEC: .4byte gUnk_03002500
_08007DF0:
	ldr r2, _08007E14 @ =gUnk_03002500
	ldr r1, [r2]
	movs r0, #1
	strb r0, [r1, #4]
	ldr r0, [r2]
	ldr r0, [r0, #0x24]
	adds r0, #4
	strb r5, [r0]
	adds r0, #1
	strb r3, [r0]
	adds r0, #1
	strb r3, [r0]
	strb r3, [r0, #1]
_08007E0A:
	bl STWI_start_Command
_08007E0E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08007E14: .4byte gUnk_03002500

	thumb_func_start STWI_send_DisconnectedAndChangeREQ
STWI_send_DisconnectedAndChangeREQ: @ 0x08007E18
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r5, r1, #0x18
	movs r0, #0x29
	bl STWI_init
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #0
	bne _08007E4E
	ldr r2, _08007E54 @ =gUnk_03002500
	ldr r1, [r2]
	movs r0, #1
	strb r0, [r1, #4]
	ldr r0, [r2]
	ldr r0, [r0, #0x24]
	adds r0, #4
	strb r4, [r0]
	adds r0, #1
	strb r5, [r0]
	adds r0, #1
	strb r3, [r0]
	strb r3, [r0, #1]
	bl STWI_start_Command
_08007E4E:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08007E54: .4byte gUnk_03002500

	thumb_func_start STWI_send_ResumeRetransmitAndChangeREQ
STWI_send_ResumeRetransmitAndChangeREQ: @ 0x08007E58
	push {lr}
	movs r0, #0x37
	bl STWI_init
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08007E72
	ldr r0, _08007E78 @ =gUnk_03002500
	ldr r0, [r0]
	strb r1, [r0, #4]
	bl STWI_start_Command
_08007E72:
	pop {r0}
	bx r0
	.align 2, 0
_08007E78: .4byte gUnk_03002500

	thumb_func_start STWI_send_DisconnectREQ
STWI_send_DisconnectREQ: @ 0x08007E7C
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	movs r0, #0x30
	bl STWI_init
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08007EA0
	ldr r2, _08007EA8 @ =gUnk_03002500
	ldr r1, [r2]
	movs r0, #1
	strb r0, [r1, #4]
	ldr r0, [r2]
	ldr r0, [r0, #0x24]
	str r4, [r0, #4]
	bl STWI_start_Command
_08007EA0:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08007EA8: .4byte gUnk_03002500

	thumb_func_start STWI_send_TestModeREQ
STWI_send_TestModeREQ: @ 0x08007EAC
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r4, r1, #0x18
	movs r0, #0x31
	bl STWI_init
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08007ED8
	ldr r2, _08007EE0 @ =gUnk_03002500
	ldr r1, [r2]
	movs r0, #1
	strb r0, [r1, #4]
	ldr r0, [r2]
	ldr r1, [r0, #0x24]
	lsls r0, r4, #8
	orrs r0, r5
	str r0, [r1, #4]
	bl STWI_start_Command
_08007ED8:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08007EE0: .4byte gUnk_03002500

	thumb_func_start STWI_send_CPR_StartREQ
STWI_send_CPR_StartREQ: @ 0x08007EE4
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	movs r0, #0x32
	bl STWI_init
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08007F16
	ldr r2, _08007F1C @ =gUnk_03002500
	ldr r1, [r2]
	movs r0, #2
	strb r0, [r1, #4]
	lsls r0, r5, #0x10
	orrs r0, r4
	ldr r1, [r2]
	ldr r1, [r1, #0x24]
	str r0, [r1, #4]
	str r6, [r1, #8]
	bl STWI_start_Command
_08007F16:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08007F1C: .4byte gUnk_03002500

	thumb_func_start STWI_send_CPR_PollingREQ
STWI_send_CPR_PollingREQ: @ 0x08007F20
	push {lr}
	movs r0, #0x33
	bl STWI_init
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08007F3A
	ldr r0, _08007F40 @ =gUnk_03002500
	ldr r0, [r0]
	strb r1, [r0, #4]
	bl STWI_start_Command
_08007F3A:
	pop {r0}
	bx r0
	.align 2, 0
_08007F40: .4byte gUnk_03002500

	thumb_func_start STWI_send_CPR_EndREQ
STWI_send_CPR_EndREQ: @ 0x08007F44
	push {lr}
	movs r0, #0x34
	bl STWI_init
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08007F5E
	ldr r0, _08007F64 @ =gUnk_03002500
	ldr r0, [r0]
	strb r1, [r0, #4]
	bl STWI_start_Command
_08007F5E:
	pop {r0}
	bx r0
	.align 2, 0
_08007F64: .4byte gUnk_03002500

	thumb_func_start STWI_send_StopModeREQ
STWI_send_StopModeREQ: @ 0x08007F68
	push {lr}
	movs r0, #0x3d
	bl STWI_init
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08007F82
	ldr r0, _08007F88 @ =gUnk_03002500
	ldr r0, [r0]
	strb r1, [r0, #4]
	bl STWI_start_Command
_08007F82:
	pop {r0}
	bx r0
	.align 2, 0
_08007F88: .4byte gUnk_03002500

	thumb_func_start STWI_intr_timer
STWI_intr_timer: @ 0x08007F8C
	push {r4, lr}
	ldr r4, _08007FA4 @ =gUnk_03002500
	ldr r1, [r4]
	ldr r0, [r1, #0xc]
	cmp r0, #2
	beq _08007FB2
	cmp r0, #2
	bhi _08007FA8
	cmp r0, #1
	beq _08007FC0
	b _08007FE8
	.align 2, 0
_08007FA4: .4byte gUnk_03002500
_08007FA8:
	cmp r0, #3
	beq _08007FCA
	cmp r0, #4
	beq _08007FC0
	b _08007FE8
_08007FB2:
	ldrb r0, [r1, #0x10]
	movs r0, #1
	strb r0, [r1, #0x10]
	movs r0, #0x32
	bl STWI_set_timer
	b _08007FE8
_08007FC0:
	bl STWI_stop_timer
	bl STWI_restart_Command
	b _08007FE8
_08007FCA:
	ldrb r0, [r1, #0x10]
	movs r0, #1
	strb r0, [r1, #0x10]
	bl STWI_stop_timer
	bl STWI_reset_ClockCounter
	ldr r0, [r4]
	ldr r2, [r0, #0x18]
	cmp r2, #0
	beq _08007FE8
	movs r0, #0xff
	movs r1, #0
	bl _call_via_r2
_08007FE8:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start STWI_set_timer
STWI_set_timer: @ 0x08007FF0
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r5, r3, #0
	ldr r2, _08008020 @ =gUnk_03002500
	ldr r0, [r2]
	ldrb r0, [r0, #0xa]
	lsls r0, r0, #2
	ldr r1, _08008024 @ =0x04000100
	adds r4, r0, r1
	adds r1, #2
	adds r7, r0, r1
	ldr r1, _08008028 @ =0x04000208
	movs r0, #0
	strh r0, [r1]
	adds r6, r2, #0
	cmp r3, #0x50
	beq _08008048
	cmp r3, #0x50
	bgt _0800802C
	cmp r3, #0x32
	beq _08008036
	b _08008074
	.align 2, 0
_08008020: .4byte gUnk_03002500
_08008024: .4byte 0x04000100
_08008028: .4byte 0x04000208
_0800802C:
	cmp r5, #0x64
	beq _08008058
	cmp r5, #0x82
	beq _08008068
	b _08008074
_08008036:
	ldr r1, _08008044 @ =0x0000FCCB
	adds r0, r1, #0
	strh r0, [r4]
	ldr r1, [r6]
	movs r0, #1
	b _08008072
	.align 2, 0
_08008044: .4byte 0x0000FCCB
_08008048:
	ldr r1, _08008054 @ =0x0000FAE0
	adds r0, r1, #0
	strh r0, [r4]
	ldr r1, [r6]
	movs r0, #2
	b _08008072
	.align 2, 0
_08008054: .4byte 0x0000FAE0
_08008058:
	ldr r1, _08008064 @ =0x0000F996
	adds r0, r1, #0
	strh r0, [r4]
	ldr r1, [r6]
	movs r0, #3
	b _08008072
	.align 2, 0
_08008064: .4byte 0x0000F996
_08008068:
	ldr r1, _08008090 @ =0x0000F7AD
	adds r0, r1, #0
	strh r0, [r4]
	ldr r1, [r6]
	movs r0, #4
_08008072:
	str r0, [r1, #0xc]
_08008074:
	movs r0, #0xc3
	strh r0, [r7]
	ldr r2, _08008094 @ =0x04000202
	ldr r1, [r6]
	movs r0, #8
	ldrb r1, [r1, #0xa]
	lsls r0, r1
	strh r0, [r2]
	ldr r1, _08008098 @ =0x04000208
	movs r0, #1
	strh r0, [r1]
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08008090: .4byte 0x0000F7AD
_08008094: .4byte 0x04000202
_08008098: .4byte 0x04000208

	thumb_func_start STWI_stop_timer
STWI_stop_timer: @ 0x0800809C
	ldr r2, _080080BC @ =gUnk_03002500
	ldr r0, [r2]
	movs r1, #0
	str r1, [r0, #0xc]
	ldrb r0, [r0, #0xa]
	lsls r0, r0, #2
	ldr r3, _080080C0 @ =0x04000100
	adds r0, r0, r3
	strh r1, [r0]
	ldr r0, [r2]
	ldrb r0, [r0, #0xa]
	lsls r0, r0, #2
	ldr r2, _080080C4 @ =0x04000102
	adds r0, r0, r2
	strh r1, [r0]
	bx lr
	.align 2, 0
_080080BC: .4byte gUnk_03002500
_080080C0: .4byte 0x04000100
_080080C4: .4byte 0x04000102

	thumb_func_start STWI_init
STWI_init: @ 0x080080C8
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r6, r5, #0
	ldr r0, _080080F4 @ =0x04000208
	ldrh r0, [r0]
	cmp r0, #0
	bne _080080FC
	ldr r0, _080080F8 @ =gUnk_03002500
	ldr r1, [r0]
	ldrh r0, [r1, #0x12]
	movs r0, #6
	strh r0, [r1, #0x12]
	ldr r2, [r1, #0x18]
	cmp r2, #0
	beq _08008146
	ldrh r1, [r1, #0x12]
	adds r0, r5, #0
	bl _call_via_r2
	b _08008146
	.align 2, 0
_080080F4: .4byte 0x04000208
_080080F8: .4byte gUnk_03002500
_080080FC:
	ldr r4, _08008128 @ =gUnk_03002500
	ldr r2, [r4]
	adds r3, r2, #0
	adds r3, #0x2c
	ldrb r0, [r3]
	cmp r0, #1
	bne _0800812C
	ldrh r0, [r2, #0x12]
	movs r1, #0
	movs r0, #2
	strh r0, [r2, #0x12]
	ldrb r0, [r3]
	strb r1, [r3]
	ldr r0, [r4]
	ldr r2, [r0, #0x18]
	cmp r2, #0
	beq _08008146
	ldrh r1, [r0, #0x12]
	adds r0, r5, #0
	bl _call_via_r2
	b _08008146
	.align 2, 0
_08008128: .4byte gUnk_03002500
_0800812C:
	ldrb r0, [r2, #0x14]
	cmp r0, #0
	bne _0800814A
	ldrh r0, [r2, #0x12]
	movs r0, #4
	strh r0, [r2, #0x12]
	ldr r3, [r2, #0x18]
	cmp r3, #0
	beq _08008146
	ldrh r1, [r2, #0x12]
	adds r0, r5, #0
	bl _call_via_r3
_08008146:
	movs r0, #1
	b _08008192
_0800814A:
	ldrb r0, [r3]
	movs r1, #0
	movs r0, #1
	strb r0, [r3]
	ldr r0, [r4]
	strb r6, [r0, #6]
	ldr r0, [r4]
	str r1, [r0]
	strb r1, [r0, #4]
	ldr r0, [r4]
	strb r1, [r0, #5]
	ldr r0, [r4]
	strb r1, [r0, #7]
	ldr r0, [r4]
	strb r1, [r0, #8]
	ldr r0, [r4]
	strb r1, [r0, #9]
	ldr r0, [r4]
	str r1, [r0, #0xc]
	ldrb r2, [r0, #0x10]
	strb r1, [r0, #0x10]
	ldr r0, [r4]
	ldrh r2, [r0, #0x12]
	movs r2, #0
	strh r1, [r0, #0x12]
	strb r2, [r0, #0x15]
	ldr r1, _08008198 @ =0x04000134
	movs r2, #0x80
	lsls r2, r2, #1
	adds r0, r2, #0
	strh r0, [r1]
	subs r1, #0xc
	ldr r2, _0800819C @ =0x00005003
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0
_08008192:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_08008198: .4byte 0x04000134
_0800819C: .4byte 0x00005003

	thumb_func_start STWI_start_Command
STWI_start_Command: @ 0x080081A0
	push {r4, r5, lr}
	ldr r5, _080081F8 @ =gUnk_03002500
	ldr r0, [r5]
	ldr r3, [r0, #0x24]
	ldrb r1, [r0, #4]
	lsls r1, r1, #8
	ldrb r0, [r0, #6]
	ldr r2, _080081FC @ =0x99660000
	orrs r0, r2
	orrs r1, r0
	str r1, [r3]
	ldr r2, _08008200 @ =0x04000120
	ldr r1, [r5]
	ldr r0, [r1, #0x24]
	ldr r0, [r0]
	str r0, [r2]
	movs r2, #0
	str r2, [r1]
	movs r0, #1
	strb r0, [r1, #5]
	ldr r4, _08008204 @ =0x04000208
	ldrh r3, [r4]
	strh r2, [r4]
	ldr r2, _08008208 @ =0x04000200
	ldr r1, [r5]
	movs r0, #8
	ldrb r1, [r1, #0xa]
	lsls r0, r1
	ldrh r1, [r2]
	orrs r0, r1
	strh r0, [r2]
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	strh r3, [r4]
	ldr r1, _0800820C @ =0x04000128
	ldr r2, _08008210 @ =0x00005083
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_080081F8: .4byte gUnk_03002500
_080081FC: .4byte 0x99660000
_08008200: .4byte 0x04000120
_08008204: .4byte 0x04000208
_08008208: .4byte 0x04000200
_0800820C: .4byte 0x04000128
_08008210: .4byte 0x00005083

	thumb_func_start STWI_restart_Command
STWI_restart_Command: @ 0x08008214
	push {r4, lr}
	ldr r4, _0800822C @ =gUnk_03002500
	ldr r2, [r4]
	ldrb r0, [r2, #0x15]
	adds r3, r4, #0
	cmp r0, #1
	bhi _08008230
	adds r0, #1
	strb r0, [r2, #0x15]
	bl STWI_start_Command
	b _0800828A
	.align 2, 0
_0800822C: .4byte gUnk_03002500
_08008230:
	ldrb r0, [r2, #6]
	cmp r0, #0x27
	beq _08008242
	cmp r0, #0x25
	beq _08008242
	cmp r0, #0x35
	beq _08008242
	cmp r0, #0x37
	bne _08008264
_08008242:
	ldr r0, [r3]
	ldrh r1, [r0, #0x12]
	movs r2, #0
	movs r1, #1
	strh r1, [r0, #0x12]
	adds r0, #0x2c
	ldrb r1, [r0]
	strb r2, [r0]
	ldr r1, [r3]
	ldr r2, [r1, #0x18]
	cmp r2, #0
	beq _0800828A
	ldrb r0, [r1, #6]
	ldrh r1, [r1, #0x12]
	bl _call_via_r2
	b _0800828A
_08008264:
	ldrh r0, [r2, #0x12]
	movs r1, #0
	movs r0, #1
	strh r0, [r2, #0x12]
	adds r0, r2, #0
	adds r0, #0x2c
	ldrb r2, [r0]
	strb r1, [r0]
	ldr r1, [r4]
	ldr r2, [r1, #0x18]
	cmp r2, #0
	beq _08008284
	ldrb r0, [r1, #6]
	ldrh r1, [r1, #0x12]
	bl _call_via_r2
_08008284:
	ldr r1, [r4]
	movs r0, #4
	str r0, [r1]
_0800828A:
	movs r0, #0
	pop {r4}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start STWI_reset_ClockCounter
STWI_reset_ClockCounter: @ 0x08008294
	ldr r3, _080082C0 @ =gUnk_03002500
	ldr r1, [r3]
	movs r0, #5
	str r0, [r1]
	movs r2, #0
	strb r2, [r1, #4]
	ldr r0, [r3]
	strb r2, [r0, #5]
	ldr r1, _080082C4 @ =0x04000120
	movs r0, #0x80
	lsls r0, r0, #0x18
	str r0, [r1]
	adds r1, #8
	strh r2, [r1]
	ldr r2, _080082C8 @ =0x00005003
	adds r0, r2, #0
	strh r0, [r1]
	adds r2, #0x7f
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0
	bx lr
	.align 2, 0
_080082C0: .4byte gUnk_03002500
_080082C4: .4byte 0x04000120
_080082C8: .4byte 0x00005003

	arm_func_start IntrSIO32
IntrSIO32: @ 0x080082CC
	mov ip, sp
	push {fp, ip, lr, pc}
	ldr r3, _0800832C @ =gUnk_03002500
	ldr r0, [r3]
	ldr r2, [r0]
	sub fp, ip, #4
	cmp r2, #0xa
	bne _08008308
	ldr r0, [r0, #0x20]
	cmp r0, #0
	ldmdbeq fp, {fp, sp, lr}
	bxeq lr
	bl Callback_Dummy_ID
	ldmdb fp, {fp, sp, lr}
	bx lr
_08008308:
	ldrb r3, [r0, #0x14]
	cmp r3, #1
	bne _08008320
	bl sio32intr_clock_master
	ldmdb fp, {fp, sp, lr}
	bx lr
_08008320:
	bl sio32intr_clock_slave
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_0800832C: .4byte gUnk_03002500

	arm_func_start sio32intr_clock_master
sio32intr_clock_master: @ 0x08008330
	mov ip, sp
	push {r4, r5, r6, fp, ip, lr, pc}
	mov r0, #0x50
	sub fp, ip, #4
	bl STWI_set_timer_in_RAM
	mov r4, #0x120
	ldr r2, _080085A4 @ =gUnk_03002500
	add r4, r4, #0x4000000
	ldr lr, [r4]
	ldr ip, [r2]
	ldr r3, [ip]
	mov r6, r2
	cmp r3, #0
	bne _080083B0
	cmp lr, #-0x80000000
	bne _08008430
	ldrb r2, [ip, #5]
	ldrb r3, [ip, #4]
	cmp r2, r3
	bhi _080083A0
	ldr r3, [ip, #0x24]
	mov r1, r2
	ldr r2, [r3, r1, lsl #2]
	str r2, [r4]
	ldrb r3, [ip, #5]
	add r3, r3, #1
	strb r3, [ip, #5]
	b _0800848C
_080083A0:
	mov r3, #1
	str r3, [ip]
	str lr, [r4]
	b _0800848C
_080083B0:
	ldr r3, [ip]
	cmp r3, #1
	bne _08008440
	mov r3, #-0x67000000
	add r3, r3, #0x660000
	mov r5, #-0x80000000
	and r2, lr, r5, asr #15
	cmp r2, r3
	bne _08008430
	mov r3, #0
	strb r3, [ip, #8]
	ldr r1, [r6]
	ldrb r0, [r1, #8]
	ldr r2, [r1, #0x28]
	str lr, [r2, r0, lsl #2]
	ldrb r3, [r1, #8]
	add r3, r3, #1
	strb r3, [r1, #8]
	ldr r2, [r6]
	strb lr, [r2, #9]
	ldr r3, [r6]
	lsr r2, lr, #8
	strb r2, [r3, #7]
	ldr r1, [r6]
	ldrb r2, [r1, #7]
	ldrb r3, [r1, #8]
	cmp r2, r3
	blo _08008478
	mov r3, #2
	str r3, [r1]
	str r5, [r4]
	b _0800848C
_08008430:
	bl STWI_stop_timer_in_RAM
	mov r0, #0x82
	bl STWI_set_timer_in_RAM
	b _080085B8
_08008440:
	ldr r3, [ip]
	cmp r3, #2
	bne _0800848C
	ldrb r1, [ip, #8]
	ldr r2, [ip, #0x28]
	str lr, [r2, r1, lsl #2]
	ldrb r3, [ip, #8]
	add r3, r3, #1
	strb r3, [ip, #8]
	ldr r1, [r6]
	ldrb r2, [r1, #7]
	ldrb r3, [r1, #8]
	cmp r2, r3
	bhs _08008484
_08008478:
	mov r3, #3
	str r3, [r1]
	b _0800848C
_08008484:
	mov r3, #-0x80000000
	str r3, [r4]
_0800848C:
	mov r0, #1
	bl handshake_wait
	lsl r0, r0, #0x10
	cmp r0, #0x10000
	beq _080085B8
	mov r4, #0x128
	add r4, r4, #0x4000000
	mov r5, #0x5000
	add r3, r5, #0xb
	strh r3, [r4]
	mov r0, #0
	bl handshake_wait
	lsl r0, r0, #0x10
	cmp r0, #0x10000
	beq _080085B8
	bl STWI_stop_timer_in_RAM
	ldr r1, [r6]
	ldr r0, [r1]
	cmp r0, #3
	bne _080085A8
	ldrb r3, [r1, #9]
	cmp r3, #0xa5
	cmpne r3, #0xa7
	beq _08008500
	and r3, r3, #0xff
	cmp r3, #0xb5
	beq _08008500
	cmp r3, #0xb7
	bne _08008548
_08008500:
	mov r1, #0x120
	add r1, r1, #0x4000000
	mov ip, #0x128
	add ip, ip, #0x4000000
	ldr r0, [r6]
	mov r3, #0
	strb r3, [r0, #0x14]
	mov r2, #-0x80000000
	str r2, [r1]
	add r3, r3, #0x5000
	add r2, r3, #2
	strh r2, [ip]
	add r3, r3, #0x82
	strh r3, [ip]
	ldr r2, [r6]
	mov r3, #5
	str r3, [r2]
	b _08008578
_08008548:
	cmp r3, #0xee
	bne _08008568
	add r3, r5, #3
	strh r3, [r4]
	mov r2, #4
	str r2, [r1]
	strh r0, [r1, #0x12]
	b _08008578
_08008568:
	add r3, r5, #3
	strh r3, [r4]
	mov r2, #4
	str r2, [r1]
_08008578:
	ldr r2, [r6]
	mov r3, #0
	strb r3, [r2, #0x2c]
	ldr r0, [r6]
	ldr r2, [r0, #0x18]
	cmp r2, r3
	beq _080085B8
	ldrh r1, [r0, #0x12]
	ldrb r0, [r0, #6]
	bl Callback_Dummy_M
	b _080085B8
	.align 2, 0
_080085A4: .4byte gUnk_03002500
_080085A8:
	add r3, r5, #3
	strh r3, [r4]
	add r2, r5, #0x83
	strh r2, [r4]
_080085B8:
	ldmdb fp, {r4, r5, r6, fp, sp, lr}
	bx lr

	arm_func_start sio32intr_clock_slave
sio32intr_clock_slave: @ 0x080085C0
	mov ip, sp
	push {r4, r5, r6, fp, ip, lr, pc}
	ldr r4, _0800896C @ =gUnk_03002500
	mov r0, #0x64
	ldr r3, [r4]
	mov r6, #0
	strb r6, [r3, #0x10]
	sub fp, ip, #4
	bl STWI_set_timer_in_RAM
	mov r0, r6
	bl handshake_wait
	lsl r0, r0, #0x10
	cmp r0, #0x10000
	mov r5, r4
	beq _080089C4
	mov r3, #0x128
	add r3, r3, #0x4000000
	mov r2, #0x5000
	add r2, r2, #0xa
	strh r2, [r3]
	mov lr, #0x120
	ldr r0, [r5]
	add lr, lr, #0x4000000
	ldr ip, [lr]
	ldr r3, [r0]
	cmp r3, #5
	bne _080086F0
	ldr r3, [r0, #0x28]
	mov r4, #1
	mov r0, #-0x67000000
	str ip, [r3]
	add r0, r0, #0x660000
	ldr r2, [r5]
	lsr r3, r0, #0x10
	strb r4, [r2, #5]
	cmp r3, ip, lsr #16
	bne _0800883C
	ldr r3, [r5]
	lsr r2, ip, #8
	strb r2, [r3, #4]
	ldr r2, [r5]
	strb ip, [r2, #6]
	ldr r1, [r5]
	ldrb r3, [r1, #4]
	cmp r3, r6
	bne _080086D4
	ldrb r2, [r1, #6]
	sub r3, r2, #0x27
	cmp r2, #0x36
	cmpne r3, #2
	bhi _080086A8
	add r3, r2, #0x80
	strb r3, [r1, #9]
	ldr r2, [r5]
	ldrb r3, [r2, #9]
	ldr r1, [r2, #0x24]
	add r3, r3, r0
	b _08008758
_080086A8:
	ldr r2, [r1, #0x24]
	ldr r3, _08008970 @ =0x996601EE
	str r3, [r2]
	ldr r2, [r5]
	ldrb r3, [r2, #6]
	sub r3, r3, #0x10
	cmp r3, #0x2d
	bhi _08008790
	ldr r3, [r2, #0x24]
	str r4, [r3, #4]
	b _0800879C
_080086D4:
	mov r3, #-0x80000000
	str r3, [lr]
	strb r4, [r1, #5]
	ldr r2, [r5]
	add r3, r3, #-0x7ffffffa
	str r3, [r2]
	b _0800884C
_080086F0:
	ldr r3, [r0]
	cmp r3, #6
	bne _080087F0
	ldrb r1, [r0, #5]
	ldr r2, [r0, #0x28]
	str ip, [r2, r1, lsl #2]
	ldrb r3, [r0, #5]
	add r3, r3, #1
	strb r3, [r0, #5]
	ldr r1, [r5]
	ldrb r2, [r1, #4]
	ldrb r3, [r1, #5]
	cmp r2, r3
	bhs _080087E4
	ldrb r2, [r1, #6]
	sub r3, r2, #0x28
	cmp r2, #0x36
	cmpne r3, #1
	bhi _08008768
	add r3, r2, #0x80
	strb r3, [r1, #9]
	ldr r2, [r5]
	ldrb r3, [r2, #9]
	ldr r1, [r2, #0x24]
	orr r3, r3, #0x99000000
	orr r3, r3, #0x660000
_08008758:
	str r3, [r1]
	ldr r2, [r5]
	strb r6, [r2, #7]
	b _080087B4
_08008768:
	ldr r2, [r1, #0x24]
	ldr r3, _08008970 @ =0x996601EE
	str r3, [r2]
	ldr r2, [r5]
	ldrb r3, [r2, #6]
	sub r3, r3, #0x10
	cmp r3, #0x2d
	ldrls r2, [r2, #0x24]
	movls r3, #1
	bls _08008798
_08008790:
	ldr r2, [r2, #0x24]
	mov r3, #2
_08008798:
	str r3, [r2, #4]
_0800879C:
	ldr r2, [r5]
	mov r3, #1
	strb r3, [r2, #7]
	ldr r1, [r5]
	add r3, r3, #2
	strh r3, [r1, #0x12]
_080087B4:
	ldr r0, [r5]
	ldr r2, [r0, #0x24]
	mov r3, #0x120
	ldr r1, [r2]
	add r3, r3, #0x4000000
	str r1, [r3]
	mov r2, #1
	strb r2, [r0, #8]
	ldr r1, [r5]
	mov r3, #7
	str r3, [r1]
	b _0800884C
_080087E4:
	mov r3, #-0x80000000
	str r3, [lr]
	b _0800884C
_080087F0:
	ldr r3, [r0]
	cmp r3, #7
	bne _0800884C
	cmp ip, #-0x80000000
	bne _0800883C
	ldrb r2, [r0, #7]
	ldrb r3, [r0, #8]
	cmp r2, r3
	movlo r3, #8
	strlo r3, [r0]
	blo _0800884C
	ldrb r1, [r0, #8]
	ldr r3, [r0, #0x24]
	ldr r2, [r3, r1, lsl #2]
	str r2, [lr]
	ldrb r3, [r0, #8]
	add r3, r3, #1
	strb r3, [r0, #8]
	b _0800884C
_0800883C:
	bl STWI_stop_timer_in_RAM
	mov r0, #0x64
	bl STWI_set_timer_in_RAM
	b _080089C4
_0800884C:
	mov r0, #1
	bl handshake_wait
	lsl r0, r0, #0x10
	cmp r0, #0x10000
	beq _080089C4
	mov r6, r5
	ldr r3, [r6]
	ldr r2, [r3]
	cmp r2, #8
	bne _08008914
	mov r4, #0x128
	add r4, r4, #0x4000000
	mov r3, #0x5000
	add r3, r3, #2
	strh r3, [r4]
	bl STWI_stop_timer_in_RAM
	ldr r0, [r6]
	ldrh r3, [r0, #0x12]
	cmp r3, #3
	bne _080088C0
	bl STWI_init_slave
	ldr r3, [r6]
	ldr r1, [r3, #0x1c]
	cmp r1, #0
	beq _080089C4
	mov r0, #0x1ec
	add r0, r0, #2
	bl Callback_Dummy_S
	b _080089C4
_080088C0:
	mov r3, #0x120
	add r3, r3, #0x4000000
	mov r1, #0
	str r1, [r3]
	mov r2, #0x5000
	strh r1, [r4]
	add r2, r2, #3
	strh r2, [r4]
	mov r3, #1
	strb r3, [r0, #0x14]
	ldr r0, [r5]
	ldr r2, [r0, #0x1c]
	str r1, [r0]
	cmp r2, r1
	beq _080089C4
	ldrb r3, [r0, #4]
	ldrb r0, [r0, #6]
	mov r1, r2
	orr r0, r0, r3, lsl #8
	bl Callback_Dummy_S
	b _080089C4
_08008914:
	mov r3, #0x208
	add r3, r3, #0x4000000
	mov r2, #0
	strh r2, [r3]
	mov r1, #0x100
	add r2, r1, #0x4000002
	ldrh r3, [r2]
	tst r3, #0x80
	beq _08008998
	ldrh r3, [r2]
	tst r3, #3
	bne _08008974
	mov r2, #0xff00
	add r1, r1, #0x4000000
	ldrh r3, [r1]
	add r2, r2, #0x9b
	cmp r3, r2
	bls _08008998
_0800895C:
	ldrh r3, [r1]
	cmp r3, r2
	bhi _0800895C
	b _08008998
	.align 2, 0
_0800896C: .4byte gUnk_03002500
_08008970: .4byte 0x996601EE
_08008974:
	mov r2, #0xff00
	add r1, r1, #0x4000000
	ldrh r3, [r1]
	add r2, r2, #0xfe
	cmp r3, r2
	bls _08008998
_0800898C:
	ldrh r3, [r1]
	cmp r3, r2
	bhi _0800898C
_08008998:
	mov r1, #0x128
	add r1, r1, #0x4000000
	mov r0, #0x208
	add r0, r0, #0x4000000
	mov r3, #0x5000
	add r2, r3, #2
	strh r2, [r1]
	add r3, r3, #0x82
	strh r3, [r1]
	mov r2, #1
	strh r2, [r0]
_080089C4:
	ldmdb fp, {r4, r5, r6, fp, sp, lr}
	bx lr

	arm_func_start handshake_wait
handshake_wait: @ 0x080089CC
	mov ip, sp
	push {fp, ip, lr, pc}
	mov r1, #0x128
	add r1, r1, #0x4000000
	lsl r0, r0, #0x10
	ldr r2, _08008A30 @ =gUnk_03002500
	sub fp, ip, #4
	lsr lr, r0, #0xe
	ldr ip, [r2]
_080089F0:
	ldrb r3, [ip, #0x10]
	and r0, r3, #0xff
	cmp r0, #1
	beq _08008A1C
	ldrh r3, [r1]
	and r3, r3, #4
	cmp r3, lr
	bne _080089F0
	mov r0, #0
	ldmdb fp, {fp, sp, lr}
	bx lr
_08008A1C:
	ldr r2, [r2]
	mov r3, #0
	strb r3, [r2, #0x10]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_08008A30: .4byte gUnk_03002500

	arm_func_start STWI_set_timer_in_RAM
STWI_set_timer_in_RAM: @ 0x08008A34
	mov ip, sp
	push {r4, r5, fp, ip, lr, pc}
	mov r1, #0x208
	add r1, r1, #0x4000000
	mov r3, #0
	sub fp, ip, #4
	ldr ip, _08008AEC @ =gUnk_03002500
	and lr, r0, #0xff
	ldr r2, [ip]
	cmp lr, #0x50
	ldrb r0, [r2, #0xa]
	mov r4, ip
	mov r2, lr
	strh r3, [r1]
	lsl r0, r0, #2
	add r3, r3, #0x100
	add r1, r3, #0x4000000
	add r3, r3, #0x4000002
	add r5, r0, r3
	beq _08008ABC
	bgt _08008A94
	cmp lr, #0x32
	beq _08008AA8
	b _08008B08
_08008A94:
	cmp r2, #0x64
	beq _08008AD4
	cmp r2, #0x82
	beq _08008AF0
	b _08008B08
_08008AA8:
	mvn r3, #0x334
	strh r3, [r0, r1]
	ldr r2, [r4]
	mov r3, #1
	b _08008B04
_08008ABC:
	mov r3, #-0x52000000
	asr r3, r3, #0x14
	strh r3, [r0, r1]
	ldr r2, [r4]
	mov r3, #2
	b _08008B04
_08008AD4:
	mvn r3, #0x660
	sub r3, r3, #9
	strh r3, [r0, r1]
	ldr r2, [r4]
	mov r3, #3
	b _08008B04
	.align 2, 0
_08008AEC: .4byte gUnk_03002500
_08008AF0:
	mvn r3, #0x850
	sub r3, r3, #2
	strh r3, [r0, r1]
	ldr r2, [r4]
	mov r3, #4
_08008B04:
	str r3, [r2, #0xc]
_08008B08:
	mov ip, #0x200
	add ip, ip, #0x4000002
	mov r3, #0xc3
	strh r3, [r5]
	mov r1, #0x208
	ldr r2, [r4]
	add r1, r1, #0x4000000
	ldrb r0, [r2, #0xa]
	sub r3, r3, #0xbb
	lsl r3, r3, r0
	strh r3, [ip]
	mov r2, #1
	strh r2, [r1]
	ldmdb fp, {r4, r5, fp, sp, lr}
	bx lr

	arm_func_start STWI_stop_timer_in_RAM
STWI_stop_timer_in_RAM: @ 0x08008B44
	mov ip, sp
	push {fp, ip, lr, pc}
	mov r1, #0x100
	ldr lr, _08008B90 @ =gUnk_03002500
	add r0, r1, #0x4000000
	ldr r2, [lr]
	sub fp, ip, #4
	ldrb r3, [r2, #0xa]
	mov ip, #0
	str ip, [r2, #0xc]
	lsl r3, r3, #2
	strh ip, [r3, r0]
	ldr r2, [lr]
	ldrb r3, [r2, #0xa]
	add r1, r1, #0x4000002
	lsl r3, r3, #2
	strh ip, [r3, r1]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_08008B90: .4byte gUnk_03002500

	arm_func_start STWI_init_slave
STWI_init_slave: @ 0x08008B94
	mov ip, sp
	push {fp, ip, lr, pc}
	ldr r0, _08008C1C @ =gUnk_03002500
	ldr r2, [r0]
	mov r3, #5
	str r3, [r2]
	mov r1, #0
	strb r1, [r2, #0x14]
	ldr r3, [r0]
	strb r1, [r3, #4]
	ldr r2, [r0]
	strb r1, [r2, #5]
	ldr r3, [r0]
	strb r1, [r3, #6]
	ldr r2, [r0]
	strb r1, [r2, #7]
	ldr r3, [r0]
	strb r1, [r3, #8]
	ldr r2, [r0]
	strb r1, [r2, #9]
	ldr r3, [r0]
	str r1, [r3, #0xc]
	sub fp, ip, #4
	strb r1, [r3, #0x10]
	mov r2, #0x128
	ldr ip, [r0]
	add r2, r2, #0x4000000
	strh r1, [ip, #0x12]
	mov r3, #0x5000
	strb r1, [ip, #0x15]
	add r3, r3, #0x82
	strh r3, [r2]
	ldmdb fp, {fp, sp, lr}
	bx lr
	.align 2, 0
_08008C1C: .4byte gUnk_03002500

	arm_func_start Callback_Dummy_M
Callback_Dummy_M: @ 0x08008C20
	bx r2

	arm_func_start Callback_Dummy_S
Callback_Dummy_S: @ 0x08008C24
	bx r1

	arm_func_start Callback_Dummy_ID
Callback_Dummy_ID: @ 0x08008C28
	bx r0

	thumb_func_start rfu_initializeAPI
rfu_initializeAPI: @ 0x08008C2C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r4, r0, #0
	mov r8, r2
	lsls r1, r1, #0x10
	lsrs r2, r1, #0x10
	lsls r3, r3, #0x18
	lsrs r7, r3, #0x18
	movs r0, #0xf0
	lsls r0, r0, #0x14
	ands r0, r4
	movs r1, #0x80
	lsls r1, r1, #0x12
	cmp r0, r1
	bne _08008C50
	cmp r7, #0
	bne _08008C58
_08008C50:
	movs r0, #3
	ands r0, r4
	cmp r0, #0
	beq _08008C5C
_08008C58:
	movs r0, #2
	b _08008D52
_08008C5C:
	cmp r7, #0
	beq _08008C68
	ldr r3, _08008C64 @ =0x00000E8C
	b _08008C6A
	.align 2, 0
_08008C64: .4byte 0x00000E8C
_08008C68:
	ldr r3, _08008C74 @ =0x0000052C
_08008C6A:
	cmp r2, r3
	bhs _08008C78
	movs r0, #1
	b _08008D52
	.align 2, 0
_08008C74: .4byte 0x0000052C
_08008C78:
	ldr r0, _08008D5C @ =gUnk_03002540
	str r4, [r0]
	ldr r1, _08008D60 @ =gUnk_03002544
	adds r0, r4, #0
	adds r0, #0xb4
	str r0, [r1]
	ldr r1, _08008D64 @ =gUnk_03002548
	adds r0, #0x18
	str r0, [r1]
	ldr r2, _08008D68 @ =gUnk_03002530
	movs r1, #0xd6
	lsls r1, r1, #1
	adds r0, r4, r1
	str r0, [r2]
	ldr r1, _08008D6C @ =gUnk_03002510
	movs r3, #0xdb
	lsls r3, r3, #2
	adds r0, r4, r3
	str r0, [r1]
	movs r5, #1
	ldr r0, _08008D70 @ =gUnk_03002520
	mov ip, r0
	adds r6, r2, #0
	adds r4, r1, #0
_08008CA8:
	lsls r2, r5, #2
	adds r3, r2, r6
	subs r1, r5, #1
	lsls r1, r1, #2
	adds r0, r1, r6
	ldr r0, [r0]
	adds r0, #0x70
	str r0, [r3]
	adds r2, r2, r4
	adds r1, r1, r4
	ldr r0, [r1]
	adds r0, #0x1c
	str r0, [r2]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #3
	bls _08008CA8
	ldr r4, _08008D6C @ =gUnk_03002510
	ldr r0, [r4, #0xc]
	adds r1, r0, #0
	adds r1, #0x1c
	mov r2, ip
	str r1, [r2]
	ldr r1, _08008D64 @ =gUnk_03002548
	ldr r1, [r1]
	adds r1, #0xdc
	adds r0, #0x54
	str r0, [r1]
	mov r1, r8
	adds r2, r7, #0
	bl STWI_init_all
	bl rfu_STC_clearAPIVariables
	movs r5, #0
	ldr r3, _08008D68 @ =gUnk_03002530
	movs r2, #0
_08008CF4:
	lsls r1, r5, #2
	adds r0, r1, r3
	ldr r0, [r0]
	str r2, [r0, #0x68]
	str r2, [r0, #0x6c]
	adds r1, r1, r4
	ldr r0, [r1]
	str r2, [r0, #0x14]
	str r2, [r0, #0x18]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #3
	bls _08008CF4
	ldr r1, _08008D74 @ =0x0800A121
	movs r5, #2
	rsbs r5, r5, #0
	ands r5, r1
	ldr r2, _08008D64 @ =gUnk_03002548
	ldr r0, [r2]
	adds r4, r0, #0
	adds r4, #8
	ldr r0, _08008D78 @ =rfu_REQ_changeMasterSlave
	subs r0, r0, r1
	lsls r0, r0, #0xf
	lsrs r3, r0, #0x10
	subs r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	ldr r0, _08008D7C @ =0x0000FFFF
	cmp r3, r0
	beq _08008D48
	adds r6, r0, #0
_08008D36:
	ldrh r0, [r5]
	strh r0, [r4]
	adds r5, #2
	adds r4, #2
	subs r0, r3, #1
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	cmp r3, r6
	bne _08008D36
_08008D48:
	ldr r1, [r2]
	adds r0, r1, #0
	adds r0, #9
	str r0, [r1, #4]
	movs r0, #0
_08008D52:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08008D5C: .4byte gUnk_03002540
_08008D60: .4byte gUnk_03002544
_08008D64: .4byte gUnk_03002548
_08008D68: .4byte gUnk_03002530
_08008D6C: .4byte gUnk_03002510
_08008D70: .4byte gUnk_03002520
_08008D74: .4byte 0x0800A121
_08008D78: .4byte rfu_REQ_changeMasterSlave
_08008D7C: .4byte 0x0000FFFF

	thumb_func_start rfu_STC_clearAPIVariables
rfu_STC_clearAPIVariables: @ 0x08008D80
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r1, _08008DF4 @ =0x04000208
	ldrh r0, [r1]
	adds r7, r0, #0
	movs r6, #0
	strh r6, [r1]
	ldr r5, _08008DF8 @ =gUnk_03002544
	ldr r1, [r5]
	ldrb r4, [r1]
	mov r0, sp
	strh r6, [r0]
	ldr r2, _08008DFC @ =0x0100000C
	bl CpuSet
	ldr r2, [r5]
	movs r0, #8
	ands r4, r0
	movs r1, #0
	strb r4, [r2]
	mov r0, sp
	adds r0, #2
	strh r1, [r0]
	ldr r4, _08008E00 @ =gUnk_03002540
	ldr r1, [r4]
	ldr r2, _08008E04 @ =0x0100005A
	bl CpuSet
	ldr r1, [r4]
	movs r0, #4
	strb r0, [r1, #9]
	ldr r0, [r5]
	strb r6, [r0, #6]
	ldr r1, [r4]
	movs r0, #0xff
	strb r0, [r1]
	bl rfu_clearAllSlot
	ldr r0, _08008E08 @ =gUnk_03002400
	strb r6, [r0]
	movs r1, #0
	ldr r3, _08008E0C @ =gUnk_030023F8
	movs r2, #0
_08008DD6:
	lsls r0, r1, #1
	adds r0, r0, r3
	strh r2, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _08008DD6
	ldr r0, _08008DF4 @ =0x04000208
	strh r7, [r0]
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08008DF4: .4byte 0x04000208
_08008DF8: .4byte gUnk_03002544
_08008DFC: .4byte 0x0100000C
_08008E00: .4byte gUnk_03002540
_08008E04: .4byte 0x0100005A
_08008E08: .4byte gUnk_03002400
_08008E0C: .4byte gUnk_030023F8

	thumb_func_start rfu_REQ_PARENT_resumeRetransmitAndChange
rfu_REQ_PARENT_resumeRetransmitAndChange: @ 0x08008E10
	push {lr}
	ldr r0, _08008E20 @ =rfu_STC_REQ_callback
	bl STWI_set_Callback_M
	bl STWI_send_ResumeRetransmitAndChangeREQ
	pop {r0}
	bx r0
	.align 2, 0
_08008E20: .4byte rfu_STC_REQ_callback

	thumb_func_start rfu_UNI_PARENT_getDRAC_ACK
rfu_UNI_PARENT_getDRAC_ACK: @ 0x08008E24
	push {r4, r5, lr}
	adds r4, r0, #0
	movs r0, #0
	strb r0, [r4]
	ldr r5, _08008E3C @ =gUnk_03002540
	ldr r0, [r5]
	ldrb r0, [r0]
	cmp r0, #1
	beq _08008E40
	movs r0, #0xc0
	lsls r0, r0, #2
	b _08008E66
	.align 2, 0
_08008E3C: .4byte gUnk_03002540
_08008E40:
	bl rfu_getSTWIRecvBuffer
	adds r1, r0, #0
	ldrb r0, [r1]
	cmp r0, #0x28
	beq _08008E50
	cmp r0, #0x36
	bne _08008E64
_08008E50:
	ldrb r0, [r1, #1]
	cmp r0, #0
	bne _08008E5C
	ldr r0, [r5]
	ldrb r0, [r0, #2]
	b _08008E5E
_08008E5C:
	ldrb r0, [r1, #4]
_08008E5E:
	strb r0, [r4]
	movs r0, #0
	b _08008E66
_08008E64:
	movs r0, #0x10
_08008E66:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start rfu_setTimerInterrupt
rfu_setTimerInterrupt: @ 0x08008E6C
	push {lr}
	adds r2, r0, #0
	adds r0, r1, #0
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	adds r1, r2, #0
	bl STWI_init_timer
	pop {r0}
	bx r0

	thumb_func_start rfu_getSTWIRecvBuffer
rfu_getSTWIRecvBuffer: @ 0x08008E80
	ldr r0, _08008E8C @ =gUnk_03002548
	ldr r0, [r0]
	adds r0, #0xdc
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08008E8C: .4byte gUnk_03002548

	thumb_func_start rfu_setMSCCallback
rfu_setMSCCallback: @ 0x08008E90
	push {lr}
	bl STWI_set_Callback_S
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start rfu_setREQCallback
rfu_setREQCallback: @ 0x08008E9C
	push {lr}
	adds r1, r0, #0
	ldr r0, _08008EB4 @ =gUnk_03002548
	ldr r0, [r0]
	str r1, [r0]
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	bl rfu_enableREQCallback
	pop {r0}
	bx r0
	.align 2, 0
_08008EB4: .4byte gUnk_03002548

	thumb_func_start rfu_enableREQCallback
rfu_enableREQCallback: @ 0x08008EB8
	push {lr}
	lsls r0, r0, #0x18
	cmp r0, #0
	beq _08008ED0
	ldr r0, _08008ECC @ =gUnk_03002544
	ldr r2, [r0]
	ldrb r1, [r2]
	movs r0, #8
	orrs r0, r1
	b _08008EDA
	.align 2, 0
_08008ECC: .4byte gUnk_03002544
_08008ED0:
	ldr r0, _08008EE0 @ =gUnk_03002544
	ldr r2, [r0]
	ldrb r1, [r2]
	movs r0, #0xf7
	ands r0, r1
_08008EDA:
	strb r0, [r2]
	pop {r0}
	bx r0
	.align 2, 0
_08008EE0: .4byte gUnk_03002544

	thumb_func_start rfu_STC_REQ_callback
rfu_STC_REQ_callback: @ 0x08008EE4
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r4, r1, #0x10
	ldr r0, _08008F18 @ =rfu_CB_defaultCallback
	bl STWI_set_Callback_M
	ldr r0, _08008F1C @ =gUnk_03002544
	ldr r0, [r0]
	strh r4, [r0, #0xe]
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08008F12
	ldr r0, _08008F20 @ =gUnk_03002548
	ldr r0, [r0]
	ldr r2, [r0]
	adds r0, r5, #0
	adds r1, r4, #0
	bl _call_via_r2
_08008F12:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08008F18: .4byte rfu_CB_defaultCallback
_08008F1C: .4byte gUnk_03002544
_08008F20: .4byte gUnk_03002548

	thumb_func_start rfu_CB_defaultCallback
rfu_CB_defaultCallback: @ 0x08008F24
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r3, r1, #0x10
	cmp r0, #0xff
	bne _08008F80
	ldr r0, _08008F88 @ =gUnk_03002544
	ldr r0, [r0]
	ldrb r1, [r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _08008F4E
	ldr r0, _08008F8C @ =gUnk_03002548
	ldr r0, [r0]
	ldr r2, [r0]
	movs r0, #0xff
	adds r1, r3, #0
	bl _call_via_r2
_08008F4E:
	ldr r0, _08008F90 @ =gUnk_03002540
	ldr r0, [r0]
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	adds r5, r0, #0
	orrs r5, r1
	movs r4, #0
_08008F5C:
	adds r0, r5, #0
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08008F6E
	adds r0, r4, #0
	bl rfu_STC_removeLinkData
_08008F6E:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08008F5C
	ldr r0, _08008F90 @ =gUnk_03002540
	ldr r1, [r0]
	movs r0, #0xff
	strb r0, [r1]
_08008F80:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_08008F88: .4byte gUnk_03002544
_08008F8C: .4byte gUnk_03002548
_08008F90: .4byte gUnk_03002540

	thumb_func_start rfu_waitREQComplete
rfu_waitREQComplete: @ 0x08008F94
	push {lr}
	bl STWI_poll_CommandEnd
	ldr r0, _08008FA4 @ =gUnk_03002544
	ldr r0, [r0]
	ldrh r0, [r0, #0xe]
	pop {r1}
	bx r1
	.align 2, 0
_08008FA4: .4byte gUnk_03002544

	thumb_func_start rfu_REQ_RFUStatus
rfu_REQ_RFUStatus: @ 0x08008FA8
	push {lr}
	ldr r0, _08008FB8 @ =rfu_STC_REQ_callback
	bl STWI_set_Callback_M
	bl STWI_send_SystemStatusREQ
	pop {r0}
	bx r0
	.align 2, 0
_08008FB8: .4byte rfu_STC_REQ_callback

	thumb_func_start rfu_getRFUStatus
rfu_getRFUStatus: @ 0x08008FBC
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r5, _08008FD4 @ =gUnk_03002548
	ldr r0, [r5]
	adds r0, #0xdc
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #0x93
	beq _08008FD8
	movs r0, #0x10
	b _08008FF2
	.align 2, 0
_08008FD4: .4byte gUnk_03002548
_08008FD8:
	bl STWI_poll_CommandEnd
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08008FEC
	ldr r0, [r5]
	adds r0, #0xdc
	ldr r0, [r0]
	ldrb r0, [r0, #7]
	b _08008FEE
_08008FEC:
	movs r0, #0xff
_08008FEE:
	strb r0, [r4]
	movs r0, #0
_08008FF2:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start rfu_MBOOT_CHILD_inheritanceLinkStatus
rfu_MBOOT_CHILD_inheritanceLinkStatus: @ 0x08008FF8
	push {lr}
	ldr r2, _08009000 @ =gUnk_0808E2EC
	ldr r3, _08009004 @ =gUnk_030000F0
	b _08009012
	.align 2, 0
_08009000: .4byte gUnk_0808E2EC
_08009004: .4byte gUnk_030000F0
_08009008:
	ldrb r0, [r3]
	adds r3, #1
	adds r2, #1
	cmp r1, r0
	bne _08009068
_08009012:
	ldrb r1, [r2]
	cmp r1, #0
	bne _08009008
	movs r2, #0xc0
	lsls r2, r2, #0x12
	movs r3, #0
	movs r1, #0
_08009020:
	ldrh r0, [r2]
	adds r0, r3, r0
	lsls r0, r0, #0x10
	lsrs r3, r0, #0x10
	adds r2, #2
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #0x59
	bls _08009020
	ldr r0, _0800905C @ =gUnk_030000FA
	ldrh r0, [r0]
	cmp r3, r0
	bne _08009068
	movs r0, #0xc0
	lsls r0, r0, #0x12
	ldr r1, _08009060 @ =gUnk_03002540
	ldr r1, [r1]
	movs r2, #0x5a
	bl CpuSet
	ldr r0, _08009064 @ =gUnk_03002544
	ldr r2, [r0]
	ldrb r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2]
	movs r0, #0
	b _0800906A
	.align 2, 0
_0800905C: .4byte gUnk_030000FA
_08009060: .4byte gUnk_03002540
_08009064: .4byte gUnk_03002544
_08009068:
	movs r0, #1
_0800906A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start rfu_REQ_stopMode
rfu_REQ_stopMode: @ 0x08009070
	push {lr}
	ldr r0, _08009090 @ =0x04000208
	ldrh r0, [r0]
	cmp r0, #0
	bne _08009098
	movs r0, #0x3d
	movs r1, #6
	bl rfu_STC_REQ_callback
	ldr r0, _08009094 @ =gUnk_03002500
	ldr r1, [r0]
	ldrh r0, [r1, #0x12]
	movs r0, #6
	strh r0, [r1, #0x12]
	b _080090D2
	.align 2, 0
_08009090: .4byte 0x04000208
_08009094: .4byte gUnk_03002500
_08009098:
	bl AgbRFU_SoftReset
	bl rfu_STC_clearAPIVariables
	movs r0, #4
	bl AgbRFU_checkID
	ldr r1, _080090B8 @ =0x00008001
	cmp r0, r1
	bne _080090C0
	ldr r0, _080090BC @ =rfu_CB_stopMode
	bl STWI_set_Callback_M
	bl STWI_send_StopModeREQ
	b _080090D2
	.align 2, 0
_080090B8: .4byte 0x00008001
_080090BC: .4byte rfu_CB_stopMode
_080090C0:
	ldr r1, _080090D8 @ =0x04000128
	movs r2, #0x80
	lsls r2, r2, #6
	adds r0, r2, #0
	strh r0, [r1]
	movs r0, #0x3d
	movs r1, #0
	bl rfu_STC_REQ_callback
_080090D2:
	pop {r0}
	bx r0
	.align 2, 0
_080090D8: .4byte 0x04000128

	thumb_func_start rfu_CB_stopMode
rfu_CB_stopMode: @ 0x080090DC
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r2, r1, #0
	cmp r2, #0
	bne _080090F6
	ldr r1, _08009104 @ =0x04000128
	movs r4, #0x80
	lsls r4, r4, #6
	adds r0, r4, #0
	strh r0, [r1]
_080090F6:
	adds r0, r3, #0
	adds r1, r2, #0
	bl rfu_STC_REQ_callback
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08009104: .4byte 0x04000128

	thumb_func_start rfu_REQBN_softReset_and_checkID
rfu_REQBN_softReset_and_checkID: @ 0x08009108
	push {lr}
	ldr r0, _08009118 @ =0x04000208
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800911C
	movs r0, #1
	rsbs r0, r0, #0
	b _0800913C
	.align 2, 0
_08009118: .4byte 0x04000208
_0800911C:
	bl AgbRFU_SoftReset
	bl rfu_STC_clearAPIVariables
	movs r0, #0x1e
	bl AgbRFU_checkID
	adds r2, r0, #0
	cmp r2, #0
	bne _0800913A
	ldr r1, _08009140 @ =0x04000128
	movs r3, #0x80
	lsls r3, r3, #6
	adds r0, r3, #0
	strh r0, [r1]
_0800913A:
	adds r0, r2, #0
_0800913C:
	pop {r1}
	bx r1
	.align 2, 0
_08009140: .4byte 0x04000128

	thumb_func_start rfu_REQ_reset
rfu_REQ_reset: @ 0x08009144
	push {lr}
	ldr r0, _08009154 @ =rfu_CB_reset
	bl STWI_set_Callback_M
	bl STWI_send_ResetREQ
	pop {r0}
	bx r0
	.align 2, 0
_08009154: .4byte rfu_CB_reset

	thumb_func_start rfu_CB_reset
rfu_CB_reset: @ 0x08009158
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r4, r1, #0
	cmp r4, #0
	bne _0800916C
	bl rfu_STC_clearAPIVariables
_0800916C:
	adds r0, r5, #0
	adds r1, r4, #0
	bl rfu_STC_REQ_callback
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start rfu_REQ_configSystem
rfu_REQ_configSystem: @ 0x0800917C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	lsls r4, r4, #0x10
	lsrs r4, r4, #0x10
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	lsls r6, r6, #0x18
	lsrs r6, r6, #0x18
	ldr r0, _080091B0 @ =rfu_STC_REQ_callback
	bl STWI_set_Callback_M
	movs r0, #3
	ands r4, r0
	movs r0, #0x3c
	orrs r4, r0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl STWI_send_SystemConfigREQ
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_080091B0: .4byte rfu_STC_REQ_callback

	thumb_func_start rfu_REQ_configGameData
rfu_REQ_configGameData: @ 0x080091B4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r2, #0
	adds r7, r3, #0
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r2, r1, #0x10
	adds r5, r4, #0
	mov r0, sp
	strb r1, [r0]
	lsrs r2, r2, #0x18
	strb r2, [r0, #1]
	cmp r6, #0
	beq _080091DA
	movs r1, #0x80
	orrs r2, r1
	movs r1, #0
	orrs r2, r1
	strb r2, [r0, #1]
_080091DA:
	movs r2, #2
	ldr r0, _0800923C @ =rfu_CB_configGameData
	mov ip, r0
_080091E0:
	mov r3, sp
	adds r1, r3, r2
	ldrb r0, [r4]
	strb r0, [r1]
	adds r4, #1
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xe
	bls _080091E0
	movs r3, #0
	adds r1, r7, #0
	movs r2, #0
_080091FA:
	ldrb r0, [r1]
	adds r0, r3, r0
	lsls r0, r0, #0x18
	adds r1, #1
	lsrs r0, r0, #0x18
	ldrb r3, [r5]
	adds r0, r0, r3
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r5, #1
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _080091FA
	mov r1, sp
	mvns r0, r3
	strb r0, [r1, #0xf]
	cmp r6, #0
	beq _08009226
	movs r0, #0
	strb r0, [r1, #0xe]
_08009226:
	mov r0, ip
	bl STWI_set_Callback_M
	mov r0, sp
	adds r1, r7, #0
	bl STWI_send_GameConfigREQ
	add sp, #0x10
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800923C: .4byte rfu_CB_configGameData

	thumb_func_start rfu_CB_configGameData
rfu_CB_configGameData: @ 0x08009240
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	cmp r7, #0
	bne _080092CA
	ldr r0, _08009284 @ =gUnk_03002500
	ldr r0, [r0]
	ldr r1, [r0, #0x24]
	ldr r0, _08009288 @ =gUnk_03002540
	ldr r6, [r0]
	ldrb r2, [r1, #4]
	adds r5, r6, #0
	adds r5, #0x98
	strh r2, [r5]
	ldrb r0, [r1, #5]
	lsls r3, r0, #8
	orrs r3, r2
	strh r3, [r5]
	adds r4, r1, #6
	movs r1, #0x80
	lsls r1, r1, #8
	adds r0, r3, #0
	ands r0, r1
	cmp r0, #0
	beq _0800928C
	eors r3, r1
	strh r3, [r5]
	adds r1, r6, #0
	adds r1, #0x97
	movs r0, #1
	b _08009292
	.align 2, 0
_08009284: .4byte gUnk_03002500
_08009288: .4byte gUnk_03002540
_0800928C:
	adds r1, r6, #0
	adds r1, #0x97
	movs r0, #0
_08009292:
	strb r0, [r1]
	movs r2, #0
	ldr r3, _080092D8 @ =gUnk_03002540
_08009298:
	ldr r0, [r3]
	adds r0, #0x9a
	adds r0, r0, r2
	ldrb r1, [r4]
	strb r1, [r0]
	adds r4, #1
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #0xc
	bls _08009298
	adds r4, #1
	movs r2, #0
	ldr r3, _080092D8 @ =gUnk_03002540
_080092B4:
	ldr r0, [r3]
	adds r0, #0xa9
	adds r0, r0, r2
	ldrb r1, [r4]
	strb r1, [r0]
	adds r4, #1
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #7
	bls _080092B4
_080092CA:
	mov r0, ip
	adds r1, r7, #0
	bl rfu_STC_REQ_callback
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080092D8: .4byte gUnk_03002540

	thumb_func_start rfu_REQ_startSearchChild
rfu_REQ_startSearchChild: @ 0x080092DC
	push {lr}
	ldr r0, _0800930C @ =rfu_CB_defaultCallback
	bl STWI_set_Callback_M
	bl STWI_send_SystemStatusREQ
	bl STWI_poll_CommandEnd
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	bne _08009314
	ldr r0, _08009310 @ =gUnk_03002548
	ldr r0, [r0]
	adds r0, #0xdc
	ldr r0, [r0]
	ldrb r0, [r0, #7]
	cmp r0, #0
	bne _0800931A
	movs r0, #1
	bl rfu_STC_clearLinkStatus
	b _0800931A
	.align 2, 0
_0800930C: .4byte rfu_CB_defaultCallback
_08009310: .4byte gUnk_03002548
_08009314:
	movs r0, #0x19
	bl rfu_STC_REQ_callback
_0800931A:
	ldr r0, _08009328 @ =rfu_CB_startSearchChild
	bl STWI_set_Callback_M
	bl STWI_send_SC_StartREQ
	pop {r0}
	bx r0
	.align 2, 0
_08009328: .4byte rfu_CB_startSearchChild

	thumb_func_start rfu_CB_startSearchChild
rfu_CB_startSearchChild: @ 0x0800932C
	push {lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r2, r1, #0
	cmp r2, #0
	bne _08009342
	ldr r1, _08009350 @ =gUnk_03002400
	movs r0, #1
	strb r0, [r1]
_08009342:
	adds r0, r3, #0
	adds r1, r2, #0
	bl rfu_STC_REQ_callback
	pop {r0}
	bx r0
	.align 2, 0
_08009350: .4byte gUnk_03002400

	thumb_func_start rfu_STC_clearLinkStatus
rfu_STC_clearLinkStatus: @ 0x08009354
	push {r4, r5, lr}
	sub sp, #4
	adds r4, r0, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	bl rfu_clearAllSlot
	cmp r4, #0
	beq _0800937C
	mov r0, sp
	movs r5, #0
	strh r5, [r0]
	ldr r4, _080093B0 @ =gUnk_03002540
	ldr r1, [r4]
	adds r1, #0x14
	ldr r2, _080093B4 @ =0x01000040
	bl CpuSet
	ldr r0, [r4]
	strb r5, [r0, #8]
_0800937C:
	movs r1, #0
	ldr r2, _080093B0 @ =gUnk_03002540
	adds r4, r2, #0
	movs r3, #0
_08009384:
	ldr r0, [r4]
	adds r0, #0xa
	adds r0, r0, r1
	strb r3, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _08009384
	ldr r0, [r2]
	movs r1, #0
	strb r1, [r0, #1]
	ldr r0, [r2]
	strb r1, [r0, #2]
	ldr r0, [r2]
	strb r1, [r0, #3]
	ldr r0, [r2]
	strb r1, [r0, #7]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_080093B0: .4byte gUnk_03002540
_080093B4: .4byte 0x01000040

	thumb_func_start rfu_REQ_pollSearchChild
rfu_REQ_pollSearchChild: @ 0x080093B8
	push {lr}
	ldr r0, _080093C8 @ =rfu_CB_pollAndEndSearchChild
	bl STWI_set_Callback_M
	bl STWI_send_SC_PollingREQ
	pop {r0}
	bx r0
	.align 2, 0
_080093C8: .4byte rfu_CB_pollAndEndSearchChild

	thumb_func_start rfu_REQ_endSearchChild
rfu_REQ_endSearchChild: @ 0x080093CC
	push {lr}
	ldr r0, _080093DC @ =rfu_CB_pollAndEndSearchChild
	bl STWI_set_Callback_M
	bl STWI_send_SC_EndREQ
	pop {r0}
	bx r0
	.align 2, 0
_080093DC: .4byte rfu_CB_pollAndEndSearchChild

	thumb_func_start rfu_CB_pollAndEndSearchChild
rfu_CB_pollAndEndSearchChild: @ 0x080093E0
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	cmp r6, #0
	bne _080093F2
	bl rfu_STC_readChildList
_080093F2:
	cmp r4, #0x1a
	bne _08009434
	ldr r5, _08009428 @ =gUnk_03002540
	ldr r0, [r5]
	adds r0, #0x94
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800944E
	ldr r0, _0800942C @ =rfu_CB_defaultCallback
	bl STWI_set_Callback_M
	bl STWI_send_SystemStatusREQ
	bl STWI_poll_CommandEnd
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800944E
	ldr r1, [r5]
	ldr r0, _08009430 @ =gUnk_03002548
	ldr r0, [r0]
	adds r0, #0xdc
	ldr r0, [r0]
	ldrh r0, [r0, #4]
	adds r1, #0x94
	strh r0, [r1]
	b _0800944E
	.align 2, 0
_08009428: .4byte gUnk_03002540
_0800942C: .4byte rfu_CB_defaultCallback
_08009430: .4byte gUnk_03002548
_08009434:
	cmp r4, #0x1b
	bne _0800944E
	ldr r0, _0800945C @ =gUnk_03002540
	ldr r1, [r0]
	ldrb r0, [r1]
	cmp r0, #0xff
	bne _08009448
	adds r1, #0x94
	movs r0, #0
	strh r0, [r1]
_08009448:
	ldr r1, _08009460 @ =gUnk_03002400
	movs r0, #0
	strb r0, [r1]
_0800944E:
	adds r0, r4, #0
	adds r1, r6, #0
	bl rfu_STC_REQ_callback
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800945C: .4byte gUnk_03002540
_08009460: .4byte gUnk_03002400

	thumb_func_start rfu_STC_readChildList
rfu_STC_readChildList: @ 0x08009464
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r1, _08009584 @ =gUnk_03002548
	ldr r0, [r1]
	adds r0, #0xdc
	ldr r0, [r0]
	ldrb r2, [r0, #1]
	mov r8, r2
	adds r4, r1, #0
	cmp r2, #0
	beq _080094C2
	ldr r5, [r0, #4]
	ldr r0, _08009588 @ =rfu_CB_defaultCallback
	bl STWI_set_Callback_M
	bl STWI_send_LinkStatusREQ
	bl STWI_poll_CommandEnd
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _080094B6
	ldr r0, [r4]
	adds r0, #0xdc
	ldr r0, [r0]
	adds r4, r0, #4
	movs r2, #0
_080094A2:
	mov r3, sp
	adds r1, r3, r2
	ldrb r0, [r4]
	strb r0, [r1]
	adds r4, #1
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _080094A2
_080094B6:
	ldr r0, _08009584 @ =gUnk_03002548
	ldr r1, [r0]
	adds r1, #0xdc
	ldr r1, [r1]
	str r5, [r1, #4]
	adds r4, r0, #0
_080094C2:
	ldr r0, [r4]
	adds r0, #0xdc
	ldr r0, [r0]
	adds r4, r0, #4
	mov r0, r8
	cmp r0, #0
	beq _08009572
	ldr r1, _0800958C @ =gUnk_030023F0
	mov ip, r1
	ldr r7, _08009590 @ =gUnk_03002540
	ldr r2, _08009594 @ =gUnk_03002544
	mov sl, r2
	ldr r3, _08009598 @ =gUnk_030023F8
	mov sb, r3
_080094DE:
	ldrb r1, [r4, #2]
	adds r5, r1, #0
	cmp r1, #3
	bhi _08009562
	ldr r2, [r7]
	ldrb r0, [r2, #2]
	asrs r0, r1
	movs r6, #1
	ands r0, r6
	cmp r0, #0
	bne _08009562
	ldrb r2, [r2, #3]
	asrs r2, r1
	ands r2, r6
	cmp r2, #0
	bne _08009562
	mov r3, sp
	adds r0, r3, r1
	ldrb r0, [r0]
	cmp r0, #0
	beq _08009510
	add r1, ip
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
_08009510:
	mov r0, ip
	adds r1, r5, r0
	ldrb r0, [r1]
	cmp r0, #3
	bls _08009562
	strb r2, [r1]
	ldr r0, [r7]
	adds r0, #0xa
	adds r0, r0, r5
	movs r1, #0xff
	strb r1, [r0]
	ldr r2, [r7]
	adds r0, r6, #0
	lsls r0, r5
	ldrb r1, [r2, #2]
	orrs r0, r1
	strb r0, [r2, #2]
	ldr r1, [r7]
	ldrb r0, [r1, #1]
	adds r0, #1
	strb r0, [r1, #1]
	ldr r1, [r7]
	lsls r3, r5, #5
	adds r1, r1, r3
	ldrh r0, [r4]
	strh r0, [r1, #0x14]
	strb r5, [r1, #0x16]
	ldr r0, [r7]
	strb r6, [r0]
	mov r1, sl
	ldr r2, [r1]
	ldrb r1, [r2]
	movs r0, #0x7f
	ands r0, r1
	strb r0, [r2]
	lsls r1, r5, #1
	add r1, sb
	ldr r0, [r7]
	adds r0, r0, r3
	ldrh r0, [r0, #0x14]
	strh r0, [r1]
_08009562:
	mov r0, r8
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	adds r4, #4
	cmp r0, #0
	bne _080094DE
_08009572:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08009584: .4byte gUnk_03002548
_08009588: .4byte rfu_CB_defaultCallback
_0800958C: .4byte gUnk_030023F0
_08009590: .4byte gUnk_03002540
_08009594: .4byte gUnk_03002544
_08009598: .4byte gUnk_030023F8

	thumb_func_start rfu_REQ_startSearchParent
rfu_REQ_startSearchParent: @ 0x0800959C
	push {lr}
	ldr r0, _080095AC @ =rfu_CB_startSearchParent
	bl STWI_set_Callback_M
	bl STWI_send_SP_StartREQ
	pop {r0}
	bx r0
	.align 2, 0
_080095AC: .4byte rfu_CB_startSearchParent

	thumb_func_start rfu_CB_startSearchParent
rfu_CB_startSearchParent: @ 0x080095B0
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r4, r1, #0
	cmp r4, #0
	bne _080095C6
	movs r0, #0
	bl rfu_STC_clearLinkStatus
_080095C6:
	adds r0, r5, #0
	adds r1, r4, #0
	bl rfu_STC_REQ_callback
	pop {r4, r5}
	pop {r0}
	bx r0

	thumb_func_start rfu_REQ_pollSearchParent
rfu_REQ_pollSearchParent: @ 0x080095D4
	push {lr}
	ldr r0, _080095E4 @ =rfu_CB_pollSearchParent
	bl STWI_set_Callback_M
	bl STWI_send_SP_PollingREQ
	pop {r0}
	bx r0
	.align 2, 0
_080095E4: .4byte rfu_CB_pollSearchParent

	thumb_func_start rfu_CB_pollSearchParent
rfu_CB_pollSearchParent: @ 0x080095E8
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	adds r4, r1, #0
	cmp r4, #0
	bne _080095FC
	bl rfu_STC_readParentCandidateList
_080095FC:
	adds r0, r5, #0
	adds r1, r4, #0
	bl rfu_STC_REQ_callback
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start rfu_REQ_endSearchParent
rfu_REQ_endSearchParent: @ 0x0800960C
	push {lr}
	ldr r0, _0800961C @ =rfu_STC_REQ_callback
	bl STWI_set_Callback_M
	bl STWI_send_SP_EndREQ
	pop {r0}
	bx r0
	.align 2, 0
_0800961C: .4byte rfu_STC_REQ_callback

	thumb_func_start rfu_STC_readParentCandidateList
rfu_STC_readParentCandidateList: @ 0x08009620
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	mov r0, sp
	movs r4, #0
	strh r4, [r0]
	ldr r5, _080096C8 @ =gUnk_03002540
	ldr r1, [r5]
	adds r1, #0x14
	ldr r2, _080096CC @ =0x01000040
	bl CpuSet
	ldr r0, _080096D0 @ =gUnk_03002548
	ldr r0, [r0]
	adds r0, #0xdc
	ldr r2, [r0]
	ldrb r7, [r2, #1]
	adds r2, #4
	ldr r0, [r5]
	strb r4, [r0, #8]
	movs r6, #0
	cmp r7, #0
	beq _08009724
	mov ip, r5
	ldr r0, _080096D4 @ =0x00007FFF
	mov r8, r0
_08009656:
	subs r0, r7, #7
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	adds r1, r2, #6
	adds r2, #0x13
	ldrb r0, [r2]
	mvns r0, r0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r2, #1
	movs r4, #0
	movs r3, #0
	adds r6, #1
_08009670:
	ldrb r0, [r2]
	adds r0, r4, r0
	lsls r0, r0, #0x18
	adds r2, #1
	lsrs r0, r0, #0x18
	ldrb r4, [r1]
	adds r0, r0, r4
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	adds r1, #1
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _08009670
	cmp r4, r5
	bne _08009718
	subs r2, #0x1c
	mov r0, ip
	ldr r1, [r0]
	ldrb r0, [r1, #8]
	lsls r0, r0, #5
	adds r0, #0x14
	adds r4, r1, r0
	ldrh r0, [r2]
	movs r3, #0
	strh r0, [r4]
	adds r2, #2
	ldrb r0, [r2]
	strb r0, [r4, #2]
	adds r2, #2
	ldrh r1, [r2]
	mov r0, r8
	ands r0, r1
	strh r0, [r4, #4]
	ldrh r1, [r2]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _080096D8
	movs r0, #1
	strb r0, [r4, #3]
	b _080096DA
	.align 2, 0
_080096C8: .4byte gUnk_03002540
_080096CC: .4byte 0x01000040
_080096D0: .4byte gUnk_03002548
_080096D4: .4byte 0x00007FFF
_080096D8:
	strb r3, [r4, #3]
_080096DA:
	adds r2, #2
	movs r3, #0
	adds r5, r4, #0
	adds r5, #0x15
	adds r4, #6
_080096E4:
	adds r1, r4, r3
	ldrb r0, [r2]
	strb r0, [r1]
	adds r2, #1
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0xc
	bls _080096E4
	adds r2, #1
	movs r3, #0
	adds r4, r5, #0
_080096FC:
	adds r1, r4, r3
	ldrb r0, [r2]
	strb r0, [r1]
	adds r2, #1
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #7
	bls _080096FC
	mov r4, ip
	ldr r1, [r4]
	ldrb r0, [r1, #8]
	adds r0, #1
	strb r0, [r1, #8]
_08009718:
	lsls r0, r6, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bhi _08009724
	cmp r7, #0
	bne _08009656
_08009724:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0

	thumb_func_start rfu_REQ_startConnectParent
rfu_REQ_startConnectParent: @ 0x08009730
	push {r4, r5, lr}
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	movs r3, #0
	movs r2, #0
	ldr r1, _0800977C @ =gUnk_03002540
	ldr r0, [r1]
	ldrh r0, [r0, #0x14]
	cmp r0, r4
	beq _0800975C
	adds r5, r1, #0
_08009746:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bhi _0800975C
	ldr r0, [r5]
	lsls r1, r2, #5
	adds r0, r0, r1
	ldrh r0, [r0, #0x14]
	cmp r0, r4
	bne _08009746
_0800975C:
	cmp r2, #4
	bne _08009764
	movs r3, #0x80
	lsls r3, r3, #1
_08009764:
	cmp r3, #0
	bne _08009788
	ldr r0, _08009780 @ =gUnk_03002544
	ldr r0, [r0]
	strh r4, [r0, #0x10]
	ldr r0, _08009784 @ =rfu_STC_REQ_callback
	bl STWI_set_Callback_M
	adds r0, r4, #0
	bl STWI_send_CP_StartREQ
	b _08009790
	.align 2, 0
_0800977C: .4byte gUnk_03002540
_08009780: .4byte gUnk_03002544
_08009784: .4byte rfu_STC_REQ_callback
_08009788:
	movs r0, #0x1f
	adds r1, r3, #0
	bl rfu_STC_REQ_callback
_08009790:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start rfu_REQ_pollConnectParent
rfu_REQ_pollConnectParent: @ 0x08009798
	push {lr}
	ldr r0, _080097A8 @ =rfu_CB_pollConnectParent
	bl STWI_set_Callback_M
	bl STWI_send_CP_PollingREQ
	pop {r0}
	bx r0
	.align 2, 0
_080097A8: .4byte rfu_CB_pollConnectParent

	thumb_func_start rfu_CB_pollConnectParent
rfu_CB_pollConnectParent: @ 0x080097AC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x2c
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0x24]
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	str r1, [sp, #0x28]
	cmp r1, #0
	bne _080098AE
	ldr r0, _08009868 @ =gUnk_03002548
	ldr r0, [r0]
	adds r0, #0xdc
	ldr r0, [r0]
	ldrh r5, [r0, #4]
	ldrb r1, [r0, #6]
	mov sl, r1
	ldrb r0, [r0, #7]
	cmp r0, #0
	bne _080098AE
	movs r0, #0x80
	lsls r0, r0, #0x11
	lsls r0, r1
	lsrs r2, r0, #0x18
	ldr r4, _0800986C @ =gUnk_03002540
	ldr r3, [r4]
	ldrb r1, [r3, #2]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	bne _080098AE
	adds r0, r2, #0
	orrs r0, r1
	strb r0, [r3, #2]
	ldr r1, [r4]
	ldrb r0, [r1, #3]
	bics r0, r2
	strb r0, [r1, #3]
	ldr r1, [r4]
	adds r0, r1, #0
	adds r0, #0x94
	movs r2, #0
	strh r5, [r0]
	ldrb r0, [r1, #1]
	adds r0, #1
	strb r0, [r1, #1]
	ldr r0, [r4]
	strb r2, [r0]
	ldr r3, _08009870 @ =gUnk_03002544
	ldr r2, [r3]
	ldrb r1, [r2]
	movs r0, #0x80
	orrs r0, r1
	strb r0, [r2]
	movs r5, #0
	adds r7, r4, #0
	add r6, sp, #0x20
	movs r0, #0
	mov r8, r0
_0800982A:
	ldr r2, [r7]
	lsls r4, r5, #5
	adds r0, r2, r4
	ldr r1, [r3]
	ldrh r0, [r0, #0x14]
	ldrh r1, [r1, #0x10]
	cmp r0, r1
	bne _08009882
	ldrb r0, [r2, #8]
	cmp r0, #0
	beq _08009878
	mov sb, sp
	adds r0, r4, #0
	adds r0, #0x14
	adds r0, r2, r0
	mov r1, sp
	movs r2, #0x10
	bl CpuSet
	mov r1, r8
	strh r1, [r6]
	ldr r1, [r7]
	adds r1, #0x14
	adds r0, r6, #0
	ldr r2, _08009874 @ =0x01000040
	bl CpuSet
	ldr r0, [r7]
	mov r1, r8
	strb r1, [r0, #8]
	b _0800988C
	.align 2, 0
_08009868: .4byte gUnk_03002548
_0800986C: .4byte gUnk_03002540
_08009870: .4byte gUnk_03002544
_08009874: .4byte 0x01000040
_08009878:
	adds r0, r4, #0
	adds r0, #0x14
	adds r2, r2, r0
	mov sb, r2
	b _0800988C
_08009882:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _0800982A
_0800988C:
	cmp r5, #3
	bhi _080098AE
	ldr r4, _080098C8 @ =gUnk_03002540
	mov r0, sl
	lsls r5, r0, #5
	adds r0, r5, #0
	adds r0, #0x14
	ldr r1, [r4]
	adds r1, r1, r0
	mov r0, sb
	movs r2, #0x10
	bl CpuSet
	ldr r0, [r4]
	adds r0, r0, r5
	mov r1, sl
	strb r1, [r0, #0x16]
_080098AE:
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x28]
	bl rfu_STC_REQ_callback
	add sp, #0x2c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_080098C8: .4byte gUnk_03002540

	thumb_func_start rfu_getConnectParentStatus
rfu_getConnectParentStatus: @ 0x080098CC
	push {lr}
	adds r3, r0, #0
	movs r0, #0xff
	strb r0, [r3]
	ldr r0, _080098EC @ =gUnk_03002548
	ldr r0, [r0]
	adds r0, #0xdc
	ldr r2, [r0]
	ldrb r0, [r2]
	adds r0, #0x60
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _080098F0
	movs r0, #0x10
	b _080098FC
	.align 2, 0
_080098EC: .4byte gUnk_03002548
_080098F0:
	adds r2, #6
	ldrb r0, [r2]
	strb r0, [r1]
	ldrb r0, [r2, #1]
	strb r0, [r3]
	movs r0, #0
_080098FC:
	pop {r1}
	bx r1

	thumb_func_start rfu_REQ_endConnectParent
rfu_REQ_endConnectParent: @ 0x08009900
	push {lr}
	ldr r0, _08009928 @ =rfu_CB_pollConnectParent
	bl STWI_set_Callback_M
	bl STWI_send_CP_EndREQ
	ldr r0, _0800992C @ =gUnk_03002548
	ldr r0, [r0]
	adds r0, #0xdc
	ldr r1, [r0]
	ldrb r0, [r1, #6]
	cmp r0, #3
	bhi _08009924
	ldr r0, _08009930 @ =gUnk_03002404
	ldrb r1, [r1, #6]
	adds r1, r1, r0
	movs r0, #0
	strb r0, [r1]
_08009924:
	pop {r0}
	bx r0
	.align 2, 0
_08009928: .4byte rfu_CB_pollConnectParent
_0800992C: .4byte gUnk_03002548
_08009930: .4byte gUnk_03002404

	thumb_func_start rfu_syncVBlank
rfu_syncVBlank: @ 0x08009934
	push {r4, r5, lr}
	bl rfu_NI_checkCommFailCounter
	ldr r0, _0800997C @ =gUnk_03002540
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #0xff
	beq _08009A0C
	ldr r4, _08009980 @ =gUnk_03002544
	ldr r1, [r4]
	ldrb r0, [r1, #6]
	cmp r0, #0
	beq _08009952
	subs r0, #1
	strb r0, [r1, #6]
_08009952:
	bl rfu_getMasterSlave
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldr r2, [r4]
	ldrb r1, [r2]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	bne _08009984
	cmp r3, #0
	bne _08009992
	movs r0, #4
	orrs r0, r1
	strb r0, [r2]
	ldr r1, [r4]
	movs r0, #0xb4
	lsls r0, r0, #1
	strh r0, [r1, #0x12]
	b _0800998E
	.align 2, 0
_0800997C: .4byte gUnk_03002540
_08009980: .4byte gUnk_03002544
_08009984:
	cmp r3, #0
	beq _080099A4
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r2]
_0800998E:
	cmp r3, #0
	beq _080099A4
_08009992:
	ldr r3, _080099A0 @ =gUnk_03002544
	ldr r2, [r3]
	ldrb r1, [r2]
	movs r0, #0xfd
	ands r0, r1
	b _080099AE
	.align 2, 0
_080099A0: .4byte gUnk_03002544
_080099A4:
	ldr r3, _08009A00 @ =gUnk_03002544
	ldr r2, [r3]
	ldrb r1, [r2]
	movs r0, #2
	orrs r0, r1
_080099AE:
	strb r0, [r2]
	ldr r3, [r3]
	ldrb r1, [r3]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08009A0C
	ldrh r0, [r3, #0x12]
	cmp r0, #0
	bne _08009A08
	movs r0, #0xfb
	ands r0, r1
	strb r0, [r3]
	ldr r0, _08009A04 @ =gUnk_03002540
	ldr r0, [r0]
	ldrb r1, [r0, #2]
	ldrb r0, [r0, #3]
	adds r5, r0, #0
	orrs r5, r1
	movs r4, #0
_080099D6:
	adds r0, r5, #0
	asrs r0, r4
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _080099E8
	adds r0, r4, #0
	bl rfu_STC_removeLinkData
_080099E8:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _080099D6
	ldr r0, _08009A04 @ =gUnk_03002540
	ldr r1, [r0]
	movs r0, #0xff
	strb r0, [r1]
	movs r0, #1
	b _08009A0E
	.align 2, 0
_08009A00: .4byte gUnk_03002544
_08009A04: .4byte gUnk_03002540
_08009A08:
	subs r0, #1
	strh r0, [r3, #0x12]
_08009A0C:
	movs r0, #0
_08009A0E:
	pop {r4, r5}
	pop {r1}
	bx r1

	thumb_func_start rfu_REQBN_watchLink
rfu_REQBN_watchLink: @ 0x08009A14
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	mov r8, r1
	str r2, [sp]
	str r3, [sp, #4]
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	movs r0, #0
	str r0, [sp, #8]
	movs r1, #0
	str r1, [sp, #0xc]
	mov r2, r8
	strb r1, [r2]
	mov r0, sp
	ldrb r1, [r0, #0xc]
	ldr r0, [sp]
	strb r1, [r0]
	mov r2, sp
	ldrb r0, [r2, #0xc]
	ldr r2, [sp, #4]
	strb r0, [r2]
	ldr r4, _08009AB4 @ =gUnk_03002540
	ldr r0, [r4]
	ldrb r0, [r0]
	cmp r0, #0xff
	bne _08009A52
	b _08009D96
_08009A52:
	ldr r0, _08009AB8 @ =gUnk_03002500
	ldr r0, [r0]
	ldrb r0, [r0, #0x14]
	cmp r0, #0
	bne _08009A5E
	b _08009D96
_08009A5E:
	ldr r3, _08009ABC @ =gUnk_03002544
	ldr r2, [r3]
	ldrb r1, [r2]
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _08009A72
	movs r0, #0xb4
	lsls r0, r0, #1
	strh r0, [r2, #0x12]
_08009A72:
	ldr r1, [r3]
	ldrb r0, [r1, #6]
	cmp r0, #0
	bne _08009A84
	ldr r0, [r4]
	ldrb r0, [r0, #9]
	strb r0, [r1, #6]
	movs r1, #1
	str r1, [sp, #8]
_08009A84:
	lsls r0, r5, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #0x29
	bne _08009AC4
	ldr r0, _08009AC0 @ =gUnk_03002548
	ldr r0, [r0]
	adds r0, #0xdc
	ldr r1, [r0]
	ldrb r0, [r1, #4]
	mov r2, r8
	strb r0, [r2]
	ldrb r0, [r1, #5]
	ldr r1, [sp]
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bne _08009AAE
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	strb r0, [r2]
_08009AAE:
	movs r2, #2
	str r2, [sp, #8]
	b _08009B1C
	.align 2, 0
_08009AB4: .4byte gUnk_03002540
_08009AB8: .4byte gUnk_03002500
_08009ABC: .4byte gUnk_03002544
_08009AC0: .4byte gUnk_03002548
_08009AC4:
	movs r0, #0x9b
	lsls r0, r0, #1
	cmp r5, r0
	bne _08009B14
	ldr r0, _08009B70 @ =gUnk_03002548
	ldr r0, [r0]
	adds r0, #0xdc
	ldr r0, [r0]
	ldrb r5, [r0, #5]
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	eors r5, r0
	ands r5, r0
	mov r0, r8
	strb r5, [r0]
	movs r0, #1
	ldr r1, [sp]
	strb r0, [r1]
	movs r6, #0
_08009AEA:
	mov r2, r8
	ldrb r0, [r2]
	asrs r0, r6
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _08009B0A
	ldr r0, _08009B74 @ =gUnk_03002540
	ldr r0, [r0]
	adds r0, #0xa
	adds r0, r0, r6
	movs r1, #0
	strb r1, [r0]
	adds r0, r6, #0
	bl rfu_STC_removeLinkData
_08009B0A:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _08009AEA
_08009B14:
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _08009B1C
	b _08009D96
_08009B1C:
	ldr r4, _08009B70 @ =gUnk_03002548
	ldr r0, [r4]
	adds r0, #0xdc
	ldr r0, [r0]
	ldr r1, [r0]
	str r1, [sp, #0x10]
	ldr r0, [r0, #4]
	str r0, [sp, #0x14]
	ldr r0, _08009B78 @ =rfu_CB_defaultCallback
	bl STWI_set_Callback_M
	bl STWI_send_LinkStatusREQ
	bl STWI_poll_CommandEnd
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	str r0, [sp, #0xc]
	cmp r0, #0
	bne _08009B7C
	ldr r0, [r4]
	adds r0, #0xdc
	ldr r0, [r0]
	adds r2, r0, #4
	movs r6, #0
	ldr r3, _08009B74 @ =gUnk_03002540
_08009B50:
	ldr r0, [r3]
	adds r0, #0xa
	adds r0, r0, r6
	ldrb r1, [r2]
	strb r1, [r0]
	adds r2, #1
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _08009B50
	movs r2, #0
	mov sb, r2
	movs r6, #0
	b _08009B88
	.align 2, 0
_08009B70: .4byte gUnk_03002548
_08009B74: .4byte gUnk_03002540
_08009B78: .4byte rfu_CB_defaultCallback
_08009B7C:
	movs r0, #0x11
	ldr r1, [sp, #0xc]
	bl rfu_STC_REQ_callback
	ldr r0, [sp, #0xc]
	b _08009D98
_08009B88:
	movs r0, #0x80
	lsls r0, r0, #0x11
	lsls r0, r6
	lsrs r5, r0, #0x18
	adds r0, r6, #1
	mov sl, r0
	ldr r1, [sp, #0xc]
	cmp r1, #0
	beq _08009B9C
	b _08009D4A
_08009B9C:
	ldr r2, [sp, #8]
	cmp r2, #1
	bne _08009C6A
	ldr r4, _08009BE4 @ =gUnk_03002540
	ldr r1, [r4]
	ldrb r0, [r1, #2]
	ands r0, r5
	cmp r0, #0
	beq _08009C6A
	adds r0, r1, #0
	adds r0, #0xa
	adds r0, r0, r6
	ldrb r0, [r0]
	cmp r0, #0
	bne _08009C60
	ldrb r0, [r1]
	cmp r0, #1
	bne _08009BEC
	ldr r1, _08009BE8 @ =gUnk_03002404
	adds r1, r6, r1
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _08009C6A
	mov r0, r8
	ldrb r1, [r0]
	adds r0, r5, #0
	orrs r0, r1
	mov r1, r8
	strb r0, [r1]
	ldr r0, [sp]
	strb r2, [r0]
	b _08009C6A
	.align 2, 0
_08009BE4: .4byte gUnk_03002540
_08009BE8: .4byte gUnk_03002404
_08009BEC:
	bl STWI_send_SystemStatusREQ
	bl STWI_poll_CommandEnd
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08009C6A
	ldr r0, _08009C1C @ =gUnk_03002548
	ldr r0, [r0]
	adds r0, #0xdc
	ldr r0, [r0]
	ldrb r0, [r0, #7]
	cmp r0, #0
	bne _08009C20
	mov r2, r8
	ldrb r1, [r2]
	adds r0, r5, #0
	orrs r0, r1
	strb r0, [r2]
	mov r0, sp
	ldrb r1, [r0, #8]
	ldr r0, [sp]
	b _08009C68
	.align 2, 0
_08009C1C: .4byte gUnk_03002548
_08009C20:
	ldr r0, _08009C5C @ =gUnk_03002404
	adds r1, r6, r0
	ldrb r0, [r1]
	adds r0, #1
	strb r0, [r1]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bls _08009C6A
	mov r2, sp
	ldrb r2, [r2, #0xc]
	strb r2, [r1]
	ldr r0, [r4]
	ldrb r0, [r0, #2]
	bl STWI_send_DisconnectREQ
	bl STWI_poll_CommandEnd
	mov r0, r8
	ldrb r1, [r0]
	adds r0, r5, #0
	orrs r0, r1
	mov r1, r8
	strb r0, [r1]
	mov r2, sp
	ldrb r0, [r2, #8]
	ldr r2, [sp]
	strb r0, [r2]
	b _08009C6A
	.align 2, 0
_08009C5C: .4byte gUnk_03002404
_08009C60:
	ldr r0, _08009CC0 @ =gUnk_03002404
	adds r0, r6, r0
	mov r1, sp
	ldrb r1, [r1, #0xc]
_08009C68:
	strb r1, [r0]
_08009C6A:
	ldr r2, _08009CC4 @ =gUnk_03002540
	mov ip, r2
	ldr r1, [r2]
	ldrb r7, [r1]
	adds r0, r6, #1
	mov sl, r0
	cmp r7, #1
	bne _08009D4A
	adds r0, r1, #0
	adds r0, #0xa
	adds r4, r0, r6
	ldrb r3, [r4]
	cmp r3, #0
	beq _08009D4A
	ldrb r2, [r1, #3]
	adds r0, r5, #0
	ands r0, r2
	cmp r0, #0
	beq _08009CCE
	cmp r3, #0xa
	bls _08009CC8
	ldr r2, [sp, #4]
	ldrb r1, [r2]
	adds r0, r5, #0
	orrs r0, r1
	strb r0, [r2]
	mov r0, ip
	ldr r2, [r0]
	ldrb r1, [r2, #2]
	adds r0, r5, #0
	orrs r0, r1
	strb r0, [r2, #2]
	mov r2, ip
	ldr r1, [r2]
	ldrb r0, [r1, #3]
	bics r0, r5
	strb r0, [r1, #3]
	ldr r1, [r2]
	ldrb r0, [r1, #1]
	adds r0, #1
	strb r0, [r1, #1]
	b _08009D4A
	.align 2, 0
_08009CC0: .4byte gUnk_03002404
_08009CC4: .4byte gUnk_03002540
_08009CC8:
	movs r0, #0
	strb r0, [r4]
	b _08009D4A
_08009CCE:
	ldrb r0, [r1, #2]
	orrs r0, r2
	ands r0, r5
	cmp r0, #0
	bne _08009D4A
	bl STWI_send_SlotStatusREQ
	bl STWI_poll_CommandEnd
	ldr r0, _08009D14 @ =gUnk_03002548
	ldr r0, [r0]
	adds r0, #0xdc
	ldr r2, [r0]
	ldrb r0, [r2, #1]
	subs r0, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r2, #8
	cmp r3, #0
	beq _08009D4A
	ldrh r4, [r2]
	ldrb r0, [r2, #2]
	cmp r0, r6
	bne _08009D1C
	ldr r1, _08009D18 @ =gUnk_030023F8
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r4, r0
	bne _08009D1C
	lsls r7, r6
	mov r0, sb
	orrs r0, r7
	lsls r0, r0, #0x18
	b _08009D46
	.align 2, 0
_08009D14: .4byte gUnk_03002548
_08009D18: .4byte gUnk_030023F8
_08009D1C:
	adds r2, #4
	subs r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #0
	beq _08009D4A
	ldrh r4, [r2]
	ldrb r0, [r2, #2]
	cmp r0, r6
	bne _08009D1C
	ldr r1, _08009DA8 @ =gUnk_030023F8
	lsls r0, r6, #1
	adds r0, r0, r1
	ldrh r0, [r0]
	cmp r4, r0
	bne _08009D1C
	movs r0, #1
	lsls r0, r6
	mov r1, sb
	orrs r1, r0
	lsls r0, r1, #0x18
_08009D46:
	lsrs r0, r0, #0x18
	mov sb, r0
_08009D4A:
	ldr r0, _08009DAC @ =gUnk_03002540
	ldr r0, [r0]
	ldrb r1, [r0, #2]
	mov r2, r8
	ldrb r0, [r2]
	ands r0, r1
	ands r5, r0
	cmp r5, #0
	beq _08009D64
	adds r0, r6, #0
	movs r1, #0
	bl rfu_STC_removeLinkData
_08009D64:
	mov r1, sl
	lsls r0, r1, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bhi _08009D70
	b _08009B88
_08009D70:
	mov r2, sb
	cmp r2, #0
	beq _08009D80
	mov r0, sb
	bl STWI_send_DisconnectREQ
	bl STWI_poll_CommandEnd
_08009D80:
	ldr r1, _08009DB0 @ =gUnk_03002548
	ldr r0, [r1]
	adds r0, #0xdc
	ldr r0, [r0]
	ldr r2, [sp, #0x10]
	str r2, [r0]
	ldr r0, [r1]
	adds r0, #0xdc
	ldr r0, [r0]
	ldr r1, [sp, #0x14]
	str r1, [r0, #4]
_08009D96:
	movs r0, #0
_08009D98:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_08009DA8: .4byte gUnk_030023F8
_08009DAC: .4byte gUnk_03002540
_08009DB0: .4byte gUnk_03002548

	thumb_func_start rfu_STC_removeLinkData
rfu_STC_removeLinkData: @ 0x08009DB4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov ip, r1
	movs r0, #0x80
	lsls r0, r0, #0x11
	lsls r0, r7
	lsrs r5, r0, #0x18
	ldr r1, _08009E58 @ =gUnk_03002540
	ldr r4, [r1]
	ldrb r0, [r4, #2]
	ands r0, r5
	mov r8, r1
	cmp r0, #0
	beq _08009DE6
	ldrb r0, [r4, #1]
	cmp r0, #0
	beq _08009DE6
	subs r0, #1
	strb r0, [r4, #1]
_08009DE6:
	mov r3, r8
	ldr r2, [r3]
	mvns r6, r5
	ldrb r1, [r2, #2]
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r2, #2]
	ldr r2, [r3]
	ldrb r1, [r2, #3]
	adds r0, r5, #0
	orrs r0, r1
	strb r0, [r2, #3]
	ldr r3, [r3]
	ldr r0, [r3]
	ldr r1, _08009E5C @ =0x00FF00FF
	ands r0, r1
	cmp r0, #0
	bne _08009E0E
	movs r0, #0xff
	strb r0, [r3]
_08009E0E:
	mov r0, ip
	cmp r0, #0
	beq _08009E4C
	mov r1, sp
	movs r4, #0
	movs r0, #0
	strh r0, [r1]
	lsls r0, r7, #5
	adds r0, #0x14
	mov r2, r8
	ldr r1, [r2]
	adds r1, r1, r0
	ldr r2, _08009E60 @ =0x01000010
	mov r0, sp
	bl CpuSet
	mov r0, r8
	ldr r2, [r0]
	ldrb r1, [r2, #3]
	adds r0, r6, #0
	ands r0, r1
	strb r0, [r2, #3]
	mov r2, r8
	ldr r1, [r2]
	ldrb r0, [r1, #7]
	ands r6, r0
	strb r6, [r1, #7]
	ldr r0, [r2]
	adds r0, #0xa
	adds r0, r0, r7
	strb r4, [r0]
_08009E4C:
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_08009E58: .4byte gUnk_03002540
_08009E5C: .4byte 0x00FF00FF
_08009E60: .4byte 0x01000010

	thumb_func_start rfu_REQ_disconnect
rfu_REQ_disconnect: @ 0x08009E64
	push {r4, lr}
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r2, _08009EA8 @ =gUnk_03002540
	ldr r1, [r2]
	ldrb r0, [r1, #2]
	ldrb r1, [r1, #3]
	orrs r0, r1
	ands r0, r4
	cmp r0, #0
	beq _08009EEC
	ldr r1, _08009EAC @ =gUnk_03002544
	ldr r0, [r1]
	strb r4, [r0, #5]
	ldr r2, [r2]
	ldrb r0, [r2]
	cmp r0, #0xff
	bne _08009EB0
	ldr r0, [r1]
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	beq _08009EB0
	ldrb r0, [r2, #3]
	ands r0, r4
	cmp r0, #0
	beq _08009EEC
	movs r0, #0x30
	movs r1, #0
	bl rfu_CB_disconnect
	b _08009EEC
	.align 2, 0
_08009EA8: .4byte gUnk_03002540
_08009EAC: .4byte gUnk_03002544
_08009EB0:
	ldr r0, _08009ED8 @ =gUnk_03002400
	ldrb r0, [r0]
	cmp r0, #0
	beq _08009EE0
	ldr r0, _08009EDC @ =rfu_CB_defaultCallback
	bl STWI_set_Callback_M
	bl STWI_send_SC_EndREQ
	bl STWI_poll_CommandEnd
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #0
	beq _08009EE0
	movs r0, #0x1b
	bl rfu_STC_REQ_callback
	b _08009EEC
	.align 2, 0
_08009ED8: .4byte gUnk_03002400
_08009EDC: .4byte rfu_CB_defaultCallback
_08009EE0:
	ldr r0, _08009EF4 @ =rfu_CB_disconnect
	bl STWI_set_Callback_M
	adds r0, r4, #0
	bl STWI_send_DisconnectREQ
_08009EEC:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_08009EF4: .4byte rfu_CB_disconnect

	thumb_func_start rfu_CB_disconnect
rfu_CB_disconnect: @ 0x08009EF8
	push {r4, r5, r6, lr}
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r5, r1, #0x10
	cmp r5, #3
	bne _08009F34
	ldr r0, _08009FC8 @ =gUnk_03002540
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #0
	bne _08009F34
	ldr r0, _08009FCC @ =rfu_CB_defaultCallback
	bl STWI_set_Callback_M
	bl STWI_send_SystemStatusREQ
	bl STWI_poll_CommandEnd
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _08009F34
	ldr r0, _08009FD0 @ =gUnk_03002548
	ldr r0, [r0]
	adds r0, #0xdc
	ldr r0, [r0]
	ldrb r0, [r0, #7]
	cmp r0, #0
	bne _08009F34
	movs r5, #0
_08009F34:
	ldr r3, _08009FD4 @ =gUnk_03002544
	ldr r2, [r3]
	ldr r0, _08009FC8 @ =gUnk_03002540
	ldr r1, [r0]
	ldrb r0, [r1, #2]
	ldrb r1, [r1, #3]
	orrs r0, r1
	ldrb r1, [r2, #5]
	ands r0, r1
	strb r0, [r2, #5]
	ldr r0, _08009FD0 @ =gUnk_03002548
	ldr r0, [r0]
	adds r0, #0xdc
	ldr r1, [r0]
	ldr r0, [r3]
	ldrb r0, [r0, #5]
	strb r0, [r1, #8]
	cmp r5, #0
	bne _08009F82
	movs r4, #0
_08009F5C:
	movs r0, #0x80
	lsls r0, r0, #0x11
	lsls r0, r4
	lsrs r0, r0, #0x18
	ldr r1, _08009FD4 @ =gUnk_03002544
	ldr r1, [r1]
	ldrb r1, [r1, #5]
	ands r0, r1
	cmp r0, #0
	beq _08009F78
	adds r0, r4, #0
	movs r1, #1
	bl rfu_STC_removeLinkData
_08009F78:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _08009F5C
_08009F82:
	ldr r0, _08009FC8 @ =gUnk_03002540
	ldr r2, [r0]
	ldrb r1, [r2, #2]
	ldrb r0, [r2, #3]
	orrs r0, r1
	cmp r0, #0
	bne _08009F94
	movs r0, #0xff
	strb r0, [r2]
_08009F94:
	adds r0, r6, #0
	adds r1, r5, #0
	bl rfu_STC_REQ_callback
	ldr r0, _08009FD8 @ =gUnk_03002400
	ldrb r0, [r0]
	cmp r0, #0
	beq _08009FC0
	ldr r0, _08009FCC @ =rfu_CB_defaultCallback
	bl STWI_set_Callback_M
	bl STWI_send_SC_StartREQ
	bl STWI_poll_CommandEnd
	adds r5, r0, #0
	cmp r5, #0
	beq _08009FC0
	movs r0, #0x19
	adds r1, r5, #0
	bl rfu_STC_REQ_callback
_08009FC0:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_08009FC8: .4byte gUnk_03002540
_08009FCC: .4byte rfu_CB_defaultCallback
_08009FD0: .4byte gUnk_03002548
_08009FD4: .4byte gUnk_03002544
_08009FD8: .4byte gUnk_03002400

	thumb_func_start rfu_REQ_CHILD_startConnectRecovery
rfu_REQ_CHILD_startConnectRecovery: @ 0x08009FDC
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, _0800A02C @ =gUnk_03002544
	ldr r0, [r0]
	strb r5, [r0, #5]
	movs r4, #0
	movs r0, #1
	ands r0, r5
	ldr r2, _0800A030 @ =rfu_STC_REQ_callback
	cmp r0, #0
	bne _0800A00A
	movs r1, #1
_08009FF6:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bhi _0800A00A
	adds r0, r5, #0
	asrs r0, r4
	ands r0, r1
	cmp r0, #0
	beq _08009FF6
_0800A00A:
	adds r0, r2, #0
	bl STWI_set_Callback_M
	ldr r0, _0800A034 @ =gUnk_03002540
	ldr r1, [r0]
	lsls r0, r4, #5
	adds r0, r1, r0
	ldrh r0, [r0, #0x14]
	adds r1, #0x94
	ldrh r1, [r1]
	adds r2, r5, #0
	bl STWI_send_CPR_StartREQ
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800A02C: .4byte gUnk_03002544
_0800A030: .4byte rfu_STC_REQ_callback
_0800A034: .4byte gUnk_03002540

	thumb_func_start rfu_REQ_CHILD_pollConnectRecovery
rfu_REQ_CHILD_pollConnectRecovery: @ 0x0800A038
	push {lr}
	ldr r0, _0800A048 @ =rfu_CB_CHILD_pollConnectRecovery
	bl STWI_set_Callback_M
	bl STWI_send_CPR_PollingREQ
	pop {r0}
	bx r0
	.align 2, 0
_0800A048: .4byte rfu_CB_CHILD_pollConnectRecovery

	thumb_func_start rfu_CB_CHILD_pollConnectRecovery
rfu_CB_CHILD_pollConnectRecovery: @ 0x0800A04C
	push {r4, r5, r6, r7, lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	lsls r1, r1, #0x10
	lsrs r6, r1, #0x10
	cmp r6, #0
	bne _0800A0C0
	ldr r0, _0800A0D0 @ =gUnk_03002548
	ldr r0, [r0]
	adds r0, #0xdc
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	cmp r0, #0
	bne _0800A0C0
	ldr r0, _0800A0D4 @ =gUnk_03002544
	ldr r1, [r0]
	ldrb r1, [r1, #5]
	adds r7, r0, #0
	cmp r1, #0
	beq _0800A0C0
	ldr r1, _0800A0D8 @ =gUnk_03002540
	ldr r0, [r1]
	strb r6, [r0]
	movs r4, #0
	adds r5, r1, #0
_0800A080:
	movs r0, #0x80
	lsls r0, r0, #0x11
	lsls r0, r4
	lsrs r3, r0, #0x18
	ldr r2, [r5]
	ldr r0, [r7]
	ldrb r0, [r0, #5]
	ands r0, r3
	ldrb r1, [r2, #3]
	ands r0, r1
	cmp r0, #0
	beq _0800A0B0
	ldrb r1, [r2, #2]
	adds r0, r3, #0
	orrs r0, r1
	strb r0, [r2, #2]
	ldr r1, [r5]
	ldrb r0, [r1, #3]
	bics r0, r3
	strb r0, [r1, #3]
	ldr r1, [r5]
	ldrb r0, [r1, #1]
	adds r0, #1
	strb r0, [r1, #1]
_0800A0B0:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0800A080
	ldr r1, [r7]
	movs r0, #0
	strb r0, [r1, #5]
_0800A0C0:
	mov r0, ip
	adds r1, r6, #0
	bl rfu_STC_REQ_callback
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A0D0: .4byte gUnk_03002548
_0800A0D4: .4byte gUnk_03002544
_0800A0D8: .4byte gUnk_03002540

	thumb_func_start rfu_CHILD_getConnectRecoveryStatus
rfu_CHILD_getConnectRecoveryStatus: @ 0x0800A0DC
	push {lr}
	adds r2, r0, #0
	movs r0, #0xff
	strb r0, [r2]
	ldr r0, _0800A0FC @ =gUnk_03002548
	ldr r0, [r0]
	adds r0, #0xdc
	ldr r1, [r0]
	ldrb r0, [r1]
	adds r0, #0x4d
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #1
	bls _0800A100
	movs r0, #0x10
	b _0800A106
	.align 2, 0
_0800A0FC: .4byte gUnk_03002548
_0800A100:
	ldrb r0, [r1, #4]
	strb r0, [r2]
	movs r0, #0
_0800A106:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start rfu_REQ_CHILD_endConnectRecovery
rfu_REQ_CHILD_endConnectRecovery: @ 0x0800A10C
	push {lr}
	ldr r0, _0800A11C @ =rfu_CB_CHILD_pollConnectRecovery
	bl STWI_set_Callback_M
	bl STWI_send_CPR_EndREQ
	pop {r0}
	bx r0
	.align 2, 0
_0800A11C: .4byte rfu_CB_CHILD_pollConnectRecovery
_0800A120:
	.byte 0x70, 0xB5

	non_word_aligned_thumb_func_start rfu_STC_fastCopy
rfu_STC_fastCopy: @ 0x0800A122
	adds r5, r0, #0
	adds r6, r1, #0
	ldr r3, [r5]
	ldr r1, [r6]
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _0800A144
	adds r4, r0, #0
_0800A136:
	ldrb r0, [r3]
	strb r0, [r1]
	adds r3, #1
	adds r1, #1
	subs r2, #1
	cmp r2, r4
	bne _0800A136
_0800A144:
	str r3, [r5]
	str r1, [r6]
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start rfu_REQ_changeMasterSlave
rfu_REQ_changeMasterSlave: @ 0x0800A150
	push {lr}
	movs r0, #1
	bl STWI_read_status
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, #1
	bne _0800A170
	ldr r0, _0800A16C @ =rfu_STC_REQ_callback
	bl STWI_set_Callback_M
	bl STWI_send_MS_ChangeREQ
	b _0800A178
	.align 2, 0
_0800A16C: .4byte rfu_STC_REQ_callback
_0800A170:
	movs r0, #0x27
	movs r1, #0
	bl rfu_STC_REQ_callback
_0800A178:
	pop {r0}
	bx r0

	thumb_func_start rfu_getMasterSlave
rfu_getMasterSlave: @ 0x0800A17C
	push {lr}
	movs r0, #1
	bl STWI_read_status
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #1
	bne _0800A1AA
	ldr r0, _0800A1B0 @ =gUnk_03002500
	ldr r1, [r0]
	adds r0, r1, #0
	adds r0, #0x2c
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800A1AA
	ldrb r0, [r1, #6]
	cmp r0, #0x27
	beq _0800A1A8
	cmp r0, #0x25
	beq _0800A1A8
	cmp r0, #0x37
	bne _0800A1AA
_0800A1A8:
	movs r2, #0
_0800A1AA:
	adds r0, r2, #0
	pop {r1}
	bx r1
	.align 2, 0
_0800A1B0: .4byte gUnk_03002500

	thumb_func_start rfu_clearAllSlot
rfu_clearAllSlot: @ 0x0800A1B4
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	ldr r1, _0800A238 @ =0x04000208
	ldrh r0, [r1]
	mov r8, r0
	movs r0, #0
	strh r0, [r1]
	movs r5, #0
	mov r0, sp
	adds r0, #2
	movs r7, #0
	adds r6, r0, #0
_0800A1D0:
	mov r0, sp
	strh r7, [r0]
	ldr r0, _0800A23C @ =gUnk_03002530
	lsls r4, r5, #2
	adds r0, r4, r0
	ldr r1, [r0]
	mov r0, sp
	ldr r2, _0800A240 @ =0x01000034
	bl CpuSet
	strh r7, [r6]
	ldr r0, _0800A244 @ =gUnk_03002510
	adds r4, r4, r0
	ldr r1, [r4]
	adds r0, r6, #0
	ldr r2, _0800A248 @ =0x0100000A
	bl CpuSet
	ldr r3, _0800A24C @ =gUnk_03002540
	ldr r0, [r3]
	adds r0, #0x10
	adds r0, r0, r5
	movs r1, #0x10
	strb r1, [r0]
	adds r0, r5, #1
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	cmp r5, #3
	bls _0800A1D0
	ldr r2, [r3]
	movs r1, #0
	movs r0, #0x57
	strb r0, [r2, #0xf]
	ldr r0, [r3]
	strb r1, [r0, #4]
	ldr r0, [r3]
	strb r1, [r0, #5]
	ldr r0, [r3]
	strb r1, [r0, #6]
	ldr r0, _0800A250 @ =gUnk_03002544
	ldr r0, [r0]
	strb r1, [r0, #2]
	ldr r0, _0800A238 @ =0x04000208
	mov r1, r8
	strh r1, [r0]
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800A238: .4byte 0x04000208
_0800A23C: .4byte gUnk_03002530
_0800A240: .4byte 0x01000034
_0800A244: .4byte gUnk_03002510
_0800A248: .4byte 0x0100000A
_0800A24C: .4byte gUnk_03002540
_0800A250: .4byte gUnk_03002544

	thumb_func_start rfu_STC_releaseFrame
rfu_STC_releaseFrame: @ 0x0800A254
	push {r4, r5, r6, lr}
	adds r4, r2, #0
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	adds r5, r2, #0
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	ldr r0, _0800A28C @ =gUnk_03002544
	ldr r0, [r0]
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0800A294
	ldr r6, _0800A290 @ =gUnk_03002540
	cmp r3, #0
	bne _0800A280
	ldr r1, [r6]
	ldrb r0, [r1, #0xf]
	ldrh r4, [r4, #0x2e]
	adds r0, r0, r4
	strb r0, [r1, #0xf]
_0800A280:
	ldr r1, [r6]
	ldrb r0, [r1, #0xf]
	adds r0, #3
	strb r0, [r1, #0xf]
	b _0800A2B4
	.align 2, 0
_0800A28C: .4byte gUnk_03002544
_0800A290: .4byte gUnk_03002540
_0800A294:
	ldr r6, _0800A2BC @ =gUnk_03002540
	cmp r3, #0
	bne _0800A2A8
	ldr r1, [r6]
	adds r1, #0x10
	adds r1, r1, r2
	ldrb r0, [r1]
	ldrh r4, [r4, #0x2e]
	adds r0, r0, r4
	strb r0, [r1]
_0800A2A8:
	ldr r1, [r6]
	adds r1, #0x10
	adds r1, r1, r5
	ldrb r0, [r1]
	adds r0, #2
	strb r0, [r1]
_0800A2B4:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800A2BC: .4byte gUnk_03002540

	thumb_func_start rfu_clearSlot
rfu_clearSlot: @ 0x0800A2C0
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	cmp r7, #3
	bls _0800A2E0
	movs r0, #0x80
	lsls r0, r0, #3
	b _0800A458
_0800A2E0:
	movs r0, #0xf
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	bne _0800A2F0
	movs r0, #0xc0
	lsls r0, r0, #3
	b _0800A458
_0800A2F0:
	ldr r1, _0800A334 @ =0x04000208
	ldrh r0, [r1]
	mov sl, r0
	movs r0, #0
	strh r0, [r1]
	movs r0, #0xc
	mov r2, r8
	ands r0, r2
	cmp r0, #0
	beq _0800A3B8
	movs r3, #0
	ldr r1, _0800A338 @ =gUnk_03002530
	lsls r0, r7, #2
	adds r0, r0, r1
	mov sb, r0
_0800A30E:
	movs r4, #0
	cmp r3, #0
	bne _0800A340
	movs r0, #4
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0800A360
	mov r2, sb
	ldr r4, [r2]
	ldr r0, _0800A33C @ =gUnk_03002540
	ldr r2, [r0]
	adds r0, r4, #0
	adds r0, #0x2c
	ldrb r1, [r0]
	ldrb r0, [r2, #4]
	bics r0, r1
	strb r0, [r2, #4]
	b _0800A360
	.align 2, 0
_0800A334: .4byte 0x04000208
_0800A338: .4byte gUnk_03002530
_0800A33C: .4byte gUnk_03002540
_0800A340:
	movs r0, #8
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0800A360
	mov r2, sb
	ldr r0, [r2]
	adds r4, r0, #0
	adds r4, #0x34
	ldr r0, _0800A3F4 @ =gUnk_03002540
	ldr r2, [r0]
	movs r1, #1
	lsls r1, r7
	ldrb r0, [r2, #5]
	bics r0, r1
	strb r0, [r2, #5]
_0800A360:
	adds r6, r3, #1
	cmp r4, #0
	beq _0800A3B0
	ldrh r0, [r4]
	movs r2, #0x80
	lsls r2, r2, #8
	adds r1, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0800A3A0
	lsls r1, r3, #0x18
	lsrs r1, r1, #0x18
	adds r0, r7, #0
	adds r2, r4, #0
	bl rfu_STC_releaseFrame
	movs r1, #0
	adds r2, r4, #0
	adds r2, #0x2c
	movs r5, #1
	movs r3, #0
_0800A38A:
	ldrb r0, [r2]
	asrs r0, r1
	ands r0, r5
	cmp r0, #0
	beq _0800A396
	strh r3, [r4, #2]
_0800A396:
	adds r0, r1, #1
	lsls r0, r0, #0x10
	lsrs r1, r0, #0x10
	cmp r1, #3
	bls _0800A38A
_0800A3A0:
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	mov r0, sp
	adds r1, r4, #0
	ldr r2, _0800A3F8 @ =0x0100001A
	bl CpuSet
_0800A3B0:
	lsls r0, r6, #0x10
	lsrs r3, r0, #0x10
	cmp r3, #1
	bls _0800A30E
_0800A3B8:
	movs r0, #1
	mov r4, r8
	ands r0, r4
	cmp r0, #0
	beq _0800A42E
	ldr r1, _0800A3FC @ =gUnk_03002510
	lsls r0, r7, #2
	adds r0, r0, r1
	ldr r3, [r0]
	ldrh r1, [r3]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800A420
	ldr r0, _0800A400 @ =gUnk_03002544
	ldr r0, [r0]
	ldrb r1, [r0]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0800A404
	ldr r2, _0800A3F4 @ =gUnk_03002540
	ldr r1, [r2]
	ldrb r0, [r1, #0xf]
	adds r0, #3
	ldrb r4, [r3, #4]
	adds r0, r0, r4
	strb r0, [r1, #0xf]
	b _0800A416
	.align 2, 0
_0800A3F4: .4byte gUnk_03002540
_0800A3F8: .4byte 0x0100001A
_0800A3FC: .4byte gUnk_03002510
_0800A400: .4byte gUnk_03002544
_0800A404:
	ldr r2, _0800A468 @ =gUnk_03002540
	ldr r1, [r2]
	adds r1, #0x10
	adds r1, r1, r7
	ldrb r0, [r1]
	adds r0, #2
	ldrb r4, [r3, #4]
	adds r0, r0, r4
	strb r0, [r1]
_0800A416:
	ldr r2, [r2]
	ldrb r1, [r3, #3]
	ldrb r0, [r2, #6]
	bics r0, r1
	strb r0, [r2, #6]
_0800A420:
	mov r0, sp
	movs r1, #0
	strh r1, [r0]
	ldr r2, _0800A46C @ =0x01000006
	adds r1, r3, #0
	bl CpuSet
_0800A42E:
	movs r0, #2
	mov r1, r8
	ands r0, r1
	cmp r0, #0
	beq _0800A450
	mov r1, sp
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0800A470 @ =gUnk_03002510
	lsls r0, r7, #2
	adds r0, r0, r1
	ldr r1, [r0]
	adds r1, #0xc
	ldr r2, _0800A474 @ =0x01000004
	mov r0, sp
	bl CpuSet
_0800A450:
	ldr r0, _0800A478 @ =0x04000208
	mov r2, sl
	strh r2, [r0]
	movs r0, #0
_0800A458:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800A468: .4byte gUnk_03002540
_0800A46C: .4byte 0x01000006
_0800A470: .4byte gUnk_03002510
_0800A474: .4byte 0x01000004
_0800A478: .4byte 0x04000208

	thumb_func_start rfu_setRecvBuffer
rfu_setRecvBuffer: @ 0x0800A47C
	push {r4, r5, r6, lr}
	adds r5, r2, #0
	adds r6, r3, #0
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	adds r2, r3, #0
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	adds r4, r1, #0
	cmp r1, #3
	bls _0800A498
	movs r0, #0x80
	lsls r0, r0, #3
	b _0800A4D0
_0800A498:
	movs r0, #0x20
	ands r0, r3
	cmp r0, #0
	beq _0800A4B4
	ldr r0, _0800A4B0 @ =gUnk_03002530
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r5, [r0, #0x68]
	str r6, [r0, #0x6c]
	b _0800A4CE
	.align 2, 0
_0800A4B0: .4byte gUnk_03002530
_0800A4B4:
	movs r0, #0x10
	ands r2, r0
	cmp r2, #0
	bne _0800A4C2
	movs r0, #0xc0
	lsls r0, r0, #3
	b _0800A4D0
_0800A4C2:
	ldr r0, _0800A4D8 @ =gUnk_03002510
	lsls r1, r4, #2
	adds r1, r1, r0
	ldr r0, [r1]
	str r5, [r0, #0x14]
	str r6, [r0, #0x18]
_0800A4CE:
	movs r0, #0
_0800A4D0:
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800A4D8: .4byte gUnk_03002510

	thumb_func_start rfu_NI_setSendData
rfu_NI_setSendData: @ 0x0800A4DC
	push {r4, r5, r6, lr}
	sub sp, #4
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	lsls r4, r4, #0x18
	lsrs r4, r4, #0x18
	lsls r5, r5, #0x18
	lsrs r5, r5, #0x18
	str r3, [sp]
	movs r0, #0x20
	adds r1, r4, #0
	adds r2, r5, #0
	adds r3, r6, #0
	bl rfu_STC_setSendData_org
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add sp, #4
	pop {r4, r5, r6}
	pop {r1}
	bx r1

	thumb_func_start rfu_UNI_setSendData
rfu_UNI_setSendData: @ 0x0800A508
	push {lr}
	sub sp, #4
	adds r3, r1, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	ldr r0, _0800A524 @ =gUnk_03002540
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800A528
	adds r0, r2, #3
	b _0800A52A
	.align 2, 0
_0800A524: .4byte gUnk_03002540
_0800A528:
	adds r0, r2, #2
_0800A52A:
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	movs r0, #0
	str r0, [sp]
	movs r0, #0x10
	bl rfu_STC_setSendData_org
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start rfu_NI_CHILD_setSendGameName
rfu_NI_CHILD_setSendGameName: @ 0x0800A544
	push {lr}
	sub sp, #4
	adds r2, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	movs r1, #0x80
	lsls r1, r1, #0x11
	lsls r1, r0
	lsrs r1, r1, #0x18
	ldr r0, _0800A574 @ =gUnk_03002540
	ldr r3, [r0]
	adds r3, #0x98
	movs r0, #0x1a
	str r0, [sp]
	movs r0, #0x40
	bl rfu_STC_setSendData_org
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add sp, #4
	pop {r1}
	bx r1
	.align 2, 0
_0800A574: .4byte gUnk_03002540

	thumb_func_start rfu_STC_setSendData_org
rfu_STC_setSendData_org: @ 0x0800A578
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r3, [sp]
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r3, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r2, r2, #0x18
	mov r8, r2
	ldr r0, _0800A5A4 @ =gUnk_03002540
	ldr r2, [r0]
	ldrb r1, [r2]
	mov sl, r0
	cmp r1, #0xff
	bne _0800A5AC
	ldr r0, _0800A5A8 @ =0x00000301
	b _0800A762
	.align 2, 0
_0800A5A4: .4byte gUnk_03002540
_0800A5A8: .4byte 0x00000301
_0800A5AC:
	movs r0, #0xf
	ands r0, r3
	cmp r0, #0
	bne _0800A5BA
	movs r0, #0x80
	lsls r0, r0, #3
	b _0800A762
_0800A5BA:
	ldrb r0, [r2, #2]
	ldrb r1, [r2, #3]
	orrs r0, r1
	ands r0, r3
	cmp r0, r3
	beq _0800A5D0
	ldr r0, _0800A5CC @ =0x00000401
	b _0800A762
	.align 2, 0
_0800A5CC: .4byte 0x00000401
_0800A5D0:
	movs r0, #0x10
	ands r0, r6
	cmp r0, #0
	beq _0800A5DC
	ldrb r0, [r2, #6]
	b _0800A5DE
_0800A5DC:
	ldrb r0, [r2, #4]
_0800A5DE:
	ands r0, r3
	cmp r0, #0
	beq _0800A5EC
	ldr r0, _0800A5E8 @ =0x00000402
	b _0800A762
	.align 2, 0
_0800A5E8: .4byte 0x00000402
_0800A5EC:
	movs r2, #0
	movs r0, #1
	ands r0, r3
	ldr r4, _0800A61C @ =gUnk_0808E2C0
	cmp r0, #0
	bne _0800A60E
	movs r1, #1
_0800A5FA:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bhi _0800A60E
	adds r0, r3, #0
	asrs r0, r2
	ands r0, r1
	cmp r0, #0
	beq _0800A5FA
_0800A60E:
	mov r0, sl
	ldr r1, [r0]
	ldrb r0, [r1]
	cmp r0, #1
	bne _0800A620
	adds r1, #0xf
	b _0800A62A
	.align 2, 0
_0800A61C: .4byte gUnk_0808E2C0
_0800A620:
	cmp r0, #0
	bne _0800A62C
	adds r0, r2, #0
	adds r0, #0x10
	adds r1, r1, r0
_0800A62A:
	mov sb, r1
_0800A62C:
	mov r1, sl
	ldr r0, [r1]
	ldrb r0, [r0]
	lsls r0, r0, #4
	adds r0, r0, r4
	ldrb r4, [r0]
	mov r0, sb
	ldrb r0, [r0]
	cmp r8, r0
	bhi _0800A644
	cmp r8, r4
	bhi _0800A64A
_0800A644:
	movs r0, #0xa0
	lsls r0, r0, #3
	b _0800A762
_0800A64A:
	ldr r1, _0800A698 @ =0x04000208
	ldrh r0, [r1]
	str r0, [sp, #4]
	movs r7, #0
	strh r7, [r1]
	movs r0, #0x20
	ands r0, r6
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0
	bne _0800A664
	cmp r6, #0x40
	bne _0800A720
_0800A664:
	ldr r1, _0800A69C @ =gUnk_03002530
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r0, [r0]
	mov ip, r0
	movs r1, #0
	strh r1, [r0, #0x18]
	mov r1, ip
	adds r1, #0x2d
	mov r2, ip
	str r1, [r2, #4]
	movs r0, #7
	str r0, [r2, #0x14]
	mov r0, ip
	adds r0, #0x2c
	strb r3, [r0]
	strb r3, [r2, #0x1a]
	mov r2, r8
	subs r0, r2, r4
	mov r2, ip
	strh r0, [r2, #0x2e]
	cmp r5, #0
	beq _0800A6A0
	strb r7, [r1]
	b _0800A6A4
	.align 2, 0
_0800A698: .4byte 0x04000208
_0800A69C: .4byte gUnk_03002530
_0800A6A0:
	movs r0, #1
	strb r0, [r1]
_0800A6A4:
	ldr r0, [sp, #0x28]
	mov r1, ip
	str r0, [r1, #0x30]
	ldr r2, [sp]
	str r2, [r1, #0x28]
	movs r1, #0
	mov r0, ip
	strb r1, [r0, #0x1f]
	adds r0, #0x20
	strb r1, [r0]
	mov r4, ip
	adds r4, #0x1b
	movs r6, #0
	mov r2, ip
	adds r2, #0x21
	movs r5, #1
_0800A6C4:
	adds r0, r4, r1
	strb r6, [r0]
	adds r0, r2, r1
	strb r5, [r0]
	adds r0, r1, #1
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bls _0800A6C4
	movs r2, #0
	movs r5, #1
	ldr r4, _0800A718 @ =gUnk_03002530
	movs r1, #0
_0800A6DE:
	adds r0, r3, #0
	asrs r0, r2
	ands r0, r5
	cmp r0, #0
	beq _0800A6F0
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r0, [r0]
	strh r1, [r0, #2]
_0800A6F0:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _0800A6DE
	mov r1, sl
	ldr r2, [r1]
	ldrb r1, [r2, #4]
	adds r0, r3, #0
	orrs r0, r1
	strb r0, [r2, #4]
	mov r2, sb
	ldrb r0, [r2]
	mov r1, r8
	subs r0, r0, r1
	strb r0, [r2]
	ldr r0, _0800A71C @ =0x00008021
	mov r2, ip
	strh r0, [r2]
	b _0800A758
	.align 2, 0
_0800A718: .4byte gUnk_03002530
_0800A71C: .4byte 0x00008021
_0800A720:
	movs r0, #0x10
	ands r0, r6
	cmp r0, #0
	beq _0800A758
	ldr r1, _0800A774 @ =gUnk_03002510
	lsls r0, r2, #2
	adds r0, r0, r1
	ldr r1, [r0]
	strb r3, [r1, #3]
	ldr r0, [sp]
	str r0, [r1, #8]
	mov r2, r8
	subs r0, r2, r4
	strh r0, [r1, #4]
	mov r2, sb
	ldrb r0, [r2]
	mov r2, r8
	subs r0, r0, r2
	mov r2, sb
	strb r0, [r2]
	ldr r0, _0800A778 @ =0x00008024
	strh r0, [r1]
	mov r0, sl
	ldr r2, [r0]
	ldrb r1, [r2, #6]
	adds r0, r3, #0
	orrs r0, r1
	strb r0, [r2, #6]
_0800A758:
	ldr r0, _0800A77C @ =0x04000208
	mov r1, sp
	ldrh r1, [r1, #4]
	strh r1, [r0]
	movs r0, #0
_0800A762:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800A774: .4byte gUnk_03002510
_0800A778: .4byte 0x00008024
_0800A77C: .4byte 0x04000208

	thumb_func_start rfu_changeSendTarget
rfu_changeSendTarget: @ 0x0800A780
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r3, r0, #0
	lsls r1, r1, #0x18
	lsrs r7, r1, #0x18
	lsls r2, r2, #0x18
	lsrs r6, r2, #0x18
	cmp r7, #3
	bls _0800A7A4
	movs r0, #0x80
	lsls r0, r0, #3
	b _0800A8D8
_0800A7A4:
	cmp r0, #0x20
	bne _0800A844
	ldr r0, _0800A834 @ =gUnk_03002530
	mov ip, r0
	lsls r0, r7, #2
	add r0, ip
	ldr r5, [r0]
	ldrh r2, [r5]
	ldr r1, _0800A838 @ =0x00008020
	adds r0, r1, #0
	ands r0, r2
	cmp r0, r1
	bne _0800A85A
	ldrb r0, [r5, #0x1a]
	adds r3, r6, #0
	eors r3, r0
	adds r2, r3, #0
	ands r2, r6
	cmp r2, #0
	bne _0800A892
	cmp r3, #0
	bne _0800A7D2
	b _0800A8D6
_0800A7D2:
	ldr r1, _0800A83C @ =0x04000208
	ldrh r0, [r1]
	mov r8, r0
	strh r2, [r1]
	movs r2, #0
	mvns r1, r3
	str r1, [sp]
	lsls r4, r6, #0x18
	mov sl, r4
	movs r0, #1
	mov sb, r0
	movs r1, #0
_0800A7EA:
	adds r0, r3, #0
	asrs r0, r2
	mov r4, sb
	ands r0, r4
	cmp r0, #0
	beq _0800A7FE
	lsls r0, r2, #2
	add r0, ip
	ldr r0, [r0]
	strh r1, [r0, #2]
_0800A7FE:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _0800A7EA
	ldr r0, _0800A840 @ =gUnk_03002540
	ldr r1, [r0]
	ldrb r0, [r1, #4]
	ldr r2, [sp]
	ands r2, r0
	strb r2, [r1, #4]
	strb r6, [r5, #0x1a]
	mov r0, sl
	cmp r0, #0
	bne _0800A82A
	adds r0, r7, #0
	movs r1, #0
	adds r2, r5, #0
	bl rfu_STC_releaseFrame
	movs r0, #0x27
	strh r0, [r5]
_0800A82A:
	ldr r0, _0800A83C @ =0x04000208
	mov r1, r8
	strh r1, [r0]
	b _0800A8D6
	.align 2, 0
_0800A834: .4byte gUnk_03002530
_0800A838: .4byte 0x00008020
_0800A83C: .4byte 0x04000208
_0800A840: .4byte gUnk_03002540
_0800A844:
	cmp r3, #0x10
	bne _0800A8D0
	ldr r3, _0800A860 @ =gUnk_03002510
	lsls r1, r7, #2
	adds r0, r1, r3
	ldr r0, [r0]
	ldrh r2, [r0]
	ldr r0, _0800A864 @ =0x00008024
	adds r5, r3, #0
	cmp r2, r0
	beq _0800A86C
_0800A85A:
	ldr r0, _0800A868 @ =0x00000403
	b _0800A8D8
	.align 2, 0
_0800A860: .4byte gUnk_03002510
_0800A864: .4byte 0x00008024
_0800A868: .4byte 0x00000403
_0800A86C:
	movs r3, #0
	movs r2, #0
	adds r4, r5, #0
_0800A872:
	cmp r2, r7
	beq _0800A880
	lsls r0, r2, #2
	adds r0, r0, r4
	ldr r0, [r0]
	ldrb r0, [r0, #3]
	orrs r3, r0
_0800A880:
	adds r0, r2, #1
	lsls r0, r0, #0x18
	lsrs r2, r0, #0x18
	cmp r2, #3
	bls _0800A872
	adds r2, r6, #0
	ands r2, r3
	cmp r2, #0
	beq _0800A89C
_0800A892:
	ldr r0, _0800A898 @ =0x00000404
	b _0800A8D8
	.align 2, 0
_0800A898: .4byte 0x00000404
_0800A89C:
	ldr r3, _0800A8C8 @ =0x04000208
	ldrh r0, [r3]
	mov r8, r0
	strh r2, [r3]
	ldr r4, _0800A8CC @ =gUnk_03002540
	ldr r2, [r4]
	adds r5, r1, r5
	ldr r0, [r5]
	ldrb r1, [r0, #3]
	ldrb r0, [r2, #6]
	bics r0, r1
	strb r0, [r2, #6]
	ldr r2, [r4]
	ldrb r1, [r2, #6]
	adds r0, r6, #0
	orrs r0, r1
	strb r0, [r2, #6]
	ldr r0, [r5]
	strb r6, [r0, #3]
	mov r2, r8
	strh r2, [r3]
	b _0800A8D6
	.align 2, 0
_0800A8C8: .4byte 0x04000208
_0800A8CC: .4byte gUnk_03002540
_0800A8D0:
	movs r0, #0xc0
	lsls r0, r0, #3
	b _0800A8D8
_0800A8D6:
	movs r0, #0
_0800A8D8:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start rfu_NI_stopReceivingData
rfu_NI_stopReceivingData: @ 0x0800A8E8
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _0800A8F8
	movs r0, #0x80
	lsls r0, r0, #3
	b _0800A952
_0800A8F8:
	ldr r1, _0800A924 @ =gUnk_03002530
	lsls r0, r3, #2
	adds r0, r0, r1
	ldr r2, [r0]
	adds r5, r2, #0
	adds r5, #0x34
	ldr r1, _0800A928 @ =0x04000208
	ldrh r0, [r1]
	adds r4, r0, #0
	movs r0, #0
	strh r0, [r1]
	ldrh r1, [r2, #0x34]
	movs r0, #0x80
	lsls r0, r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800A94C
	ldr r0, _0800A92C @ =0x00008043
	cmp r1, r0
	bne _0800A930
	movs r0, #0x48
	b _0800A932
	.align 2, 0
_0800A924: .4byte gUnk_03002530
_0800A928: .4byte 0x04000208
_0800A92C: .4byte 0x00008043
_0800A930:
	movs r0, #0x47
_0800A932:
	strh r0, [r2, #0x34]
	ldr r0, _0800A958 @ =gUnk_03002540
	ldr r2, [r0]
	movs r1, #1
	lsls r1, r3
	ldrb r0, [r2, #5]
	bics r0, r1
	strb r0, [r2, #5]
	adds r0, r3, #0
	movs r1, #1
	adds r2, r5, #0
	bl rfu_STC_releaseFrame
_0800A94C:
	ldr r0, _0800A95C @ =0x04000208
	strh r4, [r0]
	movs r0, #0
_0800A952:
	pop {r4, r5}
	pop {r1}
	bx r1
	.align 2, 0
_0800A958: .4byte gUnk_03002540
_0800A95C: .4byte 0x04000208

	thumb_func_start rfu_UNI_changeAndReadySendData
rfu_UNI_changeAndReadySendData: @ 0x0800A960
	push {r4, r5, r6, r7, lr}
	adds r7, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r3, r0, #0
	lsls r2, r2, #0x18
	lsrs r5, r2, #0x18
	cmp r0, #3
	bls _0800A978
	movs r0, #0x80
	lsls r0, r0, #3
	b _0800A9EC
_0800A978:
	ldr r1, _0800A98C @ =gUnk_03002510
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	ldrh r1, [r4]
	ldr r0, _0800A990 @ =0x00008024
	cmp r1, r0
	beq _0800A998
	ldr r0, _0800A994 @ =0x00000403
	b _0800A9EC
	.align 2, 0
_0800A98C: .4byte gUnk_03002510
_0800A990: .4byte 0x00008024
_0800A994: .4byte 0x00000403
_0800A998:
	ldr r0, _0800A9AC @ =gUnk_03002540
	ldr r1, [r0]
	ldrb r0, [r1]
	cmp r0, #1
	bne _0800A9B0
	adds r6, r1, #0
	adds r6, #0xf
	ldrb r0, [r4, #4]
	ldrb r1, [r1, #0xf]
	b _0800A9BE
	.align 2, 0
_0800A9AC: .4byte gUnk_03002540
_0800A9B0:
	adds r0, r3, #0
	adds r0, #0x10
	adds r6, r1, r0
	adds r1, #0x10
	adds r1, r1, r3
	ldrb r0, [r4, #4]
	ldrb r1, [r1]
_0800A9BE:
	adds r0, r0, r1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, r5
	blo _0800A9E8
	ldr r2, _0800A9E4 @ =0x04000208
	ldrh r1, [r2]
	movs r0, #0
	strh r0, [r2]
	str r7, [r4, #8]
	subs r0, r3, r5
	strb r0, [r6]
	strh r5, [r4, #4]
	movs r0, #1
	strb r0, [r4, #2]
	strh r1, [r2]
	movs r0, #0
	b _0800A9EC
	.align 2, 0
_0800A9E4: .4byte 0x04000208
_0800A9E8:
	movs r0, #0xa0
	lsls r0, r0, #3
_0800A9EC:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start rfu_UNI_readySendData
rfu_UNI_readySendData: @ 0x0800A9F4
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _0800AA12
	ldr r1, _0800AA18 @ =gUnk_03002510
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldrh r1, [r2]
	ldr r0, _0800AA1C @ =0x00008024
	cmp r1, r0
	bne _0800AA12
	movs r0, #1
	strb r0, [r2, #2]
_0800AA12:
	pop {r0}
	bx r0
	.align 2, 0
_0800AA18: .4byte gUnk_03002510
_0800AA1C: .4byte 0x00008024

	thumb_func_start rfu_UNI_clearRecvNewDataFlag
rfu_UNI_clearRecvNewDataFlag: @ 0x0800AA20
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #3
	bhi _0800AA36
	ldr r1, _0800AA3C @ =gUnk_03002510
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	movs r0, #0
	strb r0, [r1, #0x12]
_0800AA36:
	pop {r0}
	bx r0
	.align 2, 0
_0800AA3C: .4byte gUnk_03002510

	thumb_func_start rfu_REQ_sendData
rfu_REQ_sendData: @ 0x0800AA40
	push {r4, r5, lr}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, _0800AA8C @ =gUnk_03002540
	ldr r2, [r0]
	ldrb r1, [r2]
	adds r4, r0, #0
	cmp r1, #0xff
	bne _0800AA54
	b _0800AB7A
_0800AA54:
	cmp r1, #1
	bne _0800AAE4
	ldrb r0, [r2, #4]
	ldrb r1, [r2, #5]
	adds r3, r0, #0
	orrs r3, r1
	ldrb r0, [r2, #6]
	orrs r3, r0
	cmp r3, #0
	bne _0800AAE4
	ldr r0, _0800AA90 @ =gUnk_03002544
	ldr r2, [r0]
	ldrb r1, [r2, #3]
	adds r4, r0, #0
	cmp r1, #0
	beq _0800AA7C
	movs r0, #0x10
	strb r0, [r2, #8]
	ldr r0, [r4]
	strb r3, [r0, #7]
_0800AA7C:
	ldr r1, [r4]
	ldrb r0, [r1, #8]
	cmp r0, #0
	beq _0800AA94
	subs r0, #1
	strb r0, [r1, #8]
	b _0800AA9A
	.align 2, 0
_0800AA8C: .4byte gUnk_03002540
_0800AA90: .4byte gUnk_03002544
_0800AA94:
	ldrb r0, [r1, #7]
	adds r0, #1
	strb r0, [r1, #7]
_0800AA9A:
	ldr r1, [r4]
	ldrb r0, [r1, #8]
	cmp r0, #0
	bne _0800AAAC
	ldrb r1, [r1, #7]
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _0800AB3E
_0800AAAC:
	ldr r4, _0800AAD0 @ =gUnk_03002548
	ldr r1, [r4]
	movs r0, #1
	str r0, [r1, #0x68]
	movs r0, #0xff
	str r0, [r1, #0x78]
	ldr r0, _0800AAD4 @ =rfu_CB_sendData3
	bl STWI_set_Callback_M
	cmp r5, #0
	bne _0800AAD8
	ldr r0, [r4]
	adds r0, #0x68
	movs r1, #1
	bl STWI_send_DataTxREQ
	b _0800AB7A
	.align 2, 0
_0800AAD0: .4byte gUnk_03002548
_0800AAD4: .4byte rfu_CB_sendData3
_0800AAD8:
	ldr r0, [r4]
	adds r0, #0x68
	movs r1, #1
	bl STWI_send_DataTxAndChangeREQ
	b _0800AB7A
_0800AAE4:
	ldr r0, [r4]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	bne _0800AAF0
	bl rfu_constructSendLLFrame
_0800AAF0:
	ldr r0, [r4]
	ldrb r0, [r0, #0xe]
	cmp r0, #0
	beq _0800AB3E
	ldr r0, _0800AB1C @ =rfu_CB_sendData
	bl STWI_set_Callback_M
	cmp r5, #0
	beq _0800AB28
	ldr r0, _0800AB20 @ =gUnk_03002548
	ldr r0, [r0]
	adds r0, #0x68
	ldr r1, _0800AB24 @ =gUnk_03002544
	ldr r1, [r1]
	ldr r1, [r1, #0x14]
	adds r1, #4
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl STWI_send_DataTxAndChangeREQ
	b _0800AB7A
	.align 2, 0
_0800AB1C: .4byte rfu_CB_sendData
_0800AB20: .4byte gUnk_03002548
_0800AB24: .4byte gUnk_03002544
_0800AB28:
	ldr r0, _0800AB60 @ =gUnk_03002548
	ldr r0, [r0]
	adds r0, #0x68
	ldr r1, _0800AB64 @ =gUnk_03002544
	ldr r1, [r1]
	ldr r1, [r1, #0x14]
	adds r1, #4
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	bl STWI_send_DataTxREQ
_0800AB3E:
	cmp r5, #0
	beq _0800AB7A
	ldr r0, _0800AB68 @ =gUnk_03002540
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800AB70
	ldr r0, _0800AB6C @ =gUnk_03002500
	ldr r0, [r0]
	ldr r1, [r0, #0x1c]
	cmp r1, #0
	beq _0800AB7A
	movs r0, #0x27
	bl _call_via_r1
	b _0800AB7A
	.align 2, 0
_0800AB60: .4byte gUnk_03002548
_0800AB64: .4byte gUnk_03002544
_0800AB68: .4byte gUnk_03002540
_0800AB6C: .4byte gUnk_03002500
_0800AB70:
	ldr r0, _0800AB80 @ =rfu_CB_sendData2
	bl STWI_set_Callback_M
	bl STWI_send_MS_ChangeREQ
_0800AB7A:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800AB80: .4byte rfu_CB_sendData2

	thumb_func_start rfu_CB_sendData
rfu_CB_sendData: @ 0x0800AB84
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	cmp r7, #0
	bne _0800ABEE
	movs r6, #0
	ldr r0, _0800AC0C @ =0x00008020
	mov r8, r0
_0800AB98:
	ldr r0, _0800AC10 @ =gUnk_03002510
	lsls r2, r6, #2
	adds r0, r2, r0
	ldr r1, [r0]
	ldrb r0, [r1, #2]
	cmp r0, #0
	beq _0800ABAA
	movs r0, #0
	strb r0, [r1, #2]
_0800ABAA:
	ldr r0, _0800AC14 @ =gUnk_03002530
	adds r0, r2, r0
	ldr r4, [r0]
	ldrh r0, [r4]
	cmp r0, r8
	bne _0800ABE4
	adds r0, r6, #0
	movs r1, #0
	adds r2, r4, #0
	bl rfu_STC_releaseFrame
	ldr r5, _0800AC18 @ =gUnk_03002540
	ldr r2, [r5]
	ldrb r1, [r4, #0x1a]
	ldrb r0, [r2, #4]
	bics r0, r1
	strb r0, [r2, #4]
	adds r0, r4, #0
	adds r0, #0x2d
	ldrb r3, [r0]
	cmp r3, #1
	bne _0800ABE0
	ldr r1, [r5]
	lsls r3, r6
	ldrb r0, [r1, #7]
	orrs r3, r0
	strb r3, [r1, #7]
_0800ABE0:
	movs r0, #0x26
	strh r0, [r4]
_0800ABE4:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _0800AB98
_0800ABEE:
	ldr r0, _0800AC18 @ =gUnk_03002540
	ldr r1, [r0]
	ldrb r0, [r1, #0xe]
	movs r0, #0
	strb r0, [r1, #0xe]
	movs r0, #0x24
	adds r1, r7, #0
	bl rfu_STC_REQ_callback
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800AC0C: .4byte 0x00008020
_0800AC10: .4byte gUnk_03002510
_0800AC14: .4byte gUnk_03002530
_0800AC18: .4byte gUnk_03002540

	thumb_func_start rfu_CB_sendData2
rfu_CB_sendData2: @ 0x0800AC1C
	push {lr}
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	movs r0, #0x24
	bl rfu_STC_REQ_callback
	pop {r0}
	bx r0

	thumb_func_start rfu_CB_sendData3
rfu_CB_sendData3: @ 0x0800AC2C
	push {lr}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	lsls r1, r1, #0x10
	lsrs r1, r1, #0x10
	cmp r1, #0
	beq _0800AC42
	movs r0, #0x24
	bl rfu_STC_REQ_callback
	b _0800AC4E
_0800AC42:
	cmp r0, #0xff
	bne _0800AC4E
	movs r0, #0xff
	movs r1, #0
	bl rfu_STC_REQ_callback
_0800AC4E:
	pop {r0}
	bx r0
	.align 2, 0

	thumb_func_start rfu_constructSendLLFrame
rfu_constructSendLLFrame: @ 0x0800AC54
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	ldr r0, _0800AD00 @ =gUnk_03002540
	ldr r2, [r0]
	ldrb r0, [r2]
	cmp r0, #0xff
	bne _0800AC6C
	b _0800AD70
_0800AC6C:
	ldrb r0, [r2, #4]
	ldrb r1, [r2, #5]
	orrs r0, r1
	ldrb r1, [r2, #6]
	orrs r0, r1
	cmp r0, #0
	beq _0800AD70
	ldrb r0, [r2, #0xe]
	movs r0, #0
	strb r0, [r2, #0xe]
	mov r8, r0
	ldr r0, _0800AD04 @ =gUnk_03002548
	ldr r0, [r0]
	adds r0, #0x6c
	str r0, [sp]
	movs r6, #0
	movs r0, #0x80
	lsls r0, r0, #8
	mov sb, r0
	ldr r1, _0800AD08 @ =0x00008024
	mov sl, r1
_0800AC96:
	movs r5, #0
	ldr r0, _0800AD0C @ =gUnk_03002530
	lsls r7, r6, #2
	adds r4, r7, r0
	ldr r2, [r4]
	ldrh r1, [r2]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _0800ACB6
	adds r0, r6, #0
	mov r1, sp
	bl rfu_STC_NI_constructLLSF
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0800ACB6:
	ldr r2, [r4]
	ldrh r1, [r2, #0x34]
	mov r0, sb
	ands r0, r1
	cmp r0, #0
	beq _0800ACD2
	adds r2, #0x34
	adds r0, r6, #0
	mov r1, sp
	bl rfu_STC_NI_constructLLSF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r5, r5, r0
_0800ACD2:
	ldr r0, _0800AD10 @ =gUnk_03002510
	adds r0, r7, r0
	ldr r0, [r0]
	ldrh r0, [r0]
	cmp r0, sl
	bne _0800ACEC
	adds r0, r6, #0
	mov r1, sp
	bl rfu_STC_UNI_constructLLSF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r5, r5, r0
_0800ACEC:
	cmp r5, #0
	beq _0800AD20
	ldr r0, _0800AD00 @ =gUnk_03002540
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800AD14
	add r8, r5
	b _0800AD20
	.align 2, 0
_0800AD00: .4byte gUnk_03002540
_0800AD04: .4byte gUnk_03002548
_0800AD08: .4byte 0x00008024
_0800AD0C: .4byte gUnk_03002530
_0800AD10: .4byte gUnk_03002510
_0800AD14:
	adds r0, r7, r6
	adds r0, #8
	lsls r5, r0
	mov r2, r8
	orrs r2, r5
	mov r8, r2
_0800AD20:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _0800AC96
	ldr r5, _0800AD80 @ =gUnk_03002544
	mov r0, r8
	cmp r0, #0
	beq _0800AD6A
	ldr r2, [sp]
	movs r0, #3
	ands r0, r2
	ldr r6, _0800AD84 @ =gUnk_03002540
	ldr r1, _0800AD88 @ =gUnk_03002548
	cmp r0, #0
	beq _0800AD52
	movs r4, #0
	movs r3, #3
_0800AD44:
	strb r4, [r2]
	adds r0, r2, #1
	str r0, [sp]
	adds r2, r0, #0
	ands r0, r3
	cmp r0, #0
	bne _0800AD44
_0800AD52:
	ldr r0, [r1]
	mov r2, r8
	str r2, [r0, #0x68]
	ldr r0, [r6]
	ldrb r0, [r0]
	cmp r0, #0
	bne _0800AD6A
	ldr r0, [sp]
	subs r0, #0x6c
	ldr r1, [r1]
	subs r0, r0, r1
	mov r8, r0
_0800AD6A:
	ldr r0, [r5]
	mov r1, r8
	str r1, [r0, #0x14]
_0800AD70:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800AD80: .4byte gUnk_03002544
_0800AD84: .4byte gUnk_03002540
_0800AD88: .4byte gUnk_03002548

	thumb_func_start rfu_STC_NI_constructLLSF
rfu_STC_NI_constructLLSF: @ 0x0800AD8C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov ip, r1
	adds r4, r2, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sl, r0
	ldr r2, _0800AE08 @ =gUnk_03002540
	ldr r0, [r2]
	ldrb r0, [r0]
	lsls r0, r0, #4
	ldr r1, _0800AE0C @ =gUnk_0808E2C0
	adds r0, r0, r1
	mov r8, r0
	ldrh r1, [r4]
	ldr r0, _0800AE10 @ =0x00008022
	cmp r1, r0
	bne _0800ADF6
	adds r3, r4, #0
	adds r3, #0x20
	ldrb r1, [r3]
	lsls r1, r1, #2
	adds r5, r4, #4
	adds r1, r5, r1
	ldr r2, [r4, #0x28]
	ldr r0, [r4, #0x30]
	adds r2, r2, r0
	ldr r0, [r1]
	adds r6, r3, #0
	cmp r0, r2
	blo _0800ADF6
	movs r7, #0
_0800ADD4:
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bne _0800ADE4
	strb r7, [r6]
_0800ADE4:
	ldrb r1, [r3]
	lsls r1, r1, #2
	adds r1, r5, r1
	ldr r2, [r4, #0x28]
	ldr r0, [r4, #0x30]
	adds r2, r2, r0
	ldr r0, [r1]
	cmp r0, r2
	bhs _0800ADD4
_0800ADF6:
	ldrh r1, [r4]
	movs r0, #0x40
	ands r0, r1
	mov sb, r1
	cmp r0, #0
	beq _0800AE14
	movs r5, #0
	b _0800AE58
	.align 2, 0
_0800AE08: .4byte gUnk_03002540
_0800AE0C: .4byte gUnk_0808E2C0
_0800AE10: .4byte 0x00008022
_0800AE14:
	ldr r0, _0800AE40 @ =0x00008022
	cmp sb, r0
	bne _0800AE48
	adds r3, r4, #0
	adds r3, #0x20
	ldrb r0, [r3]
	lsls r0, r0, #2
	adds r1, r4, #4
	adds r1, r1, r0
	ldrh r7, [r4, #0x2e]
	ldr r5, [r1]
	adds r2, r5, r7
	ldr r1, [r4, #0x28]
	ldr r0, [r4, #0x30]
	adds r0, r1, r0
	adds r6, r3, #0
	cmp r2, r0
	bls _0800AE44
	subs r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
	b _0800AE5C
	.align 2, 0
_0800AE40: .4byte 0x00008022
_0800AE44:
	adds r5, r7, #0
	b _0800AE5C
_0800AE48:
	ldrh r2, [r4, #0x2e]
	ldr r0, [r4, #0x14]
	cmp r0, r2
	blo _0800AE54
	adds r5, r2, #0
	b _0800AE58
_0800AE54:
	lsls r0, r0, #0x10
	lsrs r5, r0, #0x10
_0800AE58:
	adds r6, r4, #0
	adds r6, #0x20
_0800AE5C:
	movs r3, #0xf
	mov r0, sb
	ands r3, r0
	mov r1, r8
	ldrb r1, [r1, #3]
	lsls r3, r1
	ldrb r0, [r4, #0x1f]
	mov r2, r8
	ldrb r2, [r2, #4]
	lsls r0, r2
	orrs r3, r0
	ldrb r1, [r6]
	adds r0, r1, #0
	mov r7, r8
	ldrb r7, [r7, #5]
	lsls r0, r7
	orrs r3, r0
	adds r0, r4, #0
	adds r0, #0x21
	adds r0, r0, r1
	ldrb r0, [r0]
	mov r1, r8
	ldrb r1, [r1, #6]
	lsls r0, r1
	orrs r3, r0
	orrs r3, r5
	str r3, [sp]
	ldr r2, _0800AF18 @ =gUnk_03002540
	ldr r0, [r2]
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800AEA4
	ldrb r0, [r4, #0x1a]
	lsls r0, r0, #0x12
	orrs r3, r0
	str r3, [sp]
_0800AEA4:
	mov r2, sp
	movs r3, #0
	mov r7, r8
	ldrb r7, [r7]
	cmp r3, r7
	bhs _0800AECE
_0800AEB0:
	mov r0, ip
	ldr r1, [r0]
	ldrb r0, [r2]
	strb r0, [r1]
	adds r2, #1
	adds r1, #1
	mov r7, ip
	str r1, [r7]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	mov r0, r8
	ldrb r0, [r0]
	cmp r3, r0
	blo _0800AEB0
_0800AECE:
	cmp r5, #0
	beq _0800AEEE
	ldrb r1, [r6]
	lsls r1, r1, #2
	adds r0, r4, #4
	adds r0, r0, r1
	ldr r0, [r0]
	str r0, [sp, #4]
	ldr r0, _0800AF1C @ =gUnk_03002548
	ldr r1, [r0]
	add r0, sp, #4
	ldr r3, [r1, #4]
	mov r1, ip
	adds r2, r5, #0
	bl _call_via_r3
_0800AEEE:
	ldrh r1, [r4]
	ldr r0, _0800AF20 @ =0x00008022
	cmp r1, r0
	bne _0800AF08
	ldrb r0, [r6]
	adds r0, #1
	strb r0, [r6]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bne _0800AF08
	movs r0, #0
	strb r0, [r6]
_0800AF08:
	ldr r0, _0800AF18 @ =gUnk_03002540
	ldr r2, [r0]
	ldrb r1, [r2]
	cmp r1, #1
	bne _0800AF24
	ldrb r0, [r2, #0xe]
	strb r1, [r2, #0xe]
	b _0800AF32
	.align 2, 0
_0800AF18: .4byte gUnk_03002540
_0800AF1C: .4byte gUnk_03002548
_0800AF20: .4byte 0x00008022
_0800AF24:
	movs r0, #1
	mov r1, sl
	lsls r0, r1
	ldrb r1, [r2, #0xe]
	orrs r0, r1
	ldrb r1, [r2, #0xe]
	strb r0, [r2, #0xe]
_0800AF32:
	mov r2, r8
	ldrb r0, [r2]
	adds r0, r5, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start rfu_STC_UNI_constructLLSF
rfu_STC_UNI_constructLLSF: @ 0x0800AF4C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	adds r6, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	ldr r1, _0800AF74 @ =gUnk_03002510
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _0800AF70
	ldrb r0, [r4, #3]
	cmp r0, #0
	bne _0800AF78
_0800AF70:
	movs r0, #0
	b _0800B014
	.align 2, 0
_0800AF74: .4byte gUnk_03002510
_0800AF78:
	ldr r0, _0800AFF0 @ =gUnk_03002540
	ldr r2, [r0]
	ldrb r0, [r2]
	lsls r0, r0, #4
	ldr r1, _0800AFF4 @ =gUnk_0808E2C0
	adds r5, r0, r1
	ldrh r0, [r4]
	movs r1, #0xf
	ands r1, r0
	ldrb r0, [r5, #3]
	lsls r1, r0
	ldrh r0, [r4, #4]
	orrs r1, r0
	str r1, [sp]
	ldrb r0, [r2]
	cmp r0, #1
	bne _0800AFA2
	ldrb r0, [r4, #3]
	lsls r0, r0, #0x12
	orrs r1, r0
	str r1, [sp]
_0800AFA2:
	mov r2, sp
	movs r3, #0
	ldr r1, _0800AFF8 @ =gUnk_03002548
	mov ip, r1
	add r7, sp, #4
	ldrb r0, [r5]
	cmp r3, r0
	bhs _0800AFCA
_0800AFB2:
	ldr r1, [r6]
	ldrb r0, [r2]
	strb r0, [r1]
	adds r2, #1
	adds r1, #1
	str r1, [r6]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	ldrb r1, [r5]
	cmp r3, r1
	blo _0800AFB2
_0800AFCA:
	ldr r0, [r4, #8]
	str r0, [sp, #4]
	mov r2, ip
	ldr r0, [r2]
	ldrh r2, [r4, #4]
	ldr r3, [r0, #4]
	adds r0, r7, #0
	adds r1, r6, #0
	bl _call_via_r3
	ldr r0, _0800AFF0 @ =gUnk_03002540
	ldr r2, [r0]
	ldrb r0, [r2]
	cmp r0, #1
	bne _0800AFFC
	ldrb r0, [r2, #0xe]
	movs r0, #0x10
	b _0800B008
	.align 2, 0
_0800AFF0: .4byte gUnk_03002540
_0800AFF4: .4byte gUnk_0808E2C0
_0800AFF8: .4byte gUnk_03002548
_0800AFFC:
	movs r0, #0x10
	mov r1, r8
	lsls r0, r1
	ldrb r1, [r2, #0xe]
	orrs r0, r1
	ldrb r1, [r2, #0xe]
_0800B008:
	strb r0, [r2, #0xe]
	ldrh r0, [r4, #4]
	ldrb r5, [r5]
	adds r0, r0, r5
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
_0800B014:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start rfu_REQ_recvData
rfu_REQ_recvData: @ 0x0800B020
	push {r4, lr}
	ldr r0, _0800B054 @ =gUnk_03002540
	ldr r4, [r0]
	ldrb r0, [r4]
	cmp r0, #0xff
	beq _0800B04C
	ldr r2, _0800B058 @ =gUnk_03002544
	ldr r3, [r2]
	ldrb r0, [r4, #4]
	ldrb r1, [r4, #5]
	orrs r0, r1
	ldrb r1, [r4, #6]
	orrs r0, r1
	movs r1, #0
	strb r0, [r3, #3]
	ldr r0, [r2]
	strb r1, [r0, #4]
	ldr r0, _0800B05C @ =rfu_CB_recvData
	bl STWI_set_Callback_M
	bl STWI_send_DataRxREQ
_0800B04C:
	pop {r4}
	pop {r0}
	bx r0
	.align 2, 0
_0800B054: .4byte gUnk_03002540
_0800B058: .4byte gUnk_03002544
_0800B05C: .4byte rfu_CB_recvData

	thumb_func_start rfu_CB_recvData
rfu_CB_recvData: @ 0x0800B060
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #4
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov sb, r0
	lsls r1, r1, #0x10
	lsrs r7, r1, #0x10
	cmp r7, #0
	bne _0800B124
	ldr r0, _0800B09C @ =gUnk_03002548
	ldr r0, [r0]
	adds r0, #0xdc
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	cmp r0, #0
	beq _0800B124
	ldr r0, _0800B0A0 @ =gUnk_03002544
	ldr r0, [r0]
	strb r7, [r0, #1]
	ldr r0, _0800B0A4 @ =gUnk_03002540
	ldr r0, [r0]
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800B0A8
	bl rfu_STC_PARENT_analyzeRecvPacket
	b _0800B0AC
	.align 2, 0
_0800B09C: .4byte gUnk_03002548
_0800B0A0: .4byte gUnk_03002544
_0800B0A4: .4byte gUnk_03002540
_0800B0A8:
	bl rfu_STC_CHILD_analyzeRecvPacket
_0800B0AC:
	movs r6, #0
	ldr r0, _0800B13C @ =0x00008043
	mov r8, r0
	ldr r3, _0800B140 @ =gUnk_03002540
_0800B0B4:
	ldr r0, _0800B144 @ =gUnk_03002530
	lsls r1, r6, #2
	adds r1, r1, r0
	ldr r4, [r1]
	ldrh r0, [r4, #0x34]
	cmp r0, r8
	bne _0800B106
	ldr r0, _0800B148 @ =gUnk_03002544
	ldr r0, [r0]
	ldrb r0, [r0, #1]
	asrs r0, r6
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0800B106
	adds r5, r4, #0
	adds r5, #0x34
	adds r0, r4, #0
	adds r0, #0x61
	ldrb r2, [r0]
	cmp r2, #1
	bne _0800B0EA
	ldr r1, [r3]
	lsls r2, r6
	ldrb r0, [r1, #7]
	orrs r2, r0
	strb r2, [r1, #7]
_0800B0EA:
	adds r0, r6, #0
	movs r1, #1
	adds r2, r5, #0
	str r3, [sp]
	bl rfu_STC_releaseFrame
	ldr r3, [sp]
	ldr r2, [r3]
	ldrb r1, [r5, #0x1a]
	ldrb r0, [r2, #5]
	bics r0, r1
	strb r0, [r2, #5]
	movs r0, #0x46
	strh r0, [r4, #0x34]
_0800B106:
	adds r0, r6, #1
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	cmp r6, #3
	bls _0800B0B4
	ldr r0, _0800B148 @ =gUnk_03002544
	ldr r1, [r0]
	ldrb r0, [r1, #4]
	cmp r0, #0
	beq _0800B124
	adds r7, r0, #0
	movs r1, #0xe0
	lsls r1, r1, #3
	adds r0, r1, #0
	orrs r7, r0
_0800B124:
	mov r0, sb
	adds r1, r7, #0
	bl rfu_STC_REQ_callback
	add sp, #4
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B13C: .4byte 0x00008043
_0800B140: .4byte gUnk_03002540
_0800B144: .4byte gUnk_03002530
_0800B148: .4byte gUnk_03002544

	thumb_func_start rfu_STC_PARENT_analyzeRecvPacket
rfu_STC_PARENT_analyzeRecvPacket: @ 0x0800B14C
	push {r4, r5, r6, r7, lr}
	sub sp, #4
	ldr r1, _0800B1DC @ =gUnk_03002548
	ldr r0, [r1]
	adds r0, #0xdc
	ldr r0, [r0]
	ldr r0, [r0, #4]
	lsrs r3, r0, #8
	movs r5, #0
	mov ip, r1
	movs r7, #0x1f
	ldr r4, _0800B1E0 @ =gUnk_03002544
	movs r6, #1
_0800B166:
	mov r0, sp
	adds r1, r0, r5
	adds r0, r3, #0
	ands r0, r7
	strb r0, [r1]
	lsrs r3, r3, #5
	cmp r0, #0
	bne _0800B182
	ldr r0, [r4]
	adds r1, r6, #0
	lsls r1, r5
	ldrb r2, [r0, #1]
	orrs r1, r2
	strb r1, [r0, #1]
_0800B182:
	adds r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _0800B166
	mov r1, ip
	ldr r0, [r1]
	adds r0, #0xdc
	ldr r0, [r0]
	adds r6, r0, #0
	adds r6, #8
	movs r5, #0
_0800B19A:
	mov r0, sp
	adds r1, r0, r5
	ldrb r0, [r1]
	adds r7, r5, #1
	cmp r0, #0
	beq _0800B1CC
	adds r4, r1, #0
_0800B1A8:
	ldrb r2, [r4]
	adds r0, r5, #0
	adds r1, r6, #0
	bl rfu_STC_analyzeLLSF
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	adds r6, r6, r0
	ldrb r1, [r4]
	subs r1, r1, r0
	strb r1, [r4]
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0800B1CC
	lsls r0, r1, #0x18
	cmp r0, #0
	bne _0800B1A8
_0800B1CC:
	lsls r0, r7, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #3
	bls _0800B19A
	add sp, #4
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B1DC: .4byte gUnk_03002548
_0800B1E0: .4byte gUnk_03002544

	thumb_func_start rfu_STC_CHILD_analyzeRecvPacket
rfu_STC_CHILD_analyzeRecvPacket: @ 0x0800B1E4
	push {r4, r5, r6, lr}
	ldr r0, _0800B234 @ =gUnk_03002548
	ldr r0, [r0]
	adds r0, #0xdc
	ldr r1, [r0]
	ldrh r0, [r1, #4]
	movs r4, #0x7f
	ands r4, r0
	adds r5, r1, #0
	adds r5, #8
	cmp r4, #0
	bne _0800B204
	ldr r0, _0800B238 @ =gUnk_03002544
	ldr r1, [r0]
	movs r0, #0xf
	strb r0, [r1, #1]
_0800B204:
	movs r0, #0x80
	lsls r0, r0, #8
	adds r6, r0, #0
_0800B20A:
	cmp r4, #0
	beq _0800B22C
	movs r0, #0
	adds r1, r5, #0
	adds r2, r4, #0
	bl rfu_STC_analyzeLLSF
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r5, r5, r0
	subs r0, r4, r0
	lsls r0, r0, #0x10
	lsrs r4, r0, #0x10
	adds r0, r4, #0
	ands r0, r6
	cmp r0, #0
	beq _0800B20A
_0800B22C:
	pop {r4, r5, r6}
	pop {r0}
	bx r0
	.align 2, 0
_0800B234: .4byte gUnk_03002548
_0800B238: .4byte gUnk_03002544

	thumb_func_start rfu_STC_analyzeLLSF
rfu_STC_analyzeLLSF: @ 0x0800B23C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r7, r1, #0
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov ip, r0
	lsls r2, r2, #0x10
	lsrs r3, r2, #0x10
	ldr r2, _0800B270 @ =gUnk_03002540
	ldr r0, [r2]
	ldrb r0, [r0]
	mvns r0, r0
	movs r1, #1
	ands r0, r1
	lsls r0, r0, #4
	ldr r1, _0800B274 @ =gUnk_0808E2C0
	adds r6, r0, r1
	ldrb r0, [r6]
	cmp r3, r0
	bhs _0800B278
	adds r0, r3, #0
	b _0800B46A
	.align 2, 0
_0800B270: .4byte gUnk_03002540
_0800B274: .4byte gUnk_0808E2C0
_0800B278:
	movs r5, #0
	movs r4, #0
	ldrb r3, [r6, #1]
	ldrb r1, [r6, #7]
	mov r8, r1
	ldr r2, [sp]
	mov sb, r2
	cmp r4, r0
	bhs _0800B2A0
	adds r2, r0, #0
_0800B28C:
	ldrb r0, [r7]
	lsls r1, r4, #3
	lsls r0, r1
	orrs r5, r0
	adds r7, #1
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, r2
	blo _0800B28C
_0800B2A0:
	adds r0, r5, #0
	lsrs r0, r3
	mov r3, r8
	ands r0, r3
	ldr r1, _0800B378 @ =0xFFFFFF00
	mov sl, r1
	mov r3, sl
	mov r2, sb
	ands r3, r2
	orrs r3, r0
	str r3, [sp]
	adds r0, r5, #0
	ldrb r1, [r6, #2]
	lsrs r0, r1
	ldrb r1, [r6, #8]
	ands r0, r1
	lsls r0, r0, #8
	ldr r4, _0800B37C @ =0xFFFF00FF
	adds r2, r4, #0
	ands r2, r3
	orrs r2, r0
	str r2, [sp]
	adds r0, r5, #0
	ldrb r3, [r6, #3]
	lsrs r0, r3
	ldrb r1, [r6, #9]
	ands r0, r1
	lsls r0, r0, #0x10
	ldr r3, _0800B380 @ =0xFF00FFFF
	ands r3, r2
	orrs r3, r0
	str r3, [sp]
	adds r0, r5, #0
	ldrb r1, [r6, #4]
	lsrs r0, r1
	ldrb r1, [r6, #0xa]
	ands r0, r1
	lsls r0, r0, #0x18
	ldr r2, _0800B384 @ =0x00FFFFFF
	mov r8, r2
	mov r1, r8
	ands r1, r3
	orrs r1, r0
	mov r8, r1
	str r1, [sp]
	adds r1, r5, #0
	ldrb r2, [r6, #5]
	lsrs r1, r2
	ldrb r0, [r6, #0xb]
	ands r1, r0
	mov sb, sp
	ldr r2, [sp, #4]
	mov r3, sl
	ands r2, r3
	orrs r2, r1
	str r2, [sp, #4]
	adds r0, r5, #0
	ldrb r1, [r6, #6]
	lsrs r0, r1
	ldrb r1, [r6, #0xc]
	ands r0, r1
	lsls r0, r0, #8
	ands r4, r2
	orrs r4, r0
	str r4, [sp, #4]
	ldrh r0, [r6, #0xe]
	ands r5, r0
	lsls r1, r5, #0x10
	ldr r0, _0800B388 @ =0x0000FFFF
	ands r0, r4
	orrs r0, r1
	str r0, [sp, #4]
	lsrs r0, r0, #0x10
	ldrb r6, [r6]
	adds r0, r0, r6
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	mov sl, r0
	mov r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800B346
	b _0800B468
_0800B346:
	ldr r2, _0800B38C @ =gUnk_03002540
	ldr r3, [r2]
	ldrb r2, [r3]
	cmp r2, #1
	bne _0800B404
	ldrb r0, [r3, #2]
	mov r5, ip
	asrs r0, r5
	ands r0, r2
	cmp r0, #0
	bne _0800B35E
	b _0800B468
_0800B35E:
	mov r1, r8
	lsrs r0, r1, #0x10
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	cmp r0, #4
	bne _0800B390
	mov r0, ip
	mov r1, sp
	adds r2, r7, #0
	bl rfu_STC_UNI_receive
	b _0800B468
	.align 2, 0
_0800B378: .4byte 0xFFFFFF00
_0800B37C: .4byte 0xFFFF00FF
_0800B380: .4byte 0xFF00FFFF
_0800B384: .4byte 0x00FFFFFF
_0800B388: .4byte 0x0000FFFF
_0800B38C: .4byte gUnk_03002540
_0800B390:
	mov r5, sb
	ldrb r0, [r5, #3]
	cmp r0, #0
	bne _0800B3A4
	mov r0, ip
	mov r1, sp
	adds r2, r7, #0
	bl rfu_STC_NI_receive_Receiver
	b _0800B468
_0800B3A4:
	movs r4, #0
	ldr r1, _0800B3BC @ =gUnk_03002530
	ldr r0, [r1]
	ldrb r0, [r0, #0x1a]
	mov r5, ip
	asrs r0, r5
	ands r0, r2
	cmp r0, #0
	beq _0800B3C0
	ldrb r0, [r3, #4]
	b _0800B3E6
	.align 2, 0
_0800B3BC: .4byte gUnk_03002530
_0800B3C0:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bhi _0800B468
	lsls r0, r4, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldrb r0, [r0, #0x1a]
	mov r2, ip
	asrs r0, r2
	movs r2, #1
	ands r0, r2
	cmp r0, #0
	beq _0800B3C0
	ldr r3, _0800B400 @ =gUnk_03002540
	ldr r0, [r3]
	ldrb r0, [r0, #4]
	mov r5, ip
_0800B3E6:
	asrs r0, r5
	ands r0, r2
	cmp r0, #0
	beq _0800B3C0
	cmp r4, #3
	bhi _0800B468
	adds r0, r4, #0
	mov r1, ip
	mov r2, sp
	adds r3, r7, #0
	bl rfu_STC_NI_receive_Sender
	b _0800B468
	.align 2, 0
_0800B400: .4byte gUnk_03002540
_0800B404:
	ldrb r1, [r3, #2]
	mov r2, sb
	ldrb r0, [r2, #1]
	adds r5, r1, #0
	ands r5, r0
	cmp r5, #0
	beq _0800B468
	movs r4, #0
	movs r6, #1
_0800B416:
	adds r0, r5, #0
	asrs r0, r4
	ands r0, r6
	cmp r0, #0
	beq _0800B45E
	mov r1, sp
	ldrb r0, [r1, #2]
	cmp r0, #4
	bne _0800B432
	adds r0, r4, #0
	adds r2, r7, #0
	bl rfu_STC_UNI_receive
	b _0800B45E
_0800B432:
	ldrb r0, [r1, #3]
	cmp r0, #0
	bne _0800B444
	adds r0, r4, #0
	mov r1, sp
	adds r2, r7, #0
	bl rfu_STC_NI_receive_Receiver
	b _0800B45E
_0800B444:
	ldr r0, _0800B47C @ =gUnk_03002540
	ldr r0, [r0]
	ldrb r0, [r0, #4]
	asrs r0, r4
	ands r0, r6
	cmp r0, #0
	beq _0800B45E
	adds r0, r4, #0
	adds r1, r4, #0
	mov r2, sp
	adds r3, r7, #0
	bl rfu_STC_NI_receive_Sender
_0800B45E:
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0800B416
_0800B468:
	mov r0, sl
_0800B46A:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800B47C: .4byte gUnk_03002540

	thumb_func_start rfu_STC_UNI_receive
rfu_STC_UNI_receive: @ 0x0800B480
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r6, r1, #0
	str r2, [sp]
	lsls r0, r0, #0x18
	lsrs r7, r0, #0x18
	ldr r2, _0800B4B4 @ =gUnk_03002510
	lsls r1, r7, #2
	adds r1, r1, r2
	ldr r3, [r1]
	adds r5, r3, #0
	adds r5, #0xc
	movs r4, #0
	movs r0, #0
	strh r0, [r5, #2]
	ldr r0, [r1]
	ldr r0, [r0, #0x18]
	adds r1, r2, #0
	ldrh r2, [r6, #6]
	cmp r0, r2
	bhs _0800B4BC
	movs r0, #0x49
	strh r0, [r3, #0xc]
	ldr r0, _0800B4B8 @ =0x00000701
	strh r0, [r5, #2]
	b _0800B50A
	.align 2, 0
_0800B4B4: .4byte gUnk_03002510
_0800B4B8: .4byte 0x00000701
_0800B4BC:
	ldrb r0, [r5, #7]
	cmp r0, #0
	beq _0800B4D4
	ldrb r0, [r5, #6]
	cmp r0, #0
	beq _0800B4E0
	ldr r0, _0800B4D0 @ =0x00000709
	strh r0, [r5, #2]
	b _0800B50A
	.align 2, 0
_0800B4D0: .4byte 0x00000709
_0800B4D4:
	ldrb r0, [r5, #6]
	cmp r0, #0
	beq _0800B4E0
	movs r0, #0xe1
	lsls r0, r0, #3
	strh r0, [r5, #2]
_0800B4E0:
	movs r4, #0
	ldr r0, _0800B528 @ =0x00008042
	strh r0, [r5]
	ldrh r0, [r6, #6]
	strh r0, [r5, #4]
	ldrh r2, [r6, #6]
	lsls r0, r7, #2
	adds r0, r0, r1
	ldr r0, [r0]
	ldr r0, [r0, #0x14]
	str r0, [sp, #4]
	ldr r0, _0800B52C @ =gUnk_03002548
	ldr r0, [r0]
	add r1, sp, #4
	ldr r3, [r0, #4]
	mov r0, sp
	bl _call_via_r3
	movs r0, #1
	strb r0, [r5, #6]
	strh r4, [r5]
_0800B50A:
	ldrh r0, [r5, #2]
	cmp r0, #0
	beq _0800B51E
	ldr r0, _0800B530 @ =gUnk_03002544
	ldr r2, [r0]
	movs r0, #0x10
	lsls r0, r7
	ldrb r1, [r2, #4]
	orrs r0, r1
	strb r0, [r2, #4]
_0800B51E:
	add sp, #8
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B528: .4byte 0x00008042
_0800B52C: .4byte gUnk_03002548
_0800B530: .4byte gUnk_03002544

	thumb_func_start rfu_STC_NI_receive_Sender
rfu_STC_NI_receive_Sender: @ 0x0800B534
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r2, #0
	lsls r0, r0, #0x18
	lsls r1, r1, #0x18
	lsrs r1, r1, #0x18
	mov sl, r1
	ldr r1, _0800B600 @ =gUnk_03002530
	lsrs r0, r0, #0x16
	adds r0, r0, r1
	ldr r0, [r0]
	mov ip, r0
	ldrh r0, [r0]
	mov sb, r0
	mov r0, ip
	adds r0, #0x21
	ldrb r2, [r6, #4]
	adds r0, r0, r2
	ldrb r0, [r0]
	str r0, [sp]
	ldrb r2, [r6, #2]
	cmp r2, #2
	bne _0800B570
	ldr r0, _0800B604 @ =0x00008022
	cmp sb, r0
	beq _0800B58A
_0800B570:
	cmp r2, #1
	bne _0800B57A
	ldr r0, _0800B608 @ =0x00008021
	cmp sb, r0
	beq _0800B58A
_0800B57A:
	movs r3, #0x1b
	add r3, ip
	mov r8, r3
	cmp r2, #3
	bne _0800B5AE
	ldr r0, _0800B60C @ =0x00008023
	cmp sb, r0
	bne _0800B5AE
_0800B58A:
	ldrb r1, [r6, #4]
	mov r0, ip
	adds r0, #0x21
	adds r0, r0, r1
	ldrb r0, [r0]
	movs r7, #0x1b
	add r7, ip
	mov r8, r7
	ldrb r2, [r6, #5]
	cmp r0, r2
	bne _0800B5AE
	adds r0, r7, r1
	movs r1, #1
	mov r3, sl
	lsls r1, r3
	ldrb r2, [r0]
	orrs r1, r2
	strb r1, [r0]
_0800B5AE:
	ldrb r2, [r6, #4]
	mov r7, r8
	adds r0, r7, r2
	ldrb r0, [r0]
	mov r3, ip
	ldrb r1, [r3, #0x1a]
	ands r0, r1
	cmp r0, r1
	bne _0800B6AA
	adds r3, #0x21
	adds r2, r3, r2
	ldrb r0, [r2]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	movs r1, #0
	strb r0, [r2]
	ldrb r0, [r6, #4]
	add r0, r8
	strb r1, [r0]
	mov r7, ip
	ldrh r1, [r7]
	ldr r2, _0800B610 @ =0x00007FDF
	adds r0, r1, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	adds r5, r3, #0
	cmp r0, #1
	bhi _0800B69C
	ldr r0, _0800B608 @ =0x00008021
	cmp r1, r0
	bne _0800B614
	ldrb r1, [r6, #4]
	lsls r1, r1, #2
	subs r3, #0x1d
	adds r1, r3, r1
	ldrh r2, [r7, #0x2e]
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
	b _0800B62A
	.align 2, 0
_0800B600: .4byte gUnk_03002530
_0800B604: .4byte 0x00008022
_0800B608: .4byte 0x00008021
_0800B60C: .4byte 0x00008023
_0800B610: .4byte 0x00007FDF
_0800B614:
	ldrb r2, [r6, #4]
	lsls r2, r2, #2
	mov r3, ip
	adds r3, #4
	adds r2, r3, r2
	mov r7, ip
	ldrh r1, [r7, #0x2e]
	lsls r1, r1, #2
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
_0800B62A:
	mov r0, ip
	ldrh r1, [r0, #0x2e]
	ldr r0, [r0, #0x14]
	subs r0, r0, r1
	mov r1, ip
	str r0, [r1, #0x14]
	cmp r0, #0
	beq _0800B63E
	cmp r0, #0
	bge _0800B6AA
_0800B63E:
	mov r0, ip
	adds r0, #0x20
	movs r2, #0
	strb r2, [r0]
	mov r7, ip
	ldrh r1, [r7]
	ldr r0, _0800B680 @ =0x00008021
	cmp r1, r0
	bne _0800B688
	movs r4, #0
_0800B652:
	adds r0, r5, r4
	movs r1, #1
	strb r1, [r0]
	lsls r1, r4, #2
	adds r1, r3, r1
	mov r2, ip
	ldrh r0, [r2, #0x2e]
	adds r2, r0, #0
	muls r2, r4, r2
	mov r7, ip
	ldr r0, [r7, #0x28]
	adds r0, r0, r2
	str r0, [r1]
	adds r0, r4, #1
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	cmp r4, #3
	bls _0800B652
	ldr r0, [r7, #0x30]
	str r0, [r7, #0x14]
	ldr r0, _0800B684 @ =0x00008022
	strh r0, [r7]
	b _0800B6AA
	.align 2, 0
_0800B680: .4byte 0x00008021
_0800B684: .4byte 0x00008022
_0800B688:
	strb r2, [r5]
	mov r0, ip
	str r2, [r0, #0x14]
	ldr r0, _0800B698 @ =0x00008023
	mov r1, ip
	strh r0, [r1]
	b _0800B6AA
	.align 2, 0
_0800B698: .4byte 0x00008023
_0800B69C:
	lsls r1, r1, #0x10
	ldr r0, _0800B70C @ =0x80230000
	cmp r1, r0
	bne _0800B6AA
	ldr r0, _0800B710 @ =0x00008020
	mov r2, ip
	strh r0, [r2]
_0800B6AA:
	mov r3, ip
	ldrh r0, [r3]
	cmp r0, sb
	bne _0800B6D4
	ldrb r2, [r6, #4]
	mov r0, ip
	adds r0, #0x21
	adds r0, r0, r2
	ldrb r0, [r0]
	ldr r7, [sp]
	cmp r0, r7
	bne _0800B6D4
	mov r1, r8
	adds r0, r1, r2
	ldrb r0, [r0]
	mov r2, sl
	asrs r0, r2
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800B6FA
_0800B6D4:
	ldr r4, _0800B714 @ =0x04000208
	ldrh r2, [r4]
	movs r0, #0
	strh r0, [r4]
	ldr r0, _0800B718 @ =gUnk_03002544
	ldr r3, [r0]
	movs r0, #0x10
	mov r7, sl
	lsls r0, r7
	ldrb r1, [r3, #2]
	orrs r0, r1
	movs r1, #0
	strb r0, [r3, #2]
	lsls r0, r7, #2
	ldr r3, _0800B71C @ =gUnk_03002530
	adds r0, r0, r3
	ldr r0, [r0]
	strh r1, [r0, #2]
	strh r2, [r4]
_0800B6FA:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B70C: .4byte 0x80230000
_0800B710: .4byte 0x00008020
_0800B714: .4byte 0x04000208
_0800B718: .4byte gUnk_03002544
_0800B71C: .4byte gUnk_03002530

	thumb_func_start rfu_STC_NI_receive_Receiver
rfu_STC_NI_receive_Receiver: @ 0x0800B720
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r6, r1, #0
	str r2, [sp]
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	mov r8, r0
	movs r7, #0
	ldr r1, _0800B780 @ =gUnk_03002530
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r4, [r0]
	adds r5, r4, #0
	adds r5, #0x34
	ldrh r0, [r4, #0x34]
	mov sb, r0
	ldrb r0, [r6, #4]
	adds r3, r4, #0
	adds r3, #0x55
	adds r0, r3, r0
	ldrb r0, [r0]
	mov sl, r0
	ldrb r0, [r6, #2]
	cmp r0, #3
	bne _0800B790
	ldr r0, _0800B784 @ =gUnk_03002544
	ldr r2, [r0]
	movs r0, #1
	mov r1, r8
	lsls r0, r1
	ldrb r1, [r2, #1]
	orrs r0, r1
	strb r0, [r2, #1]
	ldrh r1, [r4, #0x34]
	ldr r0, _0800B788 @ =0x00008042
	cmp r1, r0
	bne _0800B7D6
	adds r0, r4, #0
	adds r0, #0x54
	strb r7, [r0]
	strb r7, [r3]
	ldr r0, _0800B78C @ =0x00008043
	strh r0, [r4, #0x34]
	b _0800B7D6
	.align 2, 0
_0800B780: .4byte gUnk_03002530
_0800B784: .4byte gUnk_03002544
_0800B788: .4byte 0x00008042
_0800B78C: .4byte 0x00008043
_0800B790:
	cmp r0, #2
	bne _0800B7BC
	ldr r0, _0800B7B4 @ =0x00008041
	cmp sb, r0
	bne _0800B7A8
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _0800B7A8
	mov r0, r8
	adds r1, r5, #0
	bl rfu_STC_NI_initSlot_asRecvDataEntity
_0800B7A8:
	ldrh r1, [r5]
	ldr r0, _0800B7B8 @ =0x00008042
	cmp r1, r0
	bne _0800B7D6
	b _0800B7DA
	.align 2, 0
_0800B7B4: .4byte 0x00008041
_0800B7B8: .4byte 0x00008042
_0800B7BC:
	cmp r0, #1
	bne _0800B7D6
	ldr r7, _0800B888 @ =0x00008041
	cmp sb, r7
	beq _0800B7DA
	mov r0, r8
	adds r1, r5, #0
	bl rfu_STC_NI_initSlot_asRecvControllData
	ldrh r0, [r4, #0x34]
	cmp r0, r7
	bne _0800B876
	movs r7, #1
_0800B7D6:
	cmp r7, #0
	beq _0800B830
_0800B7DA:
	ldrb r2, [r6, #5]
	ldrb r3, [r6, #4]
	adds r4, r5, #0
	adds r4, #0x21
	adds r0, r4, r3
	ldrb r0, [r0]
	adds r0, #1
	movs r1, #3
	ands r0, r1
	cmp r2, r0
	bne _0800B830
	ldr r0, _0800B88C @ =gUnk_03002548
	ldr r0, [r0]
	lsls r1, r3, #2
	adds r1, #4
	adds r1, r5, r1
	ldrh r2, [r6, #6]
	ldr r3, [r0, #4]
	mov r0, sp
	bl _call_via_r3
	ldrh r1, [r5]
	ldr r0, _0800B890 @ =0x00008042
	cmp r1, r0
	bne _0800B820
	ldrb r0, [r6, #4]
	lsls r0, r0, #2
	adds r2, r5, #4
	adds r2, r2, r0
	ldrh r0, [r5, #0x2e]
	lsls r1, r0, #1
	adds r1, r1, r0
	ldr r0, [r2]
	adds r0, r0, r1
	str r0, [r2]
_0800B820:
	ldrh r1, [r6, #6]
	ldr r0, [r5, #0x14]
	subs r0, r0, r1
	str r0, [r5, #0x14]
	ldrb r0, [r6, #4]
	adds r0, r4, r0
	ldrb r1, [r6, #5]
	strb r1, [r0]
_0800B830:
	ldrh r0, [r5, #0x18]
	cmp r0, #0
	bne _0800B876
	ldrb r0, [r6, #4]
	adds r1, r5, #0
	adds r1, #0x20
	strb r0, [r1]
	ldrh r0, [r5]
	cmp r0, sb
	bne _0800B858
	adds r0, r5, #0
	adds r0, #0x21
	ldrb r2, [r6, #4]
	adds r0, r0, r2
	ldrb r0, [r0]
	cmp r0, sl
	bne _0800B858
	ldrb r6, [r6, #5]
	cmp r0, r6
	bne _0800B876
_0800B858:
	ldr r3, _0800B894 @ =0x04000208
	ldrh r2, [r3]
	movs r0, #0
	strh r0, [r3]
	ldr r0, _0800B898 @ =gUnk_03002544
	ldr r4, [r0]
	movs r0, #1
	mov r1, r8
	lsls r0, r1
	ldrb r1, [r4, #2]
	orrs r0, r1
	movs r1, #0
	strb r0, [r4, #2]
	strh r1, [r5, #2]
	strh r2, [r3]
_0800B876:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B888: .4byte 0x00008041
_0800B88C: .4byte gUnk_03002548
_0800B890: .4byte 0x00008042
_0800B894: .4byte 0x04000208
_0800B898: .4byte gUnk_03002544

	thumb_func_start rfu_STC_NI_initSlot_asRecvControllData
rfu_STC_NI_initSlot_asRecvControllData: @ 0x0800B89C
	push {r4, r5, r6, r7, lr}
	adds r2, r1, #0
	lsls r0, r0, #0x18
	lsrs r4, r0, #0x18
	ldr r0, _0800B8B8 @ =gUnk_03002540
	ldr r3, [r0]
	ldrb r1, [r3]
	mov ip, r0
	cmp r1, #1
	bne _0800B8BC
	movs r5, #3
	adds r1, r3, #0
	adds r1, #0xf
	b _0800B8C4
	.align 2, 0
_0800B8B8: .4byte gUnk_03002540
_0800B8BC:
	movs r5, #2
	adds r0, r4, #0
	adds r0, #0x10
	adds r1, r3, r0
_0800B8C4:
	movs r7, #1
	adds r0, r7, #0
	lsls r0, r4
	lsls r0, r0, #0x18
	lsrs r6, r0, #0x18
	adds r4, r6, #0
	ldrh r3, [r2]
	cmp r3, #0
	bne _0800B922
	ldrb r0, [r1]
	cmp r0, r5
	bhs _0800B8FC
	movs r0, #0x49
	strh r0, [r2]
	ldr r0, _0800B8F4 @ =0x00000702
	strh r0, [r2, #0x18]
	ldr r0, _0800B8F8 @ =gUnk_03002544
	ldr r2, [r0]
	ldrb r1, [r2, #4]
	adds r0, r6, #0
	orrs r0, r1
	strb r0, [r2, #4]
	b _0800B922
	.align 2, 0
_0800B8F4: .4byte 0x00000702
_0800B8F8: .4byte gUnk_03002544
_0800B8FC:
	strh r3, [r2, #0x18]
	ldrb r0, [r1]
	subs r0, r0, r5
	strb r0, [r1]
	adds r0, r2, #0
	adds r0, #0x2d
	str r0, [r2, #4]
	movs r0, #7
	str r0, [r2, #0x14]
	strb r7, [r2, #0x1f]
	strh r3, [r2, #0x2e]
	strb r4, [r2, #0x1a]
	ldr r0, _0800B928 @ =0x00008041
	strh r0, [r2]
	mov r0, ip
	ldr r1, [r0]
	ldrb r0, [r1, #5]
	orrs r4, r0
	strb r4, [r1, #5]
_0800B922:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B928: .4byte 0x00008041

	thumb_func_start rfu_STC_NI_initSlot_asRecvDataEntity
rfu_STC_NI_initSlot_asRecvDataEntity: @ 0x0800B92C
	push {r4, r5, r6, r7, lr}
	adds r4, r1, #0
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	adds r0, r4, #0
	adds r0, #0x2d
	ldrb r0, [r0]
	cmp r0, #1
	bne _0800B950
	ldr r0, _0800B94C @ =gUnk_03002540
	lsls r1, r5, #5
	adds r1, #0x14
	ldr r0, [r0]
	adds r0, r0, r1
	adds r0, #4
	b _0800B9A6
	.align 2, 0
_0800B94C: .4byte gUnk_03002540
_0800B950:
	ldr r1, _0800B994 @ =gUnk_03002530
	lsls r0, r5, #2
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r1, [r4, #0x30]
	ldr r0, [r2, #0x6c]
	cmp r1, r0
	bls _0800B9A4
	movs r1, #0x80
	lsls r1, r1, #0x11
	lsls r1, r5
	lsrs r1, r1, #0x18
	ldr r0, _0800B998 @ =gUnk_03002544
	ldr r3, [r0]
	ldrb r2, [r3, #4]
	adds r0, r1, #0
	orrs r0, r2
	strb r0, [r3, #4]
	ldr r0, _0800B99C @ =gUnk_03002540
	ldr r2, [r0]
	ldrb r0, [r2, #5]
	bics r0, r1
	strb r0, [r2, #5]
	ldr r0, _0800B9A0 @ =0x00000701
	strh r0, [r4, #0x18]
	movs r0, #0x47
	strh r0, [r4]
	adds r0, r5, #0
	movs r1, #1
	adds r2, r4, #0
	bl rfu_STC_releaseFrame
	b _0800B9D8
	.align 2, 0
_0800B994: .4byte gUnk_03002530
_0800B998: .4byte gUnk_03002544
_0800B99C: .4byte gUnk_03002540
_0800B9A0: .4byte 0x00000701
_0800B9A4:
	ldr r0, [r2, #0x68]
_0800B9A6:
	str r0, [r4, #4]
	movs r3, #0
	adds r6, r4, #0
	adds r6, #0x21
	movs r7, #0
	adds r5, r4, #4
_0800B9B2:
	adds r0, r6, r3
	strb r7, [r0]
	lsls r1, r3, #2
	adds r1, r5, r1
	ldrh r0, [r4, #0x2e]
	adds r2, r0, #0
	muls r2, r3, r2
	ldr r0, [r4, #4]
	adds r0, r0, r2
	str r0, [r1]
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _0800B9B2
	ldr r0, [r4, #0x30]
	str r0, [r4, #0x14]
	ldr r0, _0800B9E0 @ =0x00008042
	strh r0, [r4]
_0800B9D8:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800B9E0: .4byte 0x00008042

	thumb_func_start rfu_NI_checkCommFailCounter
rfu_NI_checkCommFailCounter: @ 0x0800B9E4
	push {r4, r5, r6, r7, lr}
	ldr r2, _0800BA70 @ =gUnk_03002540
	ldr r0, [r2]
	ldrb r1, [r0, #4]
	ldrb r0, [r0, #5]
	orrs r0, r1
	cmp r0, #0
	beq _0800BA6A
	ldr r1, _0800BA74 @ =0x04000208
	ldrh r0, [r1]
	mov ip, r0
	movs r0, #0
	strh r0, [r1]
	ldr r1, _0800BA78 @ =gUnk_03002544
	ldr r0, [r1]
	ldrb r0, [r0, #2]
	lsrs r7, r0, #4
	movs r3, #0
	adds r6, r1, #0
	adds r5, r2, #0
	ldr r4, _0800BA7C @ =gUnk_03002530
_0800BA0E:
	movs r0, #0x80
	lsls r0, r0, #0x11
	lsls r0, r3
	lsrs r2, r0, #0x18
	ldr r0, [r5]
	ldrb r0, [r0, #4]
	ands r0, r2
	cmp r0, #0
	beq _0800BA36
	ldr r0, [r6]
	ldrb r0, [r0, #2]
	ands r0, r2
	cmp r0, #0
	bne _0800BA36
	lsls r0, r3, #2
	adds r0, r0, r4
	ldr r1, [r0]
	ldrh r0, [r1, #2]
	adds r0, #1
	strh r0, [r1, #2]
_0800BA36:
	ldr r0, [r5]
	ldrb r0, [r0, #5]
	ands r0, r2
	cmp r0, #0
	beq _0800BA54
	adds r0, r7, #0
	ands r0, r2
	cmp r0, #0
	bne _0800BA54
	lsls r0, r3, #2
	adds r0, r0, r4
	ldr r1, [r0]
	ldrh r0, [r1, #0x36]
	adds r0, #1
	strh r0, [r1, #0x36]
_0800BA54:
	adds r0, r3, #1
	lsls r0, r0, #0x18
	lsrs r3, r0, #0x18
	cmp r3, #3
	bls _0800BA0E
	ldr r0, [r6]
	movs r1, #0
	strb r1, [r0, #2]
	ldr r0, _0800BA74 @ =0x04000208
	mov r1, ip
	strh r1, [r0]
_0800BA6A:
	pop {r4, r5, r6, r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BA70: .4byte gUnk_03002540
_0800BA74: .4byte 0x04000208
_0800BA78: .4byte gUnk_03002544
_0800BA7C: .4byte gUnk_03002530

	thumb_func_start rfu_REQ_noise
rfu_REQ_noise: @ 0x0800BA80
	push {lr}
	ldr r0, _0800BA94 @ =rfu_STC_REQ_callback
	bl STWI_set_Callback_M
	movs r0, #1
	movs r1, #0
	bl STWI_send_TestModeREQ
	pop {r0}
	bx r0
	.align 2, 0
_0800BA94: .4byte rfu_STC_REQ_callback

	thumb_func_start AgbRFU_checkID
AgbRFU_checkID: @ 0x0800BA98
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	ldr r0, _0800BAB0 @ =0x04000208
	ldrh r0, [r0]
	cmp r0, #0
	bne _0800BAB4
	movs r0, #1
	rsbs r0, r0, #0
	b _0800BB34
	.align 2, 0
_0800BAB0: .4byte 0x04000208
_0800BAB4:
	ldr r0, _0800BAE0 @ =0x04000200
	ldrh r0, [r0]
	mov r8, r0
	ldr r4, _0800BAE4 @ =gUnk_03002500
	ldr r1, [r4]
	movs r0, #0xa
	str r0, [r1]
	ldr r0, _0800BAE8 @ =Sio32IDIntr
	bl STWI_set_Callback_ID
	bl Sio32IDInit
	ldr r0, [r4]
	ldrb r0, [r0, #0xa]
	lsls r0, r0, #2
	ldr r1, _0800BAEC @ =0x04000100
	adds r4, r0, r1
	lsls r0, r5, #0x1b
	lsrs r5, r0, #0x18
	movs r7, #0
	b _0800BB02
	.align 2, 0
_0800BAE0: .4byte 0x04000200
_0800BAE4: .4byte gUnk_03002500
_0800BAE8: .4byte Sio32IDIntr
_0800BAEC: .4byte 0x04000100
_0800BAF0:
	strh r6, [r4, #2]
	strh r6, [r4]
	movs r0, #0x83
	strh r0, [r4, #2]
_0800BAF8:
	ldrh r0, [r4]
	cmp r0, #0x1f
	bls _0800BAF8
	strh r7, [r4, #2]
	strh r7, [r4]
_0800BB02:
	subs r0, r5, #1
	lsls r0, r0, #0x18
	lsrs r5, r0, #0x18
	cmp r5, #0xff
	beq _0800BB16
	bl Sio32IDMain
	adds r6, r0, #0
	cmp r6, #0
	beq _0800BAF0
_0800BB16:
	ldr r1, _0800BB40 @ =0x04000208
	movs r0, #0
	strh r0, [r1]
	ldr r0, _0800BB44 @ =0x04000200
	mov r2, r8
	strh r2, [r0]
	movs r0, #1
	strh r0, [r1]
	ldr r0, _0800BB48 @ =gUnk_03002500
	ldr r1, [r0]
	movs r0, #0
	str r0, [r1]
	bl STWI_set_Callback_ID
	adds r0, r6, #0
_0800BB34:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800BB40: .4byte 0x04000208
_0800BB44: .4byte 0x04000200
_0800BB48: .4byte gUnk_03002500

	thumb_func_start Sio32IDInit
Sio32IDInit: @ 0x0800BB4C
	push {r4, r5, lr}
	sub sp, #4
	ldr r3, _0800BBA4 @ =0x04000208
	movs r4, #0
	strh r4, [r3]
	ldr r2, _0800BBA8 @ =0x04000200
	ldr r0, _0800BBAC @ =gUnk_03002500
	ldr r0, [r0]
	movs r1, #8
	ldrb r0, [r0, #0xa]
	lsls r1, r0
	movs r5, #0x80
	orrs r1, r5
	ldrh r0, [r2]
	bics r0, r1
	strh r0, [r2]
	movs r0, #1
	strh r0, [r3]
	ldr r0, _0800BBB0 @ =0x04000134
	strh r4, [r0]
	subs r2, #0xd8
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	strh r0, [r2]
	ldrh r0, [r2]
	movs r3, #0x81
	lsls r3, r3, #7
	adds r1, r3, #0
	orrs r0, r1
	strh r0, [r2]
	movs r0, #0
	str r0, [sp]
	ldr r1, _0800BBB4 @ =gUnk_03002408
	ldr r2, _0800BBB8 @ =0x05000003
	mov r0, sp
	bl CpuSet
	ldr r0, _0800BBBC @ =0x04000202
	strh r5, [r0]
	add sp, #4
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800BBA4: .4byte 0x04000208
_0800BBA8: .4byte 0x04000200
_0800BBAC: .4byte gUnk_03002500
_0800BBB0: .4byte 0x04000134
_0800BBB4: .4byte gUnk_03002408
_0800BBB8: .4byte 0x05000003
_0800BBBC: .4byte 0x04000202

	thumb_func_start Sio32IDMain
Sio32IDMain: @ 0x0800BBC0
	push {r4, r5, r6, r7, lr}
	ldr r0, _0800BBD4 @ =gUnk_03002408
	ldrb r1, [r0, #1]
	mov ip, r1
	adds r7, r0, #0
	cmp r1, #0
	beq _0800BBD8
	cmp r1, #1
	beq _0800BC10
	b _0800BCA8
	.align 2, 0
_0800BBD4: .4byte gUnk_03002408
_0800BBD8:
	movs r6, #1
	strb r6, [r7]
	ldr r3, _0800BC04 @ =0x04000128
	ldrh r0, [r3]
	movs r5, #1
	orrs r0, r5
	strh r0, [r3]
	ldr r4, _0800BC08 @ =0x04000208
	mov r0, ip
	strh r0, [r4]
	ldr r2, _0800BC0C @ =0x04000200
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	strh r6, [r4]
	strb r5, [r7, #1]
	ldrb r0, [r3]
	orrs r0, r1
	strb r0, [r3]
	b _0800BCAC
	.align 2, 0
_0800BC04: .4byte 0x04000128
_0800BC08: .4byte 0x04000208
_0800BC0C: .4byte 0x04000200
_0800BC10:
	ldrh r0, [r7, #0xa]
	cmp r0, #0
	bne _0800BCA4
	ldrb r0, [r7]
	cmp r0, #1
	bne _0800BC40
	ldrh r0, [r7, #2]
	cmp r0, #0
	bne _0800BCAC
	ldr r3, _0800BC38 @ =0x04000208
	strh r0, [r3]
	ldr r2, _0800BC3C @ =0x04000128
	ldrh r0, [r2]
	movs r1, #0x80
	orrs r0, r1
	strh r0, [r2]
	mov r1, ip
	strh r1, [r3]
	b _0800BCAC
	.align 2, 0
_0800BC38: .4byte 0x04000208
_0800BC3C: .4byte 0x04000128
_0800BC40:
	ldrh r1, [r7, #4]
	ldr r0, _0800BC8C @ =0x00008001
	cmp r1, r0
	beq _0800BCAC
	ldrh r6, [r7, #2]
	cmp r6, #0
	bne _0800BCAC
	ldr r4, _0800BC90 @ =0x04000208
	strh r6, [r4]
	ldr r3, _0800BC94 @ =0x04000200
	ldrh r1, [r3]
	ldr r0, _0800BC98 @ =0x0000FF7F
	ands r0, r1
	strh r0, [r3]
	mov r7, ip
	strh r7, [r4]
	ldr r2, _0800BC9C @ =0x04000128
	strh r6, [r2]
	movs r1, #0x80
	lsls r1, r1, #5
	adds r0, r1, #0
	strh r0, [r2]
	ldr r0, _0800BCA0 @ =0x04000202
	movs r5, #0x80
	strh r5, [r0]
	ldrh r0, [r2]
	movs r7, #0x81
	lsls r7, r7, #7
	adds r1, r7, #0
	orrs r0, r1
	strh r0, [r2]
	strh r6, [r4]
	ldrh r0, [r3]
	orrs r0, r5
	strh r0, [r3]
	mov r0, ip
	strh r0, [r4]
	b _0800BCAC
	.align 2, 0
_0800BC8C: .4byte 0x00008001
_0800BC90: .4byte 0x04000208
_0800BC94: .4byte 0x04000200
_0800BC98: .4byte 0x0000FF7F
_0800BC9C: .4byte 0x04000128
_0800BCA0: .4byte 0x04000202
_0800BCA4:
	movs r0, #2
	strb r0, [r7, #1]
_0800BCA8:
	ldrh r0, [r7, #0xa]
	b _0800BCAE
_0800BCAC:
	movs r0, #0
_0800BCAE:
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1

	thumb_func_start Sio32IDIntr
Sio32IDIntr: @ 0x0800BCB4
	push {r4, r5, lr}
	ldr r0, _0800BCFC @ =0x04000120
	ldr r5, [r0]
	ldr r0, _0800BD00 @ =gUnk_03002408
	ldrb r1, [r0]
	adds r4, r0, #0
	cmp r1, #1
	beq _0800BCCE
	ldr r0, _0800BD04 @ =0x04000128
	ldrh r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strh r1, [r0]
_0800BCCE:
	ldrb r2, [r4]
	lsls r1, r2, #4
	adds r0, r5, #0
	lsls r0, r1
	lsrs r1, r0, #0x10
	movs r0, #1
	subs r0, r0, r2
	lsls r0, r0, #4
	lsls r5, r0
	adds r0, r5, #0
	lsrs r5, r0, #0x10
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	bne _0800BD22
	ldrh r2, [r4, #6]
	cmp r1, r2
	bne _0800BD20
	ldrh r3, [r4, #2]
	cmp r3, #3
	bls _0800BD08
	strh r5, [r4, #0xa]
	b _0800BD22
	.align 2, 0
_0800BCFC: .4byte 0x04000120
_0800BD00: .4byte gUnk_03002408
_0800BD04: .4byte 0x04000128
_0800BD08:
	ldrh r0, [r4, #4]
	mvns r0, r0
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r1, r0
	bne _0800BD22
	mvns r0, r2
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r5, r0
	bne _0800BD22
	adds r0, r3, #1
_0800BD20:
	strh r0, [r4, #2]
_0800BD22:
	ldrh r0, [r4, #2]
	cmp r0, #3
	bhi _0800BD38
	lsls r0, r0, #1
	ldr r1, _0800BD34 @ =gUnk_0808E2F8
	adds r0, r0, r1
	ldrh r0, [r0]
	b _0800BD3A
	.align 2, 0
_0800BD34: .4byte gUnk_0808E2F8
_0800BD38:
	ldr r0, _0800BD90 @ =0x00008001
_0800BD3A:
	strh r0, [r4, #4]
	mvns r0, r5
	strh r0, [r4, #6]
	ldr r3, _0800BD94 @ =0x04000120
	ldrh r2, [r4, #4]
	ldrb r1, [r4]
	movs r0, #1
	subs r0, r0, r1
	lsls r0, r0, #4
	lsls r2, r0
	ldrh r0, [r4, #6]
	lsls r1, r1, #4
	lsls r0, r1
	adds r2, r2, r0
	str r2, [r3]
	ldrb r0, [r4]
	cmp r0, #1
	bne _0800BD88
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _0800BD6A
	ldr r0, _0800BD98 @ =0x0000494E
	cmp r5, r0
	bne _0800BD88
_0800BD6A:
	movs r0, #0
	ldr r1, _0800BD9C @ =0x00000257
_0800BD6E:
	adds r0, #1
	lsls r0, r0, #0x10
	lsrs r0, r0, #0x10
	cmp r0, r1
	bls _0800BD6E
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	bne _0800BD88
	ldr r0, _0800BDA0 @ =0x04000128
	ldrh r1, [r0]
	movs r2, #0x80
	orrs r1, r2
	strh r1, [r0]
_0800BD88:
	pop {r4, r5}
	pop {r0}
	bx r0
	.align 2, 0
_0800BD90: .4byte 0x00008001
_0800BD94: .4byte 0x04000120
_0800BD98: .4byte 0x0000494E
_0800BD9C: .4byte 0x00000257
_0800BDA0: .4byte 0x04000128

	thumb_func_start sub_0800BDA4
sub_0800BDA4: @ 0x0800BDA4
	push {r7, lr}
	mov r7, sp
	bl sub_0800C644
	ldr r0, _0800BDB8 @ =gUnk_03002416
	movs r1, #0
	strb r1, [r0]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BDB8: .4byte gUnk_03002416

	thumb_func_start sub_0800BDBC
sub_0800BDBC: @ 0x0800BDBC
	push {r7, lr}
	mov r7, sp
	bl sub_0800C658
	ldr r0, _0800BDD0 @ =gUnk_03002416
	movs r1, #1
	strb r1, [r0]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800BDD0: .4byte gUnk_03002416

	thumb_func_start sub_0800BDD4
sub_0800BDD4: @ 0x0800BDD4
	push {r7, lr}
	sub sp, #0x10
	mov r7, sp
	adds r1, r7, #4
	adds r0, r1, #0
	bl sub_0800BF30
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
	bl sub_0800BEAC
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
	bl sub_0800C1F0
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
	bl sub_0800BEAC
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

	thumb_func_start sub_0800BEAC
sub_0800BEAC: @ 0x0800BEAC
	push {r7, lr}
	sub sp, #0x10
	mov r7, sp
	ldr r0, _0800BEC0 @ =gUnk_03002416
	ldrb r1, [r0]
	cmp r1, #1
	bne _0800BEC4
	movs r0, #0
	b _0800BF28
	.align 2, 0
_0800BEC0: .4byte gUnk_03002416
_0800BEC4:
	ldr r0, _0800BF1C @ =gUnk_03002416
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0800BF20 @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800BF20 @ =0x080000C4
	movs r1, #5
	strh r1, [r0]
	ldr r0, _0800BF24 @ =0x080000C6
	movs r1, #7
	strh r1, [r0]
	movs r0, #0x60
	bl sub_0800C474
	ldr r0, _0800BF20 @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800BF20 @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800BF1C @ =gUnk_03002416
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
	bl sub_0800BFFC
	adds r1, r7, #0
	strb r0, [r1]
	adds r0, r7, #0
	ldrb r1, [r0]
	adds r0, r1, #0
	b _0800BF28
	.align 2, 0
_0800BF1C: .4byte gUnk_03002416
_0800BF20: .4byte 0x080000C4
_0800BF24: .4byte 0x080000C6
_0800BF28:
	add sp, #0x10
	pop {r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800BF30
sub_0800BF30: @ 0x0800BF30
	push {r4, r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, _0800BF44 @ =gUnk_03002416
	ldrb r1, [r0]
	cmp r1, #1
	bne _0800BF48
	movs r0, #0
	b _0800BFF4
	.align 2, 0
_0800BF44: .4byte gUnk_03002416
_0800BF48:
	ldr r0, _0800BFE8 @ =gUnk_03002416
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0800BFEC @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800BFEC @ =0x080000C4
	movs r1, #5
	strh r1, [r0]
	ldr r0, _0800BFF0 @ =0x080000C6
	movs r1, #7
	strh r1, [r0]
	movs r0, #0x63
	bl sub_0800C474
	ldr r0, _0800BFF0 @ =0x080000C6
	movs r1, #5
	strh r1, [r0]
	bl sub_0800C5B8
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
	ldr r0, _0800BFEC @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800BFEC @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800BFE8 @ =gUnk_03002416
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	b _0800BFF4
	.align 2, 0
_0800BFE8: .4byte gUnk_03002416
_0800BFEC: .4byte 0x080000C4
_0800BFF0: .4byte 0x080000C6
_0800BFF4:
	add sp, #8
	pop {r4, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800BFFC
sub_0800BFFC: @ 0x0800BFFC
	push {r4, r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, _0800C010 @ =gUnk_03002416
	ldrb r1, [r0]
	cmp r1, #1
	bne _0800C014
	movs r0, #0
	b _0800C09C
	.align 2, 0
_0800C010: .4byte gUnk_03002416
_0800C014:
	ldr r0, _0800C090 @ =gUnk_03002416
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0800C094 @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800C094 @ =0x080000C4
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
	ldr r0, _0800C098 @ =0x080000C6
	movs r1, #7
	strh r1, [r0]
	movs r0, #0x62
	bl sub_0800C474
	adds r0, r7, #4
	ldrb r1, [r0]
	adds r0, r1, #0
	bl sub_0800C518
	ldr r0, _0800C094 @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800C094 @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800C090 @ =gUnk_03002416
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	b _0800C09C
	.align 2, 0
_0800C090: .4byte gUnk_03002416
_0800C094: .4byte 0x080000C4
_0800C098: .4byte 0x080000C6
_0800C09C:
	add sp, #8
	pop {r4, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800C0A4
sub_0800C0A4: @ 0x0800C0A4
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, _0800C0B8 @ =gUnk_03002416
	ldrb r1, [r0]
	cmp r1, #1
	bne _0800C0BC
	movs r0, #0
	b _0800C14C
	.align 2, 0
_0800C0B8: .4byte gUnk_03002416
_0800C0BC:
	ldr r0, _0800C0F0 @ =gUnk_03002416
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0800C0F4 @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800C0F4 @ =0x080000C4
	movs r1, #5
	strh r1, [r0]
	ldr r0, _0800C0F8 @ =0x080000C6
	movs r1, #7
	strh r1, [r0]
	movs r0, #0x65
	bl sub_0800C474
	ldr r0, _0800C0F8 @ =0x080000C6
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
_0800C0F0: .4byte gUnk_03002416
_0800C0F4: .4byte 0x080000C4
_0800C0F8: .4byte 0x080000C6
_0800C0FC:
	bl sub_0800C5B8
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
	ldr r0, _0800C144 @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800C144 @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800C148 @ =gUnk_03002416
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	b _0800C14C
	.align 2, 0
_0800C144: .4byte 0x080000C4
_0800C148: .4byte gUnk_03002416
_0800C14C:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800C154
sub_0800C154: @ 0x0800C154
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, _0800C168 @ =gUnk_03002416
	ldrb r1, [r0]
	cmp r1, #1
	bne _0800C16C
	movs r0, #0
	b _0800C1E8
	.align 2, 0
_0800C168: .4byte gUnk_03002416
_0800C16C:
	ldr r0, _0800C19C @ =gUnk_03002416
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0800C1A0 @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800C1A0 @ =0x080000C4
	movs r1, #5
	strh r1, [r0]
	ldr r0, _0800C1A4 @ =0x080000C6
	movs r1, #7
	strh r1, [r0]
	movs r0, #0x64
	bl sub_0800C474
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
_0800C19C: .4byte gUnk_03002416
_0800C1A0: .4byte 0x080000C4
_0800C1A4: .4byte 0x080000C6
_0800C1A8:
	adds r0, r7, #4
	ldrb r1, [r0]
	ldr r2, [r7]
	adds r0, r1, r2
	ldrb r1, [r0]
	adds r0, r1, #0
	bl sub_0800C518
	adds r1, r7, #4
	adds r0, r7, #4
	adds r1, r7, #4
	ldrb r2, [r1]
	adds r1, r2, #1
	adds r2, r1, #0
	strb r2, [r0]
	b _0800C190
_0800C1C8:
	ldr r0, _0800C1E0 @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800C1E0 @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800C1E4 @ =gUnk_03002416
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	b _0800C1E8
	.align 2, 0
_0800C1E0: .4byte 0x080000C4
_0800C1E4: .4byte gUnk_03002416
_0800C1E8:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800C1F0
sub_0800C1F0: @ 0x0800C1F0
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, _0800C204 @ =gUnk_03002416
	ldrb r1, [r0]
	cmp r1, #1
	bne _0800C208
	movs r0, #0
	b _0800C29C
	.align 2, 0
_0800C204: .4byte gUnk_03002416
_0800C208:
	ldr r0, _0800C23C @ =gUnk_03002416
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0800C240 @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800C240 @ =0x080000C4
	movs r1, #5
	strh r1, [r0]
	ldr r0, _0800C244 @ =0x080000C6
	movs r1, #7
	strh r1, [r0]
	movs r0, #0x67
	bl sub_0800C474
	ldr r0, _0800C244 @ =0x080000C6
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
_0800C23C: .4byte gUnk_03002416
_0800C240: .4byte 0x080000C4
_0800C244: .4byte 0x080000C6
_0800C248:
	bl sub_0800C5B8
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
	ldr r0, _0800C294 @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800C294 @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800C298 @ =gUnk_03002416
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	b _0800C29C
	.align 2, 0
_0800C294: .4byte 0x080000C4
_0800C298: .4byte gUnk_03002416
_0800C29C:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800C2A4
sub_0800C2A4: @ 0x0800C2A4
	push {r7, lr}
	sub sp, #8
	mov r7, sp
	str r0, [r7]
	ldr r0, _0800C2B8 @ =gUnk_03002416
	ldrb r1, [r0]
	cmp r1, #1
	bne _0800C2BC
	movs r0, #0
	b _0800C338
	.align 2, 0
_0800C2B8: .4byte gUnk_03002416
_0800C2BC:
	ldr r0, _0800C2EC @ =gUnk_03002416
	movs r1, #1
	strb r1, [r0]
	ldr r0, _0800C2F0 @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800C2F0 @ =0x080000C4
	movs r1, #5
	strh r1, [r0]
	ldr r0, _0800C2F4 @ =0x080000C6
	movs r1, #7
	strh r1, [r0]
	movs r0, #0x66
	bl sub_0800C474
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
_0800C2EC: .4byte gUnk_03002416
_0800C2F0: .4byte 0x080000C4
_0800C2F4: .4byte 0x080000C6
_0800C2F8:
	adds r0, r7, #4
	ldrb r1, [r0]
	ldr r2, [r7]
	adds r0, r1, r2
	adds r1, r0, #4
	ldrb r2, [r1]
	adds r0, r2, #0
	bl sub_0800C518
	adds r1, r7, #4
	adds r0, r7, #4
	adds r1, r7, #4
	ldrb r2, [r1]
	adds r1, r2, #1
	adds r2, r1, #0
	strb r2, [r0]
	b _0800C2E0
_0800C31A:
	ldr r0, _0800C330 @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800C330 @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800C334 @ =gUnk_03002416
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	b _0800C338
	.align 2, 0
_0800C330: .4byte 0x080000C4
_0800C334: .4byte gUnk_03002416
_0800C338:
	add sp, #8
	pop {r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800C340
sub_0800C340: @ 0x0800C340
	push {r4, r7, lr}
	sub sp, #0xc
	mov r7, sp
	str r0, [r7]
	ldr r0, _0800C354 @ =gUnk_03002416
	ldrb r1, [r0]
	cmp r1, #1
	bne _0800C358
	movs r0, #0
	b _0800C46C
	.align 2, 0
_0800C354: .4byte gUnk_03002416
_0800C358:
	ldr r0, _0800C3C0 @ =gUnk_03002416
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
_0800C3C0: .4byte gUnk_03002416
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
	ldr r0, _0800C424 @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800C424 @ =0x080000C4
	movs r1, #5
	strh r1, [r0]
	ldr r0, _0800C428 @ =0x080000C6
	movs r1, #7
	strh r1, [r0]
	movs r0, #0x68
	bl sub_0800C474
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
_0800C424: .4byte 0x080000C4
_0800C428: .4byte 0x080000C6
_0800C42C:
	adds r0, r7, #0
	adds r0, #8
	adds r1, r7, #4
	ldrb r2, [r1]
	adds r0, r0, r2
	ldrb r1, [r0]
	adds r0, r1, #0
	bl sub_0800C518
	adds r1, r7, #4
	adds r0, r7, #4
	adds r1, r7, #4
	ldrb r2, [r1]
	adds r1, r2, #1
	adds r2, r1, #0
	strb r2, [r0]
	b _0800C418
_0800C44E:
	ldr r0, _0800C464 @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800C464 @ =0x080000C4
	movs r1, #1
	strh r1, [r0]
	ldr r0, _0800C468 @ =gUnk_03002416
	movs r1, #0
	strb r1, [r0]
	movs r0, #1
	b _0800C46C
	.align 2, 0
_0800C464: .4byte 0x080000C4
_0800C468: .4byte gUnk_03002416
_0800C46C:
	add sp, #0xc
	pop {r4, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800C474
sub_0800C474: @ 0x0800C474
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
	ldr r1, _0800C50C @ =0x080000C4
	adds r2, r7, #2
	ldrb r3, [r2]
	adds r2, r3, #0
	lsls r3, r2, #1
	adds r2, r3, #0
	movs r3, #4
	orrs r2, r3
	adds r3, r2, #0
	strh r3, [r1]
	ldr r1, _0800C50C @ =0x080000C4
	adds r2, r7, #2
	ldrb r3, [r2]
	adds r2, r3, #0
	lsls r3, r2, #1
	adds r2, r3, #0
	movs r3, #4
	orrs r2, r3
	adds r3, r2, #0
	strh r3, [r1]
	ldr r1, _0800C50C @ =0x080000C4
	adds r2, r7, #2
	ldrb r3, [r2]
	adds r2, r3, #0
	lsls r3, r2, #1
	adds r2, r3, #0
	movs r3, #4
	orrs r2, r3
	adds r3, r2, #0
	strh r3, [r1]
	ldr r1, _0800C50C @ =0x080000C4
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
_0800C50C: .4byte 0x080000C4
_0800C510:
	add sp, #4
	pop {r4, r5, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800C518
sub_0800C518: @ 0x0800C518
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
	ldr r1, _0800C5AC @ =0x080000C4
	adds r2, r7, #2
	ldrb r3, [r2]
	adds r2, r3, #0
	lsls r3, r2, #1
	adds r2, r3, #0
	movs r3, #4
	orrs r2, r3
	adds r3, r2, #0
	strh r3, [r1]
	ldr r1, _0800C5AC @ =0x080000C4
	adds r2, r7, #2
	ldrb r3, [r2]
	adds r2, r3, #0
	lsls r3, r2, #1
	adds r2, r3, #0
	movs r3, #4
	orrs r2, r3
	adds r3, r2, #0
	strh r3, [r1]
	ldr r1, _0800C5AC @ =0x080000C4
	adds r2, r7, #2
	ldrb r3, [r2]
	adds r2, r3, #0
	lsls r3, r2, #1
	adds r2, r3, #0
	movs r3, #4
	orrs r2, r3
	adds r3, r2, #0
	strh r3, [r1]
	ldr r1, _0800C5AC @ =0x080000C4
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
_0800C5AC: .4byte 0x080000C4
_0800C5B0:
	add sp, #4
	pop {r4, r7}
	pop {r1}
	bx r1

	thumb_func_start sub_0800C5B8
sub_0800C5B8: @ 0x0800C5B8
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
	ldr r0, _0800C630 @ =0x080000C4
	movs r1, #4
	strh r1, [r0]
	ldr r0, _0800C630 @ =0x080000C4
	movs r1, #4
	strh r1, [r0]
	ldr r0, _0800C630 @ =0x080000C4
	movs r1, #4
	strh r1, [r0]
	ldr r0, _0800C630 @ =0x080000C4
	movs r1, #4
	strh r1, [r0]
	ldr r0, _0800C630 @ =0x080000C4
	movs r1, #4
	strh r1, [r0]
	ldr r0, _0800C630 @ =0x080000C4
	movs r1, #5
	strh r1, [r0]
	adds r0, r7, #1
	ldr r1, _0800C630 @ =0x080000C4
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
_0800C630: .4byte 0x080000C4
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

	thumb_func_start sub_0800C644
sub_0800C644: @ 0x0800C644
	push {r7, lr}
	mov r7, sp
	ldr r0, _0800C654 @ =0x080000C8
	movs r1, #1
	strh r1, [r0]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800C654: .4byte 0x080000C8

	thumb_func_start sub_0800C658
sub_0800C658: @ 0x0800C658
	push {r7, lr}
	mov r7, sp
	ldr r0, _0800C668 @ =0x080000C8
	movs r1, #0
	strh r1, [r0]
	pop {r7}
	pop {r0}
	bx r0
	.align 2, 0
_0800C668: .4byte 0x080000C8

	thumb_func_start sub_0800C66C
sub_0800C66C: @ 0x0800C66C
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

	thumb_func_start sub_0800C690
sub_0800C690: @ 0x0800C690
	push {r4, r5, lr}
	sub sp, #0x44
	mov r0, sp
	bl sub_0800C880
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

	thumb_func_start sub_0800C72C
sub_0800C72C: @ 0x0800C72C
	push {lr}
	ldr r1, _0800C74C @ =gUnk_0300241A
	ldrh r0, [r1]
	cmp r0, #0
	beq _0800C748
	ldrh r0, [r1]
	subs r0, #1
	strh r0, [r1]
	lsls r0, r0, #0x10
	cmp r0, #0
	bne _0800C748
	ldr r1, _0800C750 @ =gUnk_0300254C
	movs r0, #1
	strb r0, [r1]
_0800C748:
	pop {r0}
	bx r0
	.align 2, 0
_0800C74C: .4byte gUnk_0300241A
_0800C750: .4byte gUnk_0300254C

	thumb_func_start sub_0800C754
sub_0800C754: @ 0x0800C754
	push {lr}
	adds r2, r1, #0
	lsls r0, r0, #0x18
	lsrs r1, r0, #0x18
	cmp r1, #3
	bhi _0800C788
	ldr r0, _0800C778 @ =gUnk_03002418
	strb r1, [r0]
	ldr r1, _0800C77C @ =gUnk_0300241C
	ldrb r0, [r0]
	lsls r0, r0, #2
	ldr r3, _0800C780 @ =0x04000100
	adds r0, r0, r3
	str r0, [r1]
	ldr r0, _0800C784 @ =sub_0800C72C
	str r0, [r2]
	movs r0, #0
	b _0800C78A
	.align 2, 0
_0800C778: .4byte gUnk_03002418
_0800C77C: .4byte gUnk_0300241C
_0800C780: .4byte 0x04000100
_0800C784: .4byte sub_0800C72C
_0800C788:
	movs r0, #1
_0800C78A:
	pop {r1}
	bx r1
	.align 2, 0

	thumb_func_start sub_0800C790
sub_0800C790: @ 0x0800C790
	push {r4, r5, r6, lr}
	mov r6, sl
	mov r5, sb
	mov r4, r8
	push {r4, r5, r6}
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	ldr r1, _0800C814 @ =gUnk_0300256C
	lsls r2, r0, #1
	adds r2, r2, r0
	lsls r2, r2, #1
	ldr r0, [r1]
	adds r2, r2, r0
	ldr r1, _0800C818 @ =gUnk_03002420
	ldr r0, _0800C81C @ =0x04000208
	mov sb, r0
	ldrh r0, [r0]
	strh r0, [r1]
	movs r3, #0
	mov r1, sb
	strh r3, [r1]
	ldr r0, _0800C820 @ =gUnk_0300241C
	mov r8, r0
	ldr r4, [r0]
	strh r3, [r4, #2]
	ldr r6, _0800C824 @ =0x04000200
	ldr r1, _0800C828 @ =gUnk_03002418
	mov sl, r1
	ldrb r1, [r1]
	movs r5, #8
	adds r0, r5, #0
	lsls r0, r1
	adds r1, r0, #0
	ldrh r0, [r6]
	orrs r0, r1
	strh r0, [r6]
	ldr r0, _0800C82C @ =gUnk_0300254C
	strb r3, [r0]
	ldr r1, _0800C830 @ =gUnk_0300241A
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
_0800C814: .4byte gUnk_0300256C
_0800C818: .4byte gUnk_03002420
_0800C81C: .4byte 0x04000208
_0800C820: .4byte gUnk_0300241C
_0800C824: .4byte 0x04000200
_0800C828: .4byte gUnk_03002418
_0800C82C: .4byte gUnk_0300254C
_0800C830: .4byte gUnk_0300241A
_0800C834: .4byte 0x04000202

	thumb_func_start sub_0800C838
sub_0800C838: @ 0x0800C838
	ldr r3, _0800C868 @ =0x04000208
	movs r1, #0
	strh r1, [r3]
	ldr r2, _0800C86C @ =gUnk_0300241C
	ldr r0, [r2]
	strh r1, [r0]
	adds r0, #2
	str r0, [r2]
	strh r1, [r0]
	subs r0, #2
	str r0, [r2]
	ldr r2, _0800C870 @ =0x04000200
	ldr r0, _0800C874 @ =gUnk_03002418
	ldrb r0, [r0]
	movs r1, #8
	lsls r1, r0
	ldrh r0, [r2]
	bics r0, r1
	strh r0, [r2]
	ldr r0, _0800C878 @ =gUnk_03002420
	ldrh r0, [r0]
	strh r0, [r3]
	bx lr
	.align 2, 0
_0800C868: .4byte 0x04000208
_0800C86C: .4byte gUnk_0300241C
_0800C870: .4byte 0x04000200
_0800C874: .4byte gUnk_03002418
_0800C878: .4byte gUnk_03002420

	thumb_func_start sub_0800C87C
sub_0800C87C: @ 0x0800C87C
	ldrb r0, [r0]
	bx lr

	thumb_func_start sub_0800C880
sub_0800C880: @ 0x0800C880
	push {lr}
	adds r2, r0, #0
	ldr r1, _0800C89C @ =gUnk_03002550
	adds r0, r2, #1
	str r0, [r1]
	ldr r3, _0800C8A0 @ =sub_0800C87C
	movs r0, #1
	bics r3, r0
	ldr r0, _0800C8A4 @ =sub_0800C880
	ldr r1, _0800C8A0 @ =sub_0800C87C
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _0800C8B4
	.align 2, 0
_0800C89C: .4byte gUnk_03002550
_0800C8A0: .4byte sub_0800C87C
_0800C8A4: .4byte sub_0800C880
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

	thumb_func_start sub_0800C8C0
sub_0800C8C0: @ 0x0800C8C0
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

	thumb_func_start sub_0800C8E4
sub_0800C8E4: @ 0x0800C8E4
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
	ldr r0, _0800C938 @ =gUnk_0300255C
	ldr r0, [r0]
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0xa
	cmp r1, r0
	bne _0800C91C
	lsrs r0, r3, #0x14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_0800C66C
	movs r0, #0xf
	ands r4, r0
_0800C91C:
	ldr r3, _0800C93C @ =sub_0800C8C0
	movs r0, #1
	bics r3, r0
	mov r2, sp
	ldr r0, _0800C940 @ =sub_0800C8E4
	ldr r1, _0800C93C @ =sub_0800C8C0
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _0800C950
	.align 2, 0
_0800C930: .4byte 0x04000204
_0800C934: .4byte 0x0000FFFC
_0800C938: .4byte gUnk_0300255C
_0800C93C: .4byte sub_0800C8C0
_0800C940: .4byte sub_0800C8E4
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
	ldr r0, _0800C97C @ =gUnk_0300255C
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
_0800C97C: .4byte gUnk_0300255C

	thumb_func_start sub_0800C980
sub_0800C980: @ 0x0800C980
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

	thumb_func_start sub_0800C9B0
sub_0800C9B0: @ 0x0800C9B0
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
	ldr r0, _0800CA00 @ =gUnk_0300255C
	ldr r0, [r0]
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0xa
	cmp r1, r0
	bne _0800C9E4
	lsrs r0, r3, #0x14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_0800C66C
	movs r0, #0xf
	ands r4, r0
_0800C9E4:
	ldr r3, _0800CA04 @ =sub_0800C980
	movs r0, #1
	bics r3, r0
	mov r2, sp
	ldr r0, _0800CA08 @ =sub_0800C9B0
	ldr r1, _0800CA04 @ =sub_0800C980
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _0800CA18
	.align 2, 0
_0800C9F8: .4byte 0x04000204
_0800C9FC: .4byte 0x0000FFFC
_0800CA00: .4byte gUnk_0300255C
_0800CA04: .4byte sub_0800C980
_0800CA08: .4byte sub_0800C9B0
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
	ldr r0, _0800CA44 @ =gUnk_0300255C
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
_0800CA44: .4byte gUnk_0300255C

	thumb_func_start sub_0800CA48
sub_0800CA48: @ 0x0800CA48
	push {r4, r5, r6, lr}
	sub sp, #0x100
	adds r5, r1, #0
	adds r6, r2, #0
	lsls r2, r0, #0x10
	lsrs r4, r2, #0x10
	ldr r0, _0800CA90 @ =gUnk_0300255C
	ldr r0, [r0]
	ldr r1, [r0]
	movs r0, #0x80
	lsls r0, r0, #0xa
	cmp r1, r0
	bne _0800CA70
	lsrs r0, r2, #0x14
	lsls r0, r0, #0x18
	lsrs r0, r0, #0x18
	bl sub_0800C66C
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
	ldr r3, _0800CA9C @ =sub_0800C980
	movs r0, #1
	bics r3, r0
	mov r2, sp
	ldr r0, _0800CAA0 @ =sub_0800C9B0
	ldr r1, _0800CA9C @ =sub_0800C980
	subs r0, r0, r1
	lsls r0, r0, #0xf
	b _0800CAB0
	.align 2, 0
_0800CA90: .4byte gUnk_0300255C
_0800CA94: .4byte 0x04000204
_0800CA98: .4byte 0x0000FFFC
_0800CA9C: .4byte sub_0800C980
_0800CAA0: .4byte sub_0800C9B0
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
	ldr r0, _0800CADC @ =gUnk_0300255C
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
_0800CADC: .4byte gUnk_0300255C

	thumb_func_start sub_0800CAE0
sub_0800CAE0: @ 0x0800CAE0
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
	ldr r0, _0800CB20 @ =gUnk_03002558
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
	bl sub_0800C9B0
	adds r2, r0, #0
	cmp r2, #0
	bne _0800CAEC
_0800CB18:
	adds r0, r2, #0
	pop {r4, r5, r6}
	pop {r1}
	bx r1
	.align 2, 0
_0800CB20: .4byte gUnk_03002558

	thumb_func_start sub_0800CB24
sub_0800CB24: @ 0x0800CB24
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
	ldr r0, _0800CB68 @ =gUnk_03002558
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
	bl sub_0800CA48
	adds r3, r0, #0
	cmp r3, #0
	bne _0800CB32
_0800CB60:
	adds r0, r3, #0
	pop {r4, r5, r6, r7}
	pop {r1}
	bx r1
	.align 2, 0
_0800CB68: .4byte gUnk_03002558

	thumb_func_start CpuFastSet
CpuFastSet: @ 0x0800CB6C
	svc #0xc
	bx lr

	thumb_func_start CpuSet
CpuSet: @ 0x0800CB70
	svc #0xb
	bx lr

	thumb_func_start Div
Div: @ 0x0800CB74
	svc #6
	bx lr

	thumb_func_start Mod
Mod: @ 0x0800CB78
	svc #6
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start sub_0800CB80
sub_0800CB80: @ 0x0800CB80
	ldr r3, _0800CB90 @ =0x04000208
	movs r2, #0
	strb r2, [r3]
	ldr r1, _0800CB94 @ =gUnk_03007F00
	mov sp, r1
	svc #1
	svc #0
	movs r0, r0
	.align 2, 0
_0800CB90: .4byte 0x04000208
_0800CB94: .4byte gUnk_03007F00

	thumb_func_start _call_via_r0
_call_via_r0: @ 0x0800CB98
	bx r0
	nop

	thumb_func_start _call_via_r1
_call_via_r1: @ 0x0800CB9C
	bx r1
	nop

	thumb_func_start _call_via_r2
_call_via_r2: @ 0x0800CBA0
	bx r2
	nop

	thumb_func_start _call_via_r3
_call_via_r3: @ 0x0800CBA4
	bx r3
	nop

	thumb_func_start _call_via_r4
_call_via_r4: @ 0x0800CBA8
	bx r4
	nop

	thumb_func_start _call_via_r5
_call_via_r5: @ 0x0800CBAC
	bx r5
	nop

	thumb_func_start _call_via_r6
_call_via_r6: @ 0x0800CBB0
	bx r6
	nop

	thumb_func_start _call_via_r7
_call_via_r7: @ 0x0800CBB4
	bx r7
	nop

	thumb_func_start _call_via_r8
_call_via_r8: @ 0x0800CBB8
	bx r8
	nop

	thumb_func_start _call_via_r9
_call_via_r9: @ 0x0800CBBC
	bx sb
	nop

	thumb_func_start _call_via_sl
_call_via_sl: @ 0x0800CBC0
	bx sl
	nop

	thumb_func_start _call_via_fp
_call_via_fp: @ 0x0800CBC4
	bx fp
	nop

	thumb_func_start _call_via_ip
_call_via_ip: @ 0x0800CBC8
	bx ip
	nop

	thumb_func_start _call_via_sp
_call_via_sp: @ 0x0800CBCC
	bx sp
	nop

	thumb_func_start _call_via_lr
_call_via_lr: @ 0x0800CBD0
	bx lr
	nop

	thumb_func_start __divsi3
__divsi3: @ 0x0800CBD4
	cmp r1, #0
	beq _0800CC5C
	push {r4}
	adds r4, r0, #0
	eors r4, r1
	mov ip, r4
	movs r3, #1
	movs r2, #0
	cmp r1, #0
	bpl _0800CBEA
	rsbs r1, r1, #0
_0800CBEA:
	cmp r0, #0
	bpl _0800CBF0
	rsbs r0, r0, #0
_0800CBF0:
	cmp r0, r1
	blo _0800CC4E
	movs r4, #1
	lsls r4, r4, #0x1c
_0800CBF8:
	cmp r1, r4
	bhs _0800CC06
	cmp r1, r0
	bhs _0800CC06
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _0800CBF8
_0800CC06:
	lsls r4, r4, #3
_0800CC08:
	cmp r1, r4
	bhs _0800CC16
	cmp r1, r0
	bhs _0800CC16
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _0800CC08
_0800CC16:
	cmp r0, r1
	blo _0800CC1E
	subs r0, r0, r1
	orrs r2, r3
_0800CC1E:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _0800CC2A
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_0800CC2A:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _0800CC36
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_0800CC36:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _0800CC42
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_0800CC42:
	cmp r0, #0
	beq _0800CC4E
	lsrs r3, r3, #4
	beq _0800CC4E
	lsrs r1, r1, #4
	b _0800CC16
_0800CC4E:
	adds r0, r2, #0
	mov r4, ip
	cmp r4, #0
	bpl _0800CC58
	rsbs r0, r0, #0
_0800CC58:
	pop {r4}
	mov pc, lr
_0800CC5C:
	push {lr}
	bl sub_0800CC68
	movs r0, #0
	pop {pc}
	.align 2, 0

	thumb_func_start sub_0800CC68
sub_0800CC68: @ 0x0800CC68
	mov pc, lr
	.align 2, 0

	thumb_func_start __umodsi3
__umodsi3: @ 0x0800CC6C
	cmp r1, #0
	beq _0800CD22
	movs r3, #1
	cmp r0, r1
	bhs _0800CC78
	mov pc, lr
_0800CC78:
	push {r4}
	movs r4, #1
	lsls r4, r4, #0x1c
_0800CC7E:
	cmp r1, r4
	bhs _0800CC8C
	cmp r1, r0
	bhs _0800CC8C
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _0800CC7E
_0800CC8C:
	lsls r4, r4, #3
_0800CC8E:
	cmp r1, r4
	bhs _0800CC9C
	cmp r1, r0
	bhs _0800CC9C
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _0800CC8E
_0800CC9C:
	movs r2, #0
	cmp r0, r1
	blo _0800CCA4
	subs r0, r0, r1
_0800CCA4:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _0800CCB6
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0800CCB6:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _0800CCC8
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0800CCC8:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _0800CCDA
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_0800CCDA:
	mov ip, r3
	cmp r0, #0
	beq _0800CCE8
	lsrs r3, r3, #4
	beq _0800CCE8
	lsrs r1, r1, #4
	b _0800CC9C
_0800CCE8:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	bne _0800CCF4
	pop {r4}
	mov pc, lr
_0800CCF4:
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq _0800CD02
	lsrs r4, r1, #3
	adds r0, r0, r4
_0800CD02:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq _0800CD10
	lsrs r4, r1, #2
	adds r0, r0, r4
_0800CD10:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq _0800CD1E
	lsrs r4, r1, #1
	adds r0, r0, r4
_0800CD1E:
	pop {r4}
	mov pc, lr
_0800CD22:
	push {lr}
	bl sub_0800CC68
	movs r0, #0
	pop {pc}

	thumb_func_start memcmp
memcmp: @ 0x0800CD2C
	push {r4, lr}
	adds r4, r2, #0
	adds r3, r0, #0
	adds r2, r1, #0
	cmp r4, #3
	bls _0800CD68
	orrs r0, r2
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0800CD68
	b _0800CD4E
_0800CD44:
	adds r3, #4
	adds r2, #4
	subs r4, #4
	cmp r4, #3
	bls _0800CD68
_0800CD4E:
	ldr r1, [r3]
	ldr r0, [r2]
	cmp r1, r0
	beq _0800CD44
	b _0800CD68
_0800CD58:
	ldrb r0, [r3]
	ldrb r1, [r2]
	cmp r0, r1
	beq _0800CD64
	subs r0, r0, r1
	b _0800CD72
_0800CD64:
	adds r3, #1
	adds r2, #1
_0800CD68:
	adds r0, r4, #0
	subs r4, #1
	cmp r0, #0
	bne _0800CD58
	movs r0, #0
_0800CD72:
	pop {r4, pc}

	thumb_func_start memcpy
memcpy: @ 0x0800CD74
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r3, r1, #0
	cmp r2, #0xf
	bls _0800CDB4
	adds r0, r3, #0
	orrs r0, r5
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0800CDB4
	adds r1, r5, #0
_0800CD8E:
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #0x10
	cmp r2, #0xf
	bhi _0800CD8E
	cmp r2, #3
	bls _0800CDB2
_0800CDA8:
	ldm r3!, {r0}
	stm r1!, {r0}
	subs r2, #4
	cmp r2, #3
	bhi _0800CDA8
_0800CDB2:
	adds r4, r1, #0
_0800CDB4:
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _0800CDCE
	adds r1, r0, #0
_0800CDC0:
	ldrb r0, [r3]
	strb r0, [r4]
	adds r3, #1
	adds r4, #1
	subs r2, #1
	cmp r2, r1
	bne _0800CDC0
_0800CDCE:
	adds r0, r5, #0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start memset
memset: @ 0x0800CDD4
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r5, #0
	cmp r2, #3
	bls _0800CE1A
	movs r0, #3
	ands r0, r5
	cmp r0, #0
	bne _0800CE1A
	adds r1, r5, #0
	movs r0, #0xff
	ands r4, r0
	lsls r3, r4, #8
	orrs r3, r4
	lsls r0, r3, #0x10
	orrs r3, r0
	cmp r2, #0xf
	bls _0800CE0E
_0800CDFA:
	stm r1!, {r3}
	stm r1!, {r3}
	stm r1!, {r3}
	stm r1!, {r3}
	subs r2, #0x10
	cmp r2, #0xf
	bhi _0800CDFA
	b _0800CE0E
_0800CE0A:
	stm r1!, {r3}
	subs r2, #4
_0800CE0E:
	cmp r2, #3
	bhi _0800CE0A
	adds r3, r1, #0
	b _0800CE1A
_0800CE16:
	strb r4, [r3]
	adds r3, #1
_0800CE1A:
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	bne _0800CE16
	adds r0, r5, #0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start srand
srand: @ 0x0800CE28
	ldr r1, _0800CE30 @ =gUnk_02030CDC
	ldr r1, [r1]
	str r0, [r1, #0x58]
	bx lr
	.align 2, 0
_0800CE30: .4byte gUnk_02030CDC

	thumb_func_start rand
rand: @ 0x0800CE34
	ldr r0, _0800CE4C @ =gUnk_02030CDC
	ldr r2, [r0]
	ldr r1, [r2, #0x58]
	ldr r0, _0800CE50 @ =0x41C64E6D
	muls r0, r1, r0
	ldr r1, _0800CE54 @ =0x00003039
	adds r0, r0, r1
	str r0, [r2, #0x58]
	ldr r1, _0800CE58 @ =0x7FFFFFFF
	ands r0, r1
	bx lr
	.align 2, 0
_0800CE4C: .4byte gUnk_02030CDC
_0800CE50: .4byte 0x41C64E6D
_0800CE54: .4byte 0x00003039
_0800CE58: .4byte 0x7FFFFFFF

	thumb_func_start _sprintf_r
_sprintf_r: @ 0x0800CE5C
	push {r2, r3}
	push {r4, r5, lr}
	sub sp, #0x58
	ldr r4, [sp, #0x64]
	mov r3, sp
	movs r5, #0
	movs r2, #0x82
	lsls r2, r2, #2
	strh r2, [r3, #0xc]
	str r1, [sp]
	str r1, [sp, #0x10]
	ldr r1, _0800CE94 @ =0x7FFFFFFF
	str r1, [sp, #8]
	str r1, [sp, #0x14]
	str r0, [sp, #0x54]
	add r2, sp, #0x68
	mov r0, sp
	adds r1, r4, #0
	bl vfprintf
	ldr r1, [sp]
	strb r5, [r1]
	add sp, #0x58
	pop {r4, r5}
	pop {r3}
	add sp, #8
	bx r3
	.align 2, 0
_0800CE94: .4byte 0x7FFFFFFF

	thumb_func_start sprintf
sprintf: @ 0x0800CE98
	push {r1, r2, r3}
	push {r4, lr}
	sub sp, #0x58
	ldr r1, [sp, #0x60]
	mov r3, sp
	movs r4, #0
	movs r2, #0x82
	lsls r2, r2, #2
	strh r2, [r3, #0xc]
	str r0, [sp]
	str r0, [sp, #0x10]
	ldr r0, _0800CED0 @ =0x7FFFFFFF
	str r0, [sp, #8]
	str r0, [sp, #0x14]
	ldr r0, _0800CED4 @ =gUnk_02030CDC
	ldr r0, [r0]
	str r0, [sp, #0x54]
	add r2, sp, #0x64
	mov r0, sp
	bl vfprintf
	ldr r1, [sp]
	strb r4, [r1]
	add sp, #0x58
	pop {r4}
	pop {r3}
	add sp, #0xc
	bx r3
	.align 2, 0
_0800CED0: .4byte 0x7FFFFFFF
_0800CED4: .4byte gUnk_02030CDC

	thumb_func_start strcmp
strcmp: @ 0x0800CED8
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	orrs r0, r3
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0800CF1E
	ldr r1, [r2]
	ldr r0, [r3]
	cmp r1, r0
	bne _0800CF1E
	ldr r5, _0800CF04 @ =0xFEFEFEFF
	ldr r4, _0800CF08 @ =0x80808080
_0800CEF4:
	ldr r1, [r2]
	adds r0, r1, r5
	bics r0, r1
	ands r0, r4
	cmp r0, #0
	beq _0800CF0C
	movs r0, #0
	b _0800CF30
	.align 2, 0
_0800CF04: .4byte 0xFEFEFEFF
_0800CF08: .4byte 0x80808080
_0800CF0C:
	adds r2, #4
	adds r3, #4
	ldr r1, [r2]
	ldr r0, [r3]
	cmp r1, r0
	beq _0800CEF4
	b _0800CF1E
_0800CF1A:
	adds r2, #1
	adds r3, #1
_0800CF1E:
	ldrb r0, [r2]
	cmp r0, #0
	beq _0800CF2A
	ldrb r1, [r3]
	cmp r0, r1
	beq _0800CF1A
_0800CF2A:
	ldrb r2, [r2]
	ldrb r3, [r3]
	subs r0, r2, r3
_0800CF30:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start __sprint
__sprint: @ 0x0800CF34
	push {r4, lr}
	adds r4, r1, #0
	ldr r1, [r4, #8]
	cmp r1, #0
	beq _0800CF4C
	adds r1, r4, #0
	bl __sfvwrite
	movs r1, #0
	str r1, [r4, #8]
	str r1, [r4, #4]
	b _0800CF50
_0800CF4C:
	str r1, [r4, #4]
	movs r0, #0
_0800CF50:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __sbprintf
__sbprintf: @ 0x0800CF54
	push {r4, r5, lr}
	ldr r4, _0800CFC4 @ =0xFFFFFBA8
	add sp, r4
	adds r5, r0, #0
	ldr r0, [r5, #0x54]
	str r0, [sp, #0x54]
	mov r3, sp
	movs r0, #3
	rsbs r0, r0, #0
	ldrh r4, [r5, #0xc]
	ands r0, r4
	movs r4, #0
	strh r0, [r3, #0xc]
	ldrh r0, [r5, #0xe]
	strh r0, [r3, #0xe]
	ldr r0, [r5, #0x1c]
	str r0, [sp, #0x1c]
	ldr r0, [r5, #0x24]
	str r0, [sp, #0x24]
	add r0, sp, #0x58
	str r0, [sp]
	str r0, [sp, #0x10]
	movs r0, #0x80
	lsls r0, r0, #3
	str r0, [sp, #8]
	str r0, [sp, #0x14]
	str r4, [sp, #0x18]
	mov r0, sp
	bl vfprintf
	adds r4, r0, #0
	cmp r4, #0
	blt _0800CFA4
	mov r0, sp
	bl fflush
	cmp r0, #0
	beq _0800CFA4
	movs r4, #1
	rsbs r4, r4, #0
_0800CFA4:
	mov r1, sp
	movs r0, #0x40
	ldrh r1, [r1, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _0800CFB8
	movs r0, #0x40
	ldrh r1, [r5, #0xc]
	orrs r0, r1
	strh r0, [r5, #0xc]
_0800CFB8:
	adds r0, r4, #0
	movs r3, #0x8b
	lsls r3, r3, #3
	add sp, r3
	pop {r4, r5, pc}
	.align 2, 0
_0800CFC4: .4byte 0xFFFFFBA8

	thumb_func_start vfprintf
vfprintf: @ 0x0800CFC8
	push {r4, r5, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r3, r2, #0
	ldr r0, [r4, #0x54]
	adds r1, r4, #0
	adds r2, r5, #0
	bl _vfprintf_r
	pop {r4, r5, pc}

	thumb_func_start _vfprintf_r
_vfprintf_r: @ 0x0800CFDC
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	ldr r4, _0800D044 @ =0xFFFFFDE0
	add sp, r4
	str r0, [sp, #0x1dc]
	str r1, [sp, #0x1e0]
	adds r4, r2, #0
	mov sl, r3
	bl localeconv
	ldr r0, [r0]
	str r0, [sp, #0x1f8]
	movs r1, #0
	add r0, sp, #0x1d0
	str r1, [r0]
	ldr r1, [sp, #0x1e0]
	ldr r0, [r1, #0x54]
	cmp r0, #0
	bne _0800D00E
	ldr r0, _0800D048 @ =gUnk_02030CDC
	ldr r0, [r0]
	str r0, [r1, #0x54]
_0800D00E:
	ldr r2, [sp, #0x1e0]
	ldr r1, [r2, #0x54]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	bne _0800D01E
	adds r0, r1, #0
	bl __sinit
_0800D01E:
	movs r0, #8
	ldr r1, [sp, #0x1e0]
	ldrh r1, [r1, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _0800D032
	ldr r2, [sp, #0x1e0]
	ldr r0, [r2, #0x10]
	cmp r0, #0
	bne _0800D04C
_0800D032:
	ldr r0, [sp, #0x1e0]
	bl __swsetup
	cmp r0, #0
	beq _0800D04C
	movs r0, #1
	rsbs r0, r0, #0
	bl _0800DF2C
	.align 2, 0
_0800D044: .4byte 0xFFFFFDE0
_0800D048: .4byte gUnk_02030CDC
_0800D04C:
	movs r0, #0x1a
	ldr r1, [sp, #0x1e0]
	ldrh r1, [r1, #0xc]
	ands r0, r1
	cmp r0, #0xa
	bne _0800D070
	ldr r2, [sp, #0x1e0]
	movs r1, #0xe
	ldrsh r0, [r2, r1]
	cmp r0, #0
	blt _0800D070
	adds r0, r2, #0
	adds r1, r4, #0
	mov r2, sl
	bl __sbprintf
	bl _0800DF2C
_0800D070:
	str r4, [sp, #0x1e4]
	add r1, sp, #0x1c
	add r5, sp, #0x28
	str r5, [sp, #0x1c]
	movs r0, #0
	str r0, [r1, #8]
	str r0, [r1, #4]
	movs r2, #0
	str r2, [sp, #0x1f0]
	mov sb, r1
	movs r4, #0xe6
	lsls r4, r4, #1
	add r4, sp
	str r4, [sp, #0x214]
	movs r0, #0xe8
	lsls r0, r0, #1
	add r0, sp
	str r0, [sp, #0x218]
_0800D094:
	ldr r1, [sp, #0x1e4]
	mov r8, r1
_0800D098:
	ldr r0, _0800D144 @ =gUnk_02030CDC
	ldr r0, [r0]
	ldr r1, _0800D148 @ =gUnk_02030CE0
	ldr r3, [r1]
	ldr r2, [sp, #0x218]
	str r2, [sp]
	ldr r1, [sp, #0x214]
	ldr r2, [sp, #0x1e4]
	bl _mbtowc_r
	adds r4, r0, #0
	cmp r4, #0
	ble _0800D0C6
	ldr r0, [sp, #0x1e4]
	adds r0, r0, r4
	str r0, [sp, #0x1e4]
	add r0, sp, #0x1cc
	ldr r0, [r0]
	cmp r0, #0x25
	bne _0800D098
	ldr r1, [sp, #0x1e4]
	subs r1, #1
	str r1, [sp, #0x1e4]
_0800D0C6:
	ldr r2, [sp, #0x1e4]
	mov r0, r8
	subs r6, r2, r0
	cmp r6, #0
	beq _0800D0FE
	str r0, [r5]
	str r6, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r6
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _0800D0F8
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _0800D0F6
	bl _0800DF18
_0800D0F6:
	add r5, sp, #0x28
_0800D0F8:
	ldr r2, [sp, #0x1f0]
	adds r2, r2, r6
	str r2, [sp, #0x1f0]
_0800D0FE:
	cmp r4, #0
	bgt _0800D106
	bl _0800DF00
_0800D106:
	ldr r4, [sp, #0x1e4]
	adds r4, #1
	str r4, [sp, #0x1e4]
	movs r0, #0
	str r0, [sp, #0x1ec]
	movs r1, #0
	str r1, [sp, #0x208]
	movs r2, #0
	str r2, [sp, #0x1f4]
	movs r6, #1
	rsbs r6, r6, #0
	ldr r0, _0800D14C @ =0x000001C9
	add r0, sp
	strb r2, [r0]
_0800D122:
	ldr r0, [sp, #0x1e4]
	ldrb r0, [r0]
	str r0, [sp, #0x1e8]
	ldr r1, [sp, #0x1e4]
	adds r1, #1
	str r1, [sp, #0x1e4]
_0800D12E:
	ldr r0, [sp, #0x1e8]
	subs r0, #0x20
	cmp r0, #0x58
	bls _0800D138
	b _0800D7EA
_0800D138:
	lsls r0, r0, #2
	ldr r1, _0800D150 @ =_0800D154
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800D144: .4byte gUnk_02030CDC
_0800D148: .4byte gUnk_02030CE0
_0800D14C: .4byte 0x000001C9
_0800D150: .4byte _0800D154
_0800D154: @ jump table
	.4byte _0800D2B8 @ case 0
	.4byte _0800D7EA @ case 1
	.4byte _0800D7EA @ case 2
	.4byte _0800D2D0 @ case 3
	.4byte _0800D7EA @ case 4
	.4byte _0800D7EA @ case 5
	.4byte _0800D7EA @ case 6
	.4byte _0800D7EA @ case 7
	.4byte _0800D7EA @ case 8
	.4byte _0800D7EA @ case 9
	.4byte _0800D2D4 @ case 10
	.4byte _0800D2EE @ case 11
	.4byte _0800D7EA @ case 12
	.4byte _0800D2EA @ case 13
	.4byte _0800D2FC @ case 14
	.4byte _0800D7EA @ case 15
	.4byte _0800D35C @ case 16
	.4byte _0800D360 @ case 17
	.4byte _0800D360 @ case 18
	.4byte _0800D360 @ case 19
	.4byte _0800D360 @ case 20
	.4byte _0800D360 @ case 21
	.4byte _0800D360 @ case 22
	.4byte _0800D360 @ case 23
	.4byte _0800D360 @ case 24
	.4byte _0800D360 @ case 25
	.4byte _0800D7EA @ case 26
	.4byte _0800D7EA @ case 27
	.4byte _0800D7EA @ case 28
	.4byte _0800D7EA @ case 29
	.4byte _0800D7EA @ case 30
	.4byte _0800D7EA @ case 31
	.4byte _0800D7EA @ case 32
	.4byte _0800D7EA @ case 33
	.4byte _0800D7EA @ case 34
	.4byte _0800D7EA @ case 35
	.4byte _0800D3CA @ case 36
	.4byte _0800D41C @ case 37
	.4byte _0800D7EA @ case 38
	.4byte _0800D41C @ case 39
	.4byte _0800D7EA @ case 40
	.4byte _0800D7EA @ case 41
	.4byte _0800D7EA @ case 42
	.4byte _0800D7EA @ case 43
	.4byte _0800D384 @ case 44
	.4byte _0800D7EA @ case 45
	.4byte _0800D7EA @ case 46
	.4byte _0800D5D2 @ case 47
	.4byte _0800D7EA @ case 48
	.4byte _0800D7EA @ case 49
	.4byte _0800D7EA @ case 50
	.4byte _0800D7EA @ case 51
	.4byte _0800D7EA @ case 52
	.4byte _0800D66A @ case 53
	.4byte _0800D7EA @ case 54
	.4byte _0800D7EA @ case 55
	.4byte _0800D6A6 @ case 56
	.4byte _0800D7EA @ case 57
	.4byte _0800D7EA @ case 58
	.4byte _0800D7EA @ case 59
	.4byte _0800D7EA @ case 60
	.4byte _0800D7EA @ case 61
	.4byte _0800D7EA @ case 62
	.4byte _0800D7EA @ case 63
	.4byte _0800D7EA @ case 64
	.4byte _0800D7EA @ case 65
	.4byte _0800D7EA @ case 66
	.4byte _0800D3B8 @ case 67
	.4byte _0800D3D2 @ case 68
	.4byte _0800D41C @ case 69
	.4byte _0800D41C @ case 70
	.4byte _0800D41C @ case 71
	.4byte _0800D388 @ case 72
	.4byte _0800D3D2 @ case 73
	.4byte _0800D7EA @ case 74
	.4byte _0800D7EA @ case 75
	.4byte _0800D38C @ case 76
	.4byte _0800D7EA @ case 77
	.4byte _0800D58C @ case 78
	.4byte _0800D5DA @ case 79
	.4byte _0800D608 @ case 80
	.4byte _0800D3AE @ case 81
	.4byte _0800D7EA @ case 82
	.4byte _0800D628 @ case 83
	.4byte _0800D7EA @ case 84
	.4byte _0800D672 @ case 85
	.4byte _0800D7EA @ case 86
	.4byte _0800D7EA @ case 87
	.4byte _0800D6B0 @ case 88
_0800D2B8:
	ldr r1, _0800D2CC @ =0x000001C9
	add r1, sp
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800D2C4
	b _0800D122
_0800D2C4:
	movs r0, #0x20
	strb r0, [r1]
	b _0800D122
	.align 2, 0
_0800D2CC: .4byte 0x000001C9
_0800D2D0:
	movs r0, #1
	b _0800D39C
_0800D2D4:
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	str r0, [sp, #0x1f4]
	cmp r0, #0
	blt _0800D2E6
	b _0800D122
_0800D2E6:
	rsbs r0, r0, #0
	str r0, [sp, #0x1f4]
_0800D2EA:
	movs r0, #4
	b _0800D3B0
_0800D2EE:
	ldr r1, _0800D2F8 @ =0x000001C9
	add r1, sp
	movs r0, #0x2b
	strb r0, [r1]
	b _0800D122
	.align 2, 0
_0800D2F8: .4byte 0x000001C9
_0800D2FC:
	ldr r2, [sp, #0x1e4]
	ldrb r2, [r2]
	str r2, [sp, #0x1e8]
	ldr r4, [sp, #0x1e4]
	adds r4, #1
	str r4, [sp, #0x1e4]
	cmp r2, #0x2a
	bne _0800D326
	movs r0, #4
	add sl, r0
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
	adds r6, r4, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	blt _0800D322
	b _0800D122
_0800D322:
	adds r6, r0, #0
	b _0800D122
_0800D326:
	movs r4, #0
	ldr r0, [sp, #0x1e8]
	b _0800D346
_0800D32C:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #1
	subs r0, #0x30
	ldr r1, [sp, #0x1e8]
	adds r4, r0, r1
	ldr r2, [sp, #0x1e4]
	ldrb r2, [r2]
	str r2, [sp, #0x1e8]
	ldr r0, [sp, #0x1e4]
	adds r0, #1
	str r0, [sp, #0x1e4]
	adds r0, r2, #0
_0800D346:
	subs r0, #0x30
	cmp r0, #9
	bls _0800D32C
	adds r6, r4, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	blt _0800D358
	b _0800D12E
_0800D358:
	adds r6, r0, #0
	b _0800D12E
_0800D35C:
	movs r0, #0x80
	b _0800D3B0
_0800D360:
	movs r4, #0
_0800D362:
	lsls r0, r4, #2
	adds r0, r0, r4
	lsls r0, r0, #1
	subs r0, #0x30
	ldr r2, [sp, #0x1e8]
	adds r4, r0, r2
	ldr r0, [sp, #0x1e4]
	ldrb r0, [r0]
	str r0, [sp, #0x1e8]
	ldr r1, [sp, #0x1e4]
	adds r1, #1
	str r1, [sp, #0x1e4]
	subs r0, #0x30
	cmp r0, #9
	bls _0800D362
	str r4, [sp, #0x1f4]
	b _0800D12E
_0800D384:
	movs r0, #8
	b _0800D39C
_0800D388:
	movs r0, #0x40
	b _0800D3A6
_0800D38C:
	ldr r0, [sp, #0x1e4]
	ldrb r0, [r0]
	cmp r0, #0x6c
	bne _0800D3A4
	ldr r1, [sp, #0x1e4]
	adds r1, #1
	str r1, [sp, #0x1e4]
	movs r0, #0x20
_0800D39C:
	ldr r2, [sp, #0x1ec]
	orrs r2, r0
	str r2, [sp, #0x1ec]
	b _0800D122
_0800D3A4:
	movs r0, #0x10
_0800D3A6:
	ldr r4, [sp, #0x1ec]
	orrs r4, r0
	str r4, [sp, #0x1ec]
	b _0800D122
_0800D3AE:
	movs r0, #0x20
_0800D3B0:
	ldr r1, [sp, #0x1ec]
	orrs r1, r0
	str r1, [sp, #0x1ec]
	b _0800D122
_0800D3B8:
	add r2, sp, #0x68
	mov r8, r2
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	strb r0, [r2]
	b _0800D7F8
_0800D3CA:
	movs r0, #0x10
	ldr r1, [sp, #0x1ec]
	orrs r1, r0
	str r1, [sp, #0x1ec]
_0800D3D2:
	movs r0, #0x10
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	beq _0800D3E2
	movs r4, #4
	add sl, r4
	b _0800D3FE
_0800D3E2:
	movs r0, #0x40
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _0800D3FA
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	movs r1, #0
	ldrsh r4, [r0, r1]
	b _0800D404
_0800D3FA:
	movs r2, #4
	add sl, r2
_0800D3FE:
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
_0800D404:
	cmp r4, #0
	bge _0800D412
	rsbs r4, r4, #0
	ldr r1, _0800D418 @ =0x000001C9
	add r1, sp
	movs r0, #0x2d
	strb r0, [r1]
_0800D412:
	movs r2, #1
	b _0800D6FE
	.align 2, 0
_0800D418: .4byte 0x000001C9
_0800D41C:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r6, r0
	bne _0800D428
	movs r6, #6
	b _0800D438
_0800D428:
	ldr r4, [sp, #0x1e8]
	cmp r4, #0x67
	beq _0800D432
	cmp r4, #0x47
	bne _0800D438
_0800D432:
	cmp r6, #0
	bne _0800D438
	movs r6, #1
_0800D438:
	movs r0, #8
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	movs r2, #8
	add sl, r2
	mov r0, sl
	subs r0, #8
	ldr r1, [r0]
	ldr r2, [r0, #4]
	str r1, [sp, #0x1fc]
	str r2, [sp, #0x200]
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl isinf
	cmp r0, #0
	beq _0800D48C
	ldr r3, _0800D480 @ =0x00000000
	ldr r2, _0800D47C @ =0x00000000
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl __ltdf2
	cmp r0, #0
	bge _0800D472
	ldr r1, _0800D484 @ =0x000001C9
	add r1, sp
	movs r0, #0x2d
	strb r0, [r1]
_0800D472:
	ldr r2, _0800D488 @ =gUnk_0808E3D8
	mov r8, r2
	movs r3, #3
	b _0800D802
	.align 2, 0
_0800D47C: .4byte 0x00000000
_0800D480: .4byte 0x00000000
_0800D484: .4byte 0x000001C9
_0800D488: .4byte gUnk_0808E3D8
_0800D48C:
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl isnan
	cmp r0, #0
	beq _0800D4A4
	ldr r4, _0800D4A0 @ =gUnk_0808E3DC
	mov r8, r4
	movs r3, #3
	b _0800D802
	.align 2, 0
_0800D4A0: .4byte gUnk_0808E3DC
_0800D4A4:
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r1, [sp, #0x1ec]
	orrs r1, r0
	str r1, [sp, #0x1ec]
	str r1, [sp]
	add r0, sp, #0x1c8
	str r0, [sp, #4]
	add r0, sp, #0x1d4
	str r0, [sp, #8]
	ldr r2, [sp, #0x1e8]
	str r2, [sp, #0xc]
	add r0, sp, #0x1d8
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1dc]
	ldr r1, [sp, #0x1fc]
	ldr r2, [sp, #0x200]
	adds r3, r6, #0
	bl cvt
	mov r8, r0
	ldr r4, [sp, #0x1e8]
	cmp r4, #0x67
	beq _0800D4D8
	cmp r4, #0x47
	bne _0800D4FA
_0800D4D8:
	add r0, sp, #0x1d4
	ldr r1, [r0]
	movs r0, #4
	rsbs r0, r0, #0
	cmp r1, r0
	ble _0800D4E8
	cmp r1, r6
	ble _0800D4F6
_0800D4E8:
	movs r0, #0x45
	ldr r1, [sp, #0x1e8]
	cmp r1, #0x67
	bne _0800D4F2
	movs r0, #0x65
_0800D4F2:
	str r0, [sp, #0x1e8]
	b _0800D4FA
_0800D4F6:
	movs r2, #0x67
	str r2, [sp, #0x1e8]
_0800D4FA:
	ldr r4, [sp, #0x1e8]
	cmp r4, #0x65
	bgt _0800D520
	add r0, sp, #0x1d4
	ldr r1, [r0]
	subs r1, #1
	str r1, [r0]
	add r0, sp, #0x14
	ldr r2, [sp, #0x1e8]
	bl exponent
	str r0, [sp, #0x204]
	add r0, sp, #0x1d8
	ldr r0, [r0]
	ldr r1, [sp, #0x204]
	adds r3, r1, r0
	cmp r0, #1
	bgt _0800D560
	b _0800D556
_0800D520:
	ldr r4, [sp, #0x1e8]
	cmp r4, #0x66
	bne _0800D548
	add r0, sp, #0x1d4
	ldr r0, [r0]
	cmp r0, #0
	ble _0800D544
	adds r3, r0, #0
	cmp r6, #0
	bne _0800D53E
	movs r0, #1
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _0800D570
_0800D53E:
	adds r0, r3, #1
	adds r3, r0, r6
	b _0800D570
_0800D544:
	adds r3, r6, #2
	b _0800D570
_0800D548:
	add r0, sp, #0x1d4
	ldr r1, [r0]
	add r0, sp, #0x1d8
	ldr r0, [r0]
	cmp r1, r0
	blt _0800D564
	adds r3, r1, #0
_0800D556:
	movs r0, #1
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	beq _0800D570
_0800D560:
	adds r3, #1
	b _0800D570
_0800D564:
	cmp r1, #0
	bgt _0800D56E
	adds r0, #2
	subs r3, r0, r1
	b _0800D570
_0800D56E:
	adds r3, r0, #1
_0800D570:
	add r0, sp, #0x1c8
	ldrb r0, [r0]
	adds r7, r5, #0
	adds r7, #8
	cmp r0, #0
	bne _0800D57E
	b _0800D806
_0800D57E:
	ldr r1, _0800D588 @ =0x000001C9
	add r1, sp
	movs r0, #0x2d
	strb r0, [r1]
	b _0800D806
	.align 2, 0
_0800D588: .4byte 0x000001C9
_0800D58C:
	movs r0, #0x10
	ldr r4, [sp, #0x1ec]
	ands r0, r4
	cmp r0, #0
	beq _0800D5A6
	movs r0, #4
	add sl, r0
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	ldr r1, [sp, #0x1f0]
	str r1, [r0]
	b _0800D094
_0800D5A6:
	movs r0, #0x40
	ldr r2, [sp, #0x1ec]
	ands r2, r0
	cmp r2, #0
	beq _0800D5C2
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	add r1, sp, #0x1f0
	ldrh r1, [r1]
	strh r1, [r0]
	b _0800D094
_0800D5C2:
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	ldr r4, [sp, #0x1f0]
	str r4, [r0]
	b _0800D094
_0800D5D2:
	movs r0, #0x10
	ldr r1, [sp, #0x1ec]
	orrs r1, r0
	str r1, [sp, #0x1ec]
_0800D5DA:
	movs r0, #0x10
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	bne _0800D5FA
	movs r0, #0x40
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _0800D5FA
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldrh r4, [r0]
	b _0800D604
_0800D5FA:
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
_0800D604:
	movs r2, #0
	b _0800D6F6
_0800D608:
	movs r0, #4
	add sl, r0
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
	movs r2, #2
	ldr r1, _0800D624 @ =gUnk_0808E3E0
	str r1, [sp, #0x210]
	ldr r0, [sp, #0x1ec]
	orrs r0, r2
	str r0, [sp, #0x1ec]
	movs r1, #0x78
	str r1, [sp, #0x1e8]
	b _0800D6F6
	.align 2, 0
_0800D624: .4byte gUnk_0808E3E0
_0800D628:
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldr r0, [r0]
	mov r8, r0
	cmp r0, #0
	bne _0800D63C
	ldr r4, _0800D65C @ =gUnk_0808E3F4
	mov r8, r4
_0800D63C:
	cmp r6, #0
	blt _0800D660
	mov r0, r8
	movs r1, #0
	adds r2, r6, #0
	bl memchr
	cmp r0, #0
	beq _0800D658
	mov r1, r8
	subs r3, r0, r1
	cmp r3, r6
	bgt _0800D658
	b _0800D7FA
_0800D658:
	adds r3, r6, #0
	b _0800D7FA
	.align 2, 0
_0800D65C: .4byte gUnk_0808E3F4
_0800D660:
	mov r0, r8
	bl strlen
	adds r3, r0, #0
	b _0800D7FA
_0800D66A:
	movs r0, #0x10
	ldr r2, [sp, #0x1ec]
	orrs r2, r0
	str r2, [sp, #0x1ec]
_0800D672:
	movs r0, #0x10
	ldr r4, [sp, #0x1ec]
	ands r0, r4
	cmp r0, #0
	beq _0800D682
	movs r0, #4
	add sl, r0
	b _0800D69C
_0800D682:
	movs r0, #0x40
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _0800D698
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldrh r4, [r0]
	b _0800D6A2
_0800D698:
	movs r4, #4
	add sl, r4
_0800D69C:
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
_0800D6A2:
	movs r2, #1
	b _0800D6F6
_0800D6A6:
	ldr r0, _0800D6AC @ =gUnk_0808E3FC
	str r0, [sp, #0x210]
	b _0800D6B4
	.align 2, 0
_0800D6AC: .4byte gUnk_0808E3FC
_0800D6B0:
	ldr r1, _0800D6D4 @ =gUnk_0808E3E0
	str r1, [sp, #0x210]
_0800D6B4:
	movs r0, #0x10
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	bne _0800D6D8
	movs r0, #0x40
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _0800D6D8
	movs r2, #4
	add sl, r2
	mov r0, sl
	subs r0, #4
	ldrh r4, [r0]
	b _0800D6E2
	.align 2, 0
_0800D6D4: .4byte gUnk_0808E3E0
_0800D6D8:
	movs r4, #4
	add sl, r4
	mov r0, sl
	subs r0, #4
	ldr r4, [r0]
_0800D6E2:
	movs r2, #2
	movs r0, #1
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _0800D6F6
	cmp r4, #0
	beq _0800D6F6
	orrs r1, r2
	str r1, [sp, #0x1ec]
_0800D6F6:
	ldr r1, _0800D740 @ =0x000001C9
	add r1, sp
	movs r0, #0
	strb r0, [r1]
_0800D6FE:
	str r6, [sp, #0x208]
	cmp r6, #0
	blt _0800D70E
	movs r0, #0x81
	rsbs r0, r0, #0
	ldr r1, [sp, #0x1ec]
	ands r1, r0
	str r1, [sp, #0x1ec]
_0800D70E:
	movs r0, #0xe2
	lsls r0, r0, #1
	add r0, sp
	mov r8, r0
	cmp r4, #0
	bne _0800D724
	adds r7, r5, #0
	adds r7, #8
	ldr r1, [sp, #0x208]
	cmp r1, #0
	beq _0800D7DC
_0800D724:
	cmp r2, #1
	beq _0800D782
	cmp r2, #1
	blo _0800D748
	cmp r2, #2
	beq _0800D7BC
	ldr r2, _0800D744 @ =gUnk_0808E410
	mov r8, r2
	mov r0, r8
	bl strlen
	adds r3, r0, #0
	b _0800D802
	.align 2, 0
_0800D740: .4byte 0x000001C9
_0800D744: .4byte gUnk_0808E410
_0800D748:
	adds r7, r5, #0
	adds r7, #8
	movs r2, #7
_0800D74E:
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	adds r0, r4, #0
	ands r0, r2
	adds r1, r0, #0
	adds r1, #0x30
	mov r0, r8
	strb r1, [r0]
	lsrs r4, r4, #3
	cmp r4, #0
	bne _0800D74E
	movs r0, #1
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	beq _0800D7DC
	cmp r1, #0x30
	beq _0800D7DC
	movs r4, #1
	rsbs r4, r4, #0
	add r8, r4
	movs r0, #0x30
	mov r1, r8
	strb r0, [r1]
	b _0800D7DC
_0800D782:
	adds r7, r5, #0
	adds r7, #8
	cmp r4, #9
	bls _0800D7AC
_0800D78A:
	movs r2, #1
	rsbs r2, r2, #0
	add r8, r2
	adds r0, r4, #0
	movs r1, #0xa
	bl __umodsi3
	adds r0, #0x30
	mov r1, r8
	strb r0, [r1]
	adds r0, r4, #0
	movs r1, #0xa
	bl __udivsi3
	adds r4, r0, #0
	cmp r4, #9
	bhi _0800D78A
_0800D7AC:
	movs r2, #1
	rsbs r2, r2, #0
	add r8, r2
	adds r0, r4, #0
	adds r0, #0x30
	mov r4, r8
	strb r0, [r4]
	b _0800D7DC
_0800D7BC:
	adds r7, r5, #0
	adds r7, #8
	movs r1, #0xf
_0800D7C2:
	movs r0, #1
	rsbs r0, r0, #0
	add r8, r0
	adds r0, r4, #0
	ands r0, r1
	ldr r2, [sp, #0x210]
	adds r0, r2, r0
	ldrb r0, [r0]
	mov r2, r8
	strb r0, [r2]
	lsrs r4, r4, #4
	cmp r4, #0
	bne _0800D7C2
_0800D7DC:
	add r4, sp, #0x14
	mov r1, r8
	subs r0, r4, r1
	movs r2, #0xd8
	lsls r2, r2, #1
	adds r3, r0, r2
	b _0800D806
_0800D7EA:
	ldr r4, [sp, #0x1e8]
	cmp r4, #0
	bne _0800D7F2
	b _0800DF00
_0800D7F2:
	add r0, sp, #0x68
	mov r8, r0
	strb r4, [r0]
_0800D7F8:
	movs r3, #1
_0800D7FA:
	ldr r1, _0800D824 @ =0x000001C9
	add r1, sp
	movs r0, #0
	strb r0, [r1]
_0800D802:
	adds r7, r5, #0
	adds r7, #8
_0800D806:
	str r3, [sp, #0x20c]
	ldr r2, [sp, #0x208]
	cmp r3, r2
	bge _0800D810
	str r2, [sp, #0x20c]
_0800D810:
	ldr r0, _0800D824 @ =0x000001C9
	add r0, sp
	ldrb r0, [r0]
	cmp r0, #0
	beq _0800D828
	ldr r4, [sp, #0x20c]
	adds r4, #1
	str r4, [sp, #0x20c]
	b _0800D838
	.align 2, 0
_0800D824: .4byte 0x000001C9
_0800D828:
	movs r0, #2
	ldr r1, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _0800D838
	ldr r2, [sp, #0x20c]
	adds r2, #2
	str r2, [sp, #0x20c]
_0800D838:
	movs r0, #0x84
	ldr r4, [sp, #0x1ec]
	ands r0, r4
	cmp r0, #0
	bne _0800D8B8
	ldr r0, [sp, #0x1f4]
	ldr r1, [sp, #0x20c]
	subs r4, r0, r1
	cmp r4, #0
	ble _0800D8B8
	ldr r1, _0800D8E4 @ =gUnk_0808E3B8
	cmp r4, #0x10
	ble _0800D88C
	mov r6, sb
_0800D854:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, r7, #0
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _0800D882
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _0800D87E
	b _0800DF18
_0800D87E:
	add r5, sp, #0x28
	ldr r1, _0800D8E4 @ =gUnk_0808E3B8
_0800D882:
	subs r4, #0x10
	adds r7, r5, #0
	adds r7, #8
	cmp r4, #0x10
	bgt _0800D854
_0800D88C:
	str r1, [r5]
	str r4, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r4
	str r0, [r2, #8]
	adds r5, r7, #0
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _0800D8B8
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _0800D8B6
	b _0800DF18
_0800D8B6:
	add r5, sp, #0x28
_0800D8B8:
	ldr r1, _0800D8E8 @ =0x000001C9
	add r1, sp
	ldrb r0, [r1]
	cmp r0, #0
	beq _0800D8EC
	str r1, [r5]
	movs r0, #1
	str r0, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, #1
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	cmp r0, #7
	ble _0800D92C
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	b _0800D91C
	.align 2, 0
_0800D8E4: .4byte gUnk_0808E3B8
_0800D8E8: .4byte 0x000001C9
_0800D8EC:
	movs r2, #2
	ldr r0, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	beq _0800D92C
	add r1, sp, #0x1c4
	movs r0, #0x30
	strb r0, [r1]
	add r0, sp, #0x1e8
	ldrb r0, [r0]
	strb r0, [r1, #1]
	str r1, [r5]
	str r2, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, #2
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _0800D92C
	ldr r0, [sp, #0x1e0]
_0800D91C:
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _0800D92A
	b _0800DF18
_0800D92A:
	add r5, sp, #0x28
_0800D92C:
	movs r0, #0x84
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0x80
	bne _0800D9A8
	ldr r0, [sp, #0x1f4]
	ldr r1, [sp, #0x20c]
	subs r4, r0, r1
	cmp r4, #0
	ble _0800D9A8
	ldr r1, _0800DA44 @ =gUnk_0808E3C8
	cmp r4, #0x10
	ble _0800D97C
	mov r6, sb
_0800D948:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _0800D976
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _0800D972
	b _0800DF18
_0800D972:
	add r5, sp, #0x28
	ldr r1, _0800DA44 @ =gUnk_0808E3C8
_0800D976:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _0800D948
_0800D97C:
	str r1, [r5]
	str r4, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r4
	str r0, [r2, #8]
	adds r5, #8
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _0800D9A8
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _0800D9A6
	b _0800DF18
_0800D9A6:
	add r5, sp, #0x28
_0800D9A8:
	ldr r0, [sp, #0x208]
	subs r4, r0, r3
	cmp r4, #0
	ble _0800DA16
	ldr r1, _0800DA44 @ =gUnk_0808E3C8
	cmp r4, #0x10
	ble _0800D9EC
	mov r6, sb
_0800D9B8:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _0800D9E6
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _0800D9E2
	b _0800DF18
_0800D9E2:
	add r5, sp, #0x28
	ldr r1, _0800DA44 @ =gUnk_0808E3C8
_0800D9E6:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _0800D9B8
_0800D9EC:
	str r1, [r5]
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r4
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _0800DA16
	ldr r0, [sp, #0x1e0]
	str r3, [sp, #0x21c]
	bl __sprint
	ldr r3, [sp, #0x21c]
	cmp r0, #0
	beq _0800DA14
	b _0800DF18
_0800DA14:
	add r5, sp, #0x28
_0800DA16:
	movs r0, #0x80
	lsls r0, r0, #1
	ldr r2, [sp, #0x1ec]
	ands r0, r2
	cmp r0, #0
	bne _0800DA48
	mov r4, r8
	str r4, [r5]
	str r3, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r3
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	bgt _0800DA3E
	b _0800DE5E
_0800DA3E:
	ldr r0, [sp, #0x1e0]
	b _0800DE54
	.align 2, 0
_0800DA44: .4byte gUnk_0808E3C8
_0800DA48:
	ldr r2, [sp, #0x1e8]
	cmp r2, #0x65
	bgt _0800DA50
	b _0800DD34
_0800DA50:
	ldr r3, _0800DB1C @ =0x00000000
	ldr r2, _0800DB18 @ =0x00000000
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl __eqdf2
	cmp r0, #0
	bne _0800DB28
	ldr r0, _0800DB20 @ =gUnk_0808E42C
	str r0, [r5]
	movs r6, #1
	str r6, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, #1
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	cmp r0, #7
	ble _0800DA8C
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _0800DA8A
	b _0800DF18
_0800DA8A:
	add r5, sp, #0x28
_0800DA8C:
	add r0, sp, #0x1d4
	ldr r1, [r0]
	add r4, sp, #0x1d8
	ldr r0, [r4]
	cmp r1, r0
	blt _0800DAA2
	ldr r0, [sp, #0x1ec]
	ands r0, r6
	cmp r0, #0
	bne _0800DAA2
	b _0800DE5E
_0800DAA2:
	ldr r0, [sp, #0x1f8]
	str r0, [r5]
	str r6, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, #1
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _0800DACA
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _0800DAC8
	b _0800DF18
_0800DAC8:
	add r5, sp, #0x28
_0800DACA:
	ldr r0, [r4]
	subs r4, r0, #1
	cmp r4, #0
	bgt _0800DAD4
	b _0800DE5E
_0800DAD4:
	ldr r1, _0800DB24 @ =gUnk_0808E3C8
	cmp r4, #0x10
	ble _0800DB0C
	mov r6, sb
_0800DADC:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _0800DB06
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _0800DB02
	b _0800DF18
_0800DB02:
	add r5, sp, #0x28
	ldr r1, _0800DB24 @ =gUnk_0808E3C8
_0800DB06:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _0800DADC
_0800DB0C:
	str r1, [r5]
	str r4, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r4
	b _0800DE42
	.align 2, 0
_0800DB18: .4byte 0x00000000
_0800DB1C: .4byte 0x00000000
_0800DB20: .4byte gUnk_0808E42C
_0800DB24: .4byte gUnk_0808E3C8
_0800DB28:
	add r6, sp, #0x1d4
	ldr r2, [r6]
	cmp r2, #0
	bgt _0800DC10
	ldr r0, _0800DC08 @ =gUnk_0808E42C
	str r0, [r5]
	movs r4, #1
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, #1
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _0800DB5A
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _0800DB58
	b _0800DF18
_0800DB58:
	add r5, sp, #0x28
_0800DB5A:
	ldr r2, [sp, #0x1f8]
	str r2, [r5]
	str r4, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, #1
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	cmp r0, #7
	ble _0800DB84
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _0800DB82
	b _0800DF18
_0800DB82:
	add r5, sp, #0x28
_0800DB84:
	ldr r0, [r6]
	rsbs r4, r0, #0
	cmp r4, #0
	ble _0800DBEA
	ldr r1, _0800DC0C @ =gUnk_0808E3C8
	cmp r4, #0x10
	ble _0800DBC4
	mov r6, sb
_0800DB94:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _0800DBBE
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _0800DBBA
	b _0800DF18
_0800DBBA:
	add r5, sp, #0x28
	ldr r1, _0800DC0C @ =gUnk_0808E3C8
_0800DBBE:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _0800DB94
_0800DBC4:
	str r1, [r5]
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r4
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _0800DBEA
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _0800DBE8
	b _0800DF18
_0800DBE8:
	add r5, sp, #0x28
_0800DBEA:
	mov r2, r8
	str r2, [r5]
	add r0, sp, #0x1d8
	ldr r1, [r0]
	str r1, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, r0, r1
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	b _0800DE4C
	.align 2, 0
_0800DC08: .4byte gUnk_0808E42C
_0800DC0C: .4byte gUnk_0808E3C8
_0800DC10:
	add r4, sp, #0x1d8
	ldr r1, [r4]
	cmp r2, r1
	blt _0800DCCC
	mov r0, r8
	str r0, [r5]
	str r1, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r1
	str r0, [r2, #8]
	adds r5, #8
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _0800DC42
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _0800DC40
	b _0800DF18
_0800DC40:
	add r5, sp, #0x28
_0800DC42:
	ldr r1, [r6]
	ldr r0, [r4]
	subs r4, r1, r0
	cmp r4, #0
	ble _0800DCAA
	ldr r1, _0800DCC4 @ =gUnk_0808E3C8
	cmp r4, #0x10
	ble _0800DC84
	mov r6, sb
_0800DC54:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _0800DC7E
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _0800DC7A
	b _0800DF18
_0800DC7A:
	add r5, sp, #0x28
	ldr r1, _0800DCC4 @ =gUnk_0808E3C8
_0800DC7E:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _0800DC54
_0800DC84:
	str r1, [r5]
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r4
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _0800DCAA
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _0800DCA8
	b _0800DF18
_0800DCA8:
	add r5, sp, #0x28
_0800DCAA:
	movs r1, #1
	ldr r0, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	bne _0800DCB6
	b _0800DE5E
_0800DCB6:
	ldr r0, _0800DCC8 @ =gUnk_0808E430
	str r0, [r5]
	str r1, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, #1
	b _0800DE42
	.align 2, 0
_0800DCC4: .4byte gUnk_0808E3C8
_0800DCC8: .4byte gUnk_0808E430
_0800DCCC:
	mov r0, r8
	str r0, [r5]
	str r2, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r2
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _0800DCF4
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _0800DCF2
	b _0800DF18
_0800DCF2:
	add r5, sp, #0x28
_0800DCF4:
	ldr r0, [r6]
	add r8, r0
	ldr r0, _0800DD30 @ =gUnk_0808E430
	str r0, [r5]
	movs r0, #1
	str r0, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, #1
	str r0, [r2, #8]
	adds r5, #8
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _0800DD24
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _0800DD22
	b _0800DF18
_0800DD22:
	add r5, sp, #0x28
_0800DD24:
	mov r0, r8
	str r0, [r5]
	ldr r1, [r4]
	ldr r0, [r6]
	subs r1, r1, r0
	b _0800DE3A
	.align 2, 0
_0800DD30: .4byte gUnk_0808E430
_0800DD34:
	add r4, sp, #0x1d8
	ldr r0, [r4]
	cmp r0, #1
	bgt _0800DD46
	movs r1, #1
	ldr r0, [sp, #0x1ec]
	ands r0, r1
	cmp r0, #0
	beq _0800DE0C
_0800DD46:
	add r1, sp, #0x1c4
	mov r2, r8
	ldrb r0, [r2]
	strb r0, [r1]
	movs r0, #1
	add r8, r0
	movs r0, #0x2e
	strb r0, [r1, #1]
	str r1, [r5]
	movs r0, #2
	str r0, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, #2
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _0800DD7E
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	beq _0800DD7C
	b _0800DF18
_0800DD7C:
	add r5, sp, #0x28
_0800DD7E:
	ldr r3, _0800DDA8 @ =0x00000000
	ldr r2, _0800DDA4 @ =0x00000000
	ldr r0, [sp, #0x1fc]
	ldr r1, [sp, #0x200]
	bl __nedf2
	cmp r0, #0
	beq _0800DDAC
	mov r2, r8
	str r2, [r5]
	ldr r1, [r4]
	subs r0, r1, #1
	str r0, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	subs r0, #1
	adds r0, r0, r1
	b _0800DE18
	.align 2, 0
_0800DDA4: .4byte 0x00000000
_0800DDA8: .4byte 0x00000000
_0800DDAC:
	ldr r0, [r4]
	subs r4, r0, #1
	cmp r4, #0
	ble _0800DE34
	ldr r1, _0800DE08 @ =gUnk_0808E3C8
	cmp r4, #0x10
	ble _0800DDEC
	mov r6, sb
_0800DDBC:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _0800DDE6
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	beq _0800DDE2
	b _0800DF18
_0800DDE2:
	add r5, sp, #0x28
	ldr r1, _0800DE08 @ =gUnk_0808E3C8
_0800DDE6:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _0800DDBC
_0800DDEC:
	str r1, [r5]
	str r4, [r5, #4]
	mov r1, sb
	ldr r0, [r1, #8]
	adds r0, r0, r4
	str r0, [r1, #8]
	adds r5, #8
	ldr r0, [r1, #4]
	adds r0, #1
	str r0, [r1, #4]
	cmp r0, #7
	ble _0800DE34
	ldr r0, [sp, #0x1e0]
	b _0800DE2A
	.align 2, 0
_0800DE08: .4byte gUnk_0808E3C8
_0800DE0C:
	mov r2, r8
	str r2, [r5]
	str r1, [r5, #4]
	mov r4, sb
	ldr r0, [r4, #8]
	adds r0, #1
_0800DE18:
	str r0, [r4, #8]
	adds r5, #8
	ldr r0, [r4, #4]
	adds r0, #1
	str r0, [r4, #4]
	cmp r0, #7
	ble _0800DE34
	ldr r0, [sp, #0x1e0]
	mov r1, sb
_0800DE2A:
	bl __sprint
	cmp r0, #0
	bne _0800DF18
	add r5, sp, #0x28
_0800DE34:
	add r0, sp, #0x14
	str r0, [r5]
	ldr r1, [sp, #0x204]
_0800DE3A:
	str r1, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r1
_0800DE42:
	str r0, [r2, #8]
	adds r5, #8
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
_0800DE4C:
	cmp r0, #7
	ble _0800DE5E
	ldr r0, [sp, #0x1e0]
	mov r1, sb
_0800DE54:
	bl __sprint
	cmp r0, #0
	bne _0800DF18
	add r5, sp, #0x28
_0800DE5E:
	movs r0, #4
	ldr r4, [sp, #0x1ec]
	ands r4, r0
	cmp r4, #0
	beq _0800DECA
	ldr r0, [sp, #0x1f4]
	ldr r1, [sp, #0x20c]
	subs r4, r0, r1
	cmp r4, #0
	ble _0800DECA
	ldr r1, _0800DEFC @ =gUnk_0808E3B8
	cmp r4, #0x10
	ble _0800DEA8
	mov r6, sb
_0800DE7A:
	str r1, [r5]
	movs r0, #0x10
	str r0, [r5, #4]
	ldr r0, [r6, #8]
	adds r0, #0x10
	str r0, [r6, #8]
	adds r5, #8
	ldr r0, [r6, #4]
	adds r0, #1
	str r0, [r6, #4]
	cmp r0, #7
	ble _0800DEA2
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	bne _0800DF18
	add r5, sp, #0x28
	ldr r1, _0800DEFC @ =gUnk_0808E3B8
_0800DEA2:
	subs r4, #0x10
	cmp r4, #0x10
	bgt _0800DE7A
_0800DEA8:
	str r1, [r5]
	str r4, [r5, #4]
	mov r2, sb
	ldr r0, [r2, #8]
	adds r0, r0, r4
	str r0, [r2, #8]
	ldr r0, [r2, #4]
	adds r0, #1
	str r0, [r2, #4]
	cmp r0, #7
	ble _0800DECA
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	bne _0800DF18
_0800DECA:
	ldr r0, [sp, #0x20c]
	ldr r4, [sp, #0x1f4]
	cmp r0, r4
	bge _0800DED4
	adds r0, r4, #0
_0800DED4:
	ldr r1, [sp, #0x1f0]
	adds r1, r1, r0
	str r1, [sp, #0x1f0]
	mov r2, sb
	ldr r0, [r2, #8]
	cmp r0, #0
	beq _0800DEEE
	ldr r0, [sp, #0x1e0]
	mov r1, sb
	bl __sprint
	cmp r0, #0
	bne _0800DF18
_0800DEEE:
	movs r0, #0
	mov r4, sb
	str r0, [r4, #4]
	add r5, sp, #0x28
	bl _0800D094
	.align 2, 0
_0800DEFC: .4byte gUnk_0808E3B8
_0800DF00:
	mov r1, sb
	ldr r0, [r1, #8]
	cmp r0, #0
	beq _0800DF12
	ldr r0, [sp, #0x1e0]
	bl __sprint
	cmp r0, #0
	bne _0800DF18
_0800DF12:
	movs r0, #0
	mov r1, sb
	str r0, [r1, #4]
_0800DF18:
	movs r0, #0x40
	ldr r2, [sp, #0x1e0]
	ldrh r2, [r2, #0xc]
	ands r0, r2
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	bne _0800DF2A
	ldr r1, [sp, #0x1f0]
_0800DF2A:
	adds r0, r1, #0
_0800DF2C:
	movs r3, #0x88
	lsls r3, r3, #2
	add sp, r3
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start cvt
cvt: @ 0x0800DF3C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x1c
	str r0, [sp, #0x18]
	adds r5, r2, #0
	adds r4, r1, #0
	mov r8, r3
	ldr r6, [sp, #0x3c]
	ldr r0, [sp, #0x44]
	mov sl, r0
	ldr r1, [sp, #0x48]
	mov sb, r1
	cmp r1, #0x66
	bne _0800DF62
	movs r7, #3
	b _0800DF72
_0800DF62:
	mov r0, sb
	cmp r0, #0x65
	beq _0800DF6C
	cmp r0, #0x45
	bne _0800DF70
_0800DF6C:
	movs r1, #1
	add r8, r1
_0800DF70:
	movs r7, #2
_0800DF72:
	lsls r0, r4, #0x1f
	lsrs r0, r0, #0x1f
	cmp r0, #0
	beq _0800DF88
	adds r1, r5, #0
	adds r0, r4, #0
	bl __negdf2
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #0x2d
_0800DF88:
	ldr r1, [sp, #0x40]
	strb r0, [r1]
	mov r0, r8
	str r0, [sp]
	mov r1, sl
	str r1, [sp, #4]
	add r0, sp, #0x10
	str r0, [sp, #8]
	add r0, sp, #0x14
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x18]
	adds r2, r5, #0
	adds r1, r4, #0
	adds r3, r7, #0
	bl _dtoa_r
	adds r7, r0, #0
	mov r1, sb
	cmp r1, #0x67
	beq _0800DFB4
	cmp r1, #0x47
	bne _0800DFBC
_0800DFB4:
	movs r0, #1
	ands r6, r0
	cmp r6, #0
	beq _0800E010
_0800DFBC:
	mov r0, r8
	adds r6, r7, r0
	mov r1, sb
	cmp r1, #0x66
	bne _0800DFEC
	ldrb r0, [r7]
	cmp r0, #0x30
	bne _0800DFE6
	ldr r3, _0800E02C @ =0x00000000
	ldr r2, _0800E028 @ =0x00000000
	adds r1, r5, #0
	adds r0, r4, #0
	bl __nedf2
	cmp r0, #0
	beq _0800DFE6
	mov r1, r8
	rsbs r0, r1, #0
	adds r0, #1
	mov r1, sl
	str r0, [r1]
_0800DFE6:
	mov r1, sl
	ldr r0, [r1]
	adds r6, r6, r0
_0800DFEC:
	ldr r3, _0800E02C @ =0x00000000
	ldr r2, _0800E028 @ =0x00000000
	adds r1, r5, #0
	adds r0, r4, #0
	bl __eqdf2
	cmp r0, #0
	bne _0800DFFE
	str r6, [sp, #0x14]
_0800DFFE:
	ldr r0, [sp, #0x14]
	cmp r0, r6
	bhs _0800E010
	movs r1, #0x30
_0800E006:
	strb r1, [r0]
	adds r0, #1
	str r0, [sp, #0x14]
	cmp r0, r6
	blo _0800E006
_0800E010:
	ldr r0, [sp, #0x14]
	subs r0, r0, r7
	ldr r1, [sp, #0x4c]
	str r0, [r1]
	adds r0, r7, #0
	add sp, #0x1c
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0800E028: .4byte 0x00000000
_0800E02C: .4byte 0x00000000

	thumb_func_start exponent
exponent: @ 0x0800E030
	push {r4, r5, r6, r7, lr}
	sub sp, #0x134
	adds r7, r0, #0
	adds r6, r1, #0
	strb r2, [r7]
	adds r5, r7, #1
	cmp r6, #0
	bge _0800E046
	rsbs r6, r6, #0
	movs r0, #0x2d
	b _0800E048
_0800E046:
	movs r0, #0x2b
_0800E048:
	strb r0, [r7, #1]
	adds r5, #1
	add r4, sp, #0x134
	cmp r6, #9
	ble _0800E08A
_0800E052:
	subs r4, #1
	adds r0, r6, #0
	movs r1, #0xa
	bl __modsi3
	adds r0, #0x30
	strb r0, [r4]
	adds r0, r6, #0
	movs r1, #0xa
	bl __divsi3
	adds r6, r0, #0
	cmp r6, #9
	bgt _0800E052
	subs r4, #1
	adds r0, #0x30
	strb r0, [r4]
	add r0, sp, #0x134
	cmp r4, r0
	bhs _0800E098
	adds r1, r0, #0
_0800E07C:
	ldrb r0, [r4]
	strb r0, [r5]
	adds r4, #1
	adds r5, #1
	cmp r4, r1
	blo _0800E07C
	b _0800E098
_0800E08A:
	movs r0, #0x30
	strb r0, [r5]
	adds r5, #1
	adds r0, r6, #0
	adds r0, #0x30
	strb r0, [r5]
	adds r5, #1
_0800E098:
	subs r0, r5, r7
	add sp, #0x134
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start __swsetup
__swsetup: @ 0x0800E0A0
	push {r4, r5, lr}
	adds r4, r0, #0
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _0800E0B0
	ldr r0, _0800E0DC @ =gUnk_02030CDC
	ldr r0, [r0]
	str r0, [r4, #0x54]
_0800E0B0:
	ldr r1, [r4, #0x54]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	bne _0800E0BE
	adds r0, r1, #0
	bl __sinit
_0800E0BE:
	ldrh r1, [r4, #0xc]
	movs r0, #8
	ands r0, r1
	lsls r0, r0, #0x10
	asrs r5, r0, #0x10
	cmp r5, #0
	bne _0800E118
	movs r0, #0x10
	ands r0, r1
	cmp r0, #0
	bne _0800E0E0
	movs r0, #1
	rsbs r0, r0, #0
	b _0800E14A
	.align 2, 0
_0800E0DC: .4byte gUnk_02030CDC
_0800E0E0:
	movs r0, #4
	ands r0, r1
	cmp r0, #0
	beq _0800E110
	ldr r1, [r4, #0x30]
	cmp r1, #0
	beq _0800E0FE
	adds r0, r4, #0
	adds r0, #0x40
	cmp r1, r0
	beq _0800E0FC
	ldr r0, [r4, #0x54]
	bl _free_r
_0800E0FC:
	str r5, [r4, #0x30]
_0800E0FE:
	movs r0, #0x25
	rsbs r0, r0, #0
	ldrh r1, [r4, #0xc]
	ands r0, r1
	movs r1, #0
	strh r0, [r4, #0xc]
	str r1, [r4, #4]
	ldr r0, [r4, #0x10]
	str r0, [r4]
_0800E110:
	movs r0, #8
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
_0800E118:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _0800E124
	adds r0, r4, #0
	bl __smakebuf
_0800E124:
	ldrh r1, [r4, #0xc]
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _0800E13A
	movs r0, #0
	str r0, [r4, #8]
	ldr r0, [r4, #0x14]
	rsbs r0, r0, #0
	str r0, [r4, #0x18]
	b _0800E148
_0800E13A:
	movs r0, #2
	ands r0, r1
	movs r1, #0
	cmp r0, #0
	bne _0800E146
	ldr r1, [r4, #0x14]
_0800E146:
	str r1, [r4, #8]
_0800E148:
	movs r0, #0
_0800E14A:
	pop {r4, r5, pc}

	thumb_func_start quorem
quorem: @ 0x0800E14C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x18
	str r0, [sp]
	str r1, [sp, #4]
	ldr r7, [r1, #0x10]
	ldr r0, [r0, #0x10]
	cmp r0, r7
	bge _0800E168
	movs r0, #0
	b _0800E29C
_0800E168:
	ldr r0, [sp, #4]
	adds r0, #0x14
	mov r8, r0
	subs r7, #1
	lsls r0, r7, #2
	mov r1, r8
	adds r1, r1, r0
	str r1, [sp, #0xc]
	ldr r4, [sp]
	adds r4, #0x14
	adds r5, r4, r0
	ldr r1, [r1]
	adds r1, #1
	ldr r2, [r5]
	mov sl, r2
	mov r0, sl
	bl __udivsi3
	str r0, [sp, #8]
	mov r3, r8
	str r3, [sp, #0x14]
	str r4, [sp, #0x10]
	cmp r0, #0
	beq _0800E212
	movs r6, #0
	mov sb, r6
	ldr r0, _0800E1FC @ =0x0000FFFF
	mov ip, r0
_0800E1A0:
	mov r2, r8
	adds r2, #4
	mov r8, r2
	subs r2, #4
	ldm r2!, {r1}
	adds r0, r1, #0
	mov r3, ip
	ands r0, r3
	ldr r2, [sp, #8]
	muls r0, r2, r0
	mov r3, sb
	adds r2, r0, r3
	lsrs r0, r1, #0x10
	ldr r3, [sp, #8]
	adds r1, r0, #0
	muls r1, r3, r1
	lsrs r0, r2, #0x10
	adds r3, r1, r0
	lsrs r0, r3, #0x10
	mov sb, r0
	ldr r0, [r4]
	mov r1, ip
	ands r0, r1
	ands r2, r1
	subs r0, r0, r2
	adds r2, r0, r6
	asrs r6, r2, #0x10
	ldr r0, [r4]
	lsrs r1, r0, #0x10
	mov r0, ip
	ands r3, r0
	subs r1, r1, r3
	adds r0, r1, r6
	asrs r6, r0, #0x10
	strh r0, [r4]
	strh r2, [r4, #2]
	adds r4, #4
	ldr r1, [sp, #0xc]
	cmp r8, r1
	bls _0800E1A0
	mov r2, sl
	cmp r2, #0
	bne _0800E212
	ldr r4, [sp, #0x10]
	b _0800E202
	.align 2, 0
_0800E1FC: .4byte 0x0000FFFF
_0800E200:
	subs r7, #1
_0800E202:
	subs r5, #4
	cmp r5, r4
	bls _0800E20E
	ldr r0, [r5]
	cmp r0, #0
	beq _0800E200
_0800E20E:
	ldr r3, [sp]
	str r7, [r3, #0x10]
_0800E212:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl __mcmp
	cmp r0, #0
	blt _0800E29A
	ldr r0, [sp, #8]
	adds r0, #1
	str r0, [sp, #8]
	movs r6, #0
	mov sb, r6
	ldr r4, [sp, #0x10]
	ldr r1, [sp, #0x14]
	mov r8, r1
	lsls r2, r7, #2
	mov sl, r2
	ldr r5, _0800E284 @ =0x0000FFFF
_0800E234:
	mov r3, r8
	adds r3, #4
	mov r8, r3
	subs r3, #4
	ldm r3!, {r1}
	adds r0, r1, #0
	ands r0, r5
	mov r3, sb
	adds r2, r0, r3
	lsrs r1, r1, #0x10
	lsrs r0, r2, #0x10
	adds r3, r1, r0
	lsrs r0, r3, #0x10
	mov sb, r0
	ldr r1, [r4]
	adds r0, r1, #0
	ands r0, r5
	ands r2, r5
	subs r0, r0, r2
	adds r2, r0, r6
	asrs r6, r2, #0x10
	lsrs r1, r1, #0x10
	ands r3, r5
	subs r1, r1, r3
	adds r0, r1, r6
	asrs r6, r0, #0x10
	strh r0, [r4]
	strh r2, [r4, #2]
	adds r4, #4
	ldr r1, [sp, #0xc]
	cmp r8, r1
	bls _0800E234
	ldr r4, [sp, #0x10]
	mov r2, sl
	adds r5, r4, r2
	ldr r0, [r5]
	cmp r0, #0
	bne _0800E29A
	b _0800E28A
	.align 2, 0
_0800E284: .4byte 0x0000FFFF
_0800E288:
	subs r7, #1
_0800E28A:
	subs r5, #4
	cmp r5, r4
	bls _0800E296
	ldr r0, [r5]
	cmp r0, #0
	beq _0800E288
_0800E296:
	ldr r3, [sp]
	str r7, [r3, #0x10]
_0800E29A:
	ldr r0, [sp, #8]
_0800E29C:
	add sp, #0x18
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start _dtoa_r
_dtoa_r: @ 0x0800E2A8
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x84
	mov sl, r0
	str r3, [sp, #0xc]
	ldr r4, [sp, #0xac]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	ldr r2, [r0, #0x40]
	cmp r2, #0
	beq _0800E2E0
	ldr r0, [r0, #0x44]
	str r0, [r2, #4]
	mov r0, sl
	ldr r1, [r0, #0x44]
	movs r0, #1
	lsls r0, r1
	str r0, [r2, #8]
	mov r0, sl
	adds r1, r2, #0
	bl _Bfree
	movs r0, #0
	mov r1, sl
	str r0, [r1, #0x40]
_0800E2E0:
	movs r0, #0x80
	lsls r0, r0, #0x18
	ldr r1, [sp, #0x40]
	ands r0, r1
	cmp r0, #0
	beq _0800E2FC
	movs r0, #1
	str r0, [r4]
	ldr r0, _0800E2F8 @ =0x7FFFFFFF
	ands r1, r0
	str r1, [sp, #0x40]
	b _0800E2FE
	.align 2, 0
_0800E2F8: .4byte 0x7FFFFFFF
_0800E2FC:
	str r0, [r4]
_0800E2FE:
	ldr r1, _0800E340 @ =0x7FF00000
	ldr r2, [sp, #0x40]
	adds r0, r2, #0
	ands r0, r1
	cmp r0, r1
	bne _0800E354
	ldr r0, _0800E344 @ =0x0000270F
	ldr r3, [sp, #0xa8]
	str r0, [r3]
	ldr r0, _0800E348 @ =gUnk_0808E440
	mov sb, r0
	ldr r1, [sp, #0x44]
	cmp r1, #0
	bne _0800E326
	ldr r0, _0800E34C @ =0x000FFFFF
	ands r2, r0
	cmp r2, #0
	bne _0800E326
	ldr r2, _0800E350 @ =gUnk_0808E434
	mov sb, r2
_0800E326:
	ldr r3, [sp, #0xb0]
	cmp r3, #0
	beq _0800E378
	mov r1, sb
	ldrb r0, [r1, #3]
	adds r1, #3
	cmp r0, #0
	beq _0800E338
	adds r1, #5
_0800E338:
	ldr r2, [sp, #0xb0]
	str r1, [r2]
	b _0800E378
	.align 2, 0
_0800E340: .4byte 0x7FF00000
_0800E344: .4byte 0x0000270F
_0800E348: .4byte gUnk_0808E440
_0800E34C: .4byte 0x000FFFFF
_0800E350: .4byte gUnk_0808E434
_0800E354:
	ldr r3, _0800E384 @ =0x00000000
	ldr r2, _0800E380 @ =0x00000000
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __eqdf2
	cmp r0, #0
	bne _0800E38C
	movs r0, #1
	ldr r3, [sp, #0xa8]
	str r0, [r3]
	ldr r0, _0800E388 @ =gUnk_0808E444
	mov sb, r0
	ldr r1, [sp, #0xb0]
	cmp r1, #0
	beq _0800E378
	adds r0, #1
	str r0, [r1]
_0800E378:
	mov r0, sb
	bl _0800EF92
	.align 2, 0
_0800E380: .4byte 0x00000000
_0800E384: .4byte 0x00000000
_0800E388: .4byte gUnk_0808E444
_0800E38C:
	add r0, sp, #8
	str r0, [sp]
	mov r0, sl
	ldr r1, [sp, #0x40]
	ldr r2, [sp, #0x44]
	add r3, sp, #4
	bl _d2b
	str r0, [sp, #0x5c]
	ldr r2, [sp, #0x40]
	lsls r0, r2, #1
	lsrs r0, r0, #0x15
	mov r8, r0
	cmp r0, #0
	beq _0800E3DC
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	str r0, [sp, #0x48]
	str r1, [sp, #0x4c]
	ldr r0, _0800E3D0 @ =0x000FFFFF
	ldr r1, [sp, #0x48]
	ands r1, r0
	str r1, [sp, #0x48]
	ldr r0, _0800E3D4 @ =0x3FF00000
	adds r2, r1, #0
	orrs r2, r0
	str r2, [sp, #0x48]
	ldr r3, _0800E3D8 @ =0xFFFFFC01
	add r8, r3
	movs r0, #0
	str r0, [sp, #0x58]
	ldr r6, [sp, #8]
	b _0800E43C
	.align 2, 0
_0800E3D0: .4byte 0x000FFFFF
_0800E3D4: .4byte 0x3FF00000
_0800E3D8: .4byte 0xFFFFFC01
_0800E3DC:
	ldr r1, [sp, #8]
	ldr r0, [sp, #4]
	adds r2, r1, r0
	ldr r3, _0800E404 @ =0x00000432
	adds r3, r3, r2
	mov r8, r3
	adds r6, r1, #0
	cmp r3, #0x20
	ble _0800E40C
	movs r0, #0x40
	subs r0, r0, r3
	ldr r4, [sp, #0x40]
	lsls r4, r0
	ldr r1, _0800E408 @ =0x00000412
	adds r0, r2, r1
	ldr r2, [sp, #0x44]
	lsrs r2, r0
	adds r0, r2, #0
	orrs r4, r0
	b _0800E416
	.align 2, 0
_0800E404: .4byte 0x00000432
_0800E408: .4byte 0x00000412
_0800E40C:
	movs r0, #0x20
	mov r3, r8
	subs r0, r0, r3
	ldr r4, [sp, #0x44]
	lsls r4, r0
_0800E416:
	adds r0, r4, #0
	bl __floatsidf
	cmp r4, #0
	bge _0800E428
	ldr r3, _0800E4EC @ =0x00000000
	ldr r2, _0800E4E8 @ =0x41F00000
	bl __adddf3
_0800E428:
	str r0, [sp, #0x48]
	str r1, [sp, #0x4c]
	ldr r1, _0800E4F0 @ =0xFE100000
	ldr r0, [sp, #0x48]
	adds r1, r0, r1
	str r1, [sp, #0x48]
	ldr r2, _0800E4F4 @ =0xFFFFFBCD
	add r8, r2
	movs r3, #1
	str r3, [sp, #0x58]
_0800E43C:
	ldr r2, _0800E4F8 @ =0x3FF80000
	ldr r3, _0800E4FC @ =0x00000000
	ldr r0, [sp, #0x48]
	ldr r1, [sp, #0x4c]
	bl __subdf3
	ldr r2, _0800E500 @ =0x3FD287A7
	ldr r3, _0800E504 @ =0x636F4361
	bl __muldf3
	ldr r2, _0800E508 @ =0x3FC68A28
	ldr r3, _0800E50C @ =0x8B60C8B3
	bl __adddf3
	adds r5, r1, #0
	adds r4, r0, #0
	mov r0, r8
	bl __floatsidf
	ldr r2, _0800E510 @ =0x3FD34413
	ldr r3, _0800E514 @ =0x509F79FB
	bl __muldf3
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl __adddf3
	str r0, [sp, #0x6c]
	str r1, [sp, #0x70]
	bl __fixdfsi
	str r0, [sp, #0x24]
	ldr r2, _0800E518 @ =0x00000000
	ldr r3, _0800E51C @ =0x00000000
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	bl __ltdf2
	cmp r0, #0
	bge _0800E4AC
	ldr r0, [sp, #0x24]
	bl __floatsidf
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	bl __nedf2
	cmp r0, #0
	beq _0800E4AC
	ldr r0, [sp, #0x24]
	subs r0, #1
	str r0, [sp, #0x24]
_0800E4AC:
	movs r1, #1
	str r1, [sp, #0x2c]
	ldr r2, [sp, #0x24]
	cmp r2, #0x16
	bhi _0800E4D6
	ldr r1, _0800E520 @ =gUnk_0808E494
	lsls r0, r2, #3
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r3, [r0, #4]
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __ltdf2
	cmp r0, #0
	bge _0800E4D2
	ldr r3, [sp, #0x24]
	subs r3, #1
	str r3, [sp, #0x24]
_0800E4D2:
	movs r0, #0
	str r0, [sp, #0x2c]
_0800E4D6:
	mov r1, r8
	subs r0, r6, r1
	subs r4, r0, #1
	cmp r4, #0
	blt _0800E524
	movs r2, #0
	str r2, [sp, #0x10]
	str r4, [sp, #0x34]
	b _0800E52C
	.align 2, 0
_0800E4E8: .4byte 0x41F00000
_0800E4EC: .4byte 0x00000000
_0800E4F0: .4byte 0xFE100000
_0800E4F4: .4byte 0xFFFFFBCD
_0800E4F8: .4byte 0x3FF80000
_0800E4FC: .4byte 0x00000000
_0800E500: .4byte 0x3FD287A7
_0800E504: .4byte 0x636F4361
_0800E508: .4byte 0x3FC68A28
_0800E50C: .4byte 0x8B60C8B3
_0800E510: .4byte 0x3FD34413
_0800E514: .4byte 0x509F79FB
_0800E518: .4byte 0x00000000
_0800E51C: .4byte 0x00000000
_0800E520: .4byte gUnk_0808E494
_0800E524:
	rsbs r4, r4, #0
	str r4, [sp, #0x10]
	movs r3, #0
	str r3, [sp, #0x34]
_0800E52C:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	blt _0800E540
	movs r1, #0
	str r1, [sp, #0x14]
	str r0, [sp, #0x38]
	ldr r2, [sp, #0x34]
	adds r2, r2, r0
	str r2, [sp, #0x34]
	b _0800E550
_0800E540:
	ldr r3, [sp, #0x10]
	ldr r0, [sp, #0x24]
	subs r3, r3, r0
	str r3, [sp, #0x10]
	rsbs r1, r0, #0
	str r1, [sp, #0x14]
	movs r2, #0
	str r2, [sp, #0x38]
_0800E550:
	ldr r3, [sp, #0xc]
	cmp r3, #9
	bls _0800E55A
	movs r0, #0
	str r0, [sp, #0xc]
_0800E55A:
	movs r5, #1
	ldr r1, [sp, #0xc]
	cmp r1, #5
	ble _0800E568
	subs r1, #4
	str r1, [sp, #0xc]
	movs r5, #0
_0800E568:
	movs r2, #1
	str r2, [sp, #0x30]
	ldr r3, [sp, #0xc]
	cmp r3, #5
	bhi _0800E5E2
	lsls r0, r3, #2
	ldr r1, _0800E57C @ =_0800E580
	adds r0, r0, r1
	ldr r0, [r0]
	mov pc, r0
	.align 2, 0
_0800E57C: .4byte _0800E580
_0800E580: @ jump table
	.4byte _0800E598 @ case 0
	.4byte _0800E598 @ case 1
	.4byte _0800E5AA @ case 2
	.4byte _0800E5C6 @ case 3
	.4byte _0800E5AE @ case 4
	.4byte _0800E5CA @ case 5
_0800E598:
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [sp, #0x18]
	str r0, [sp, #0x20]
	movs r1, #0x12
	mov r8, r1
	movs r2, #0
	str r2, [sp, #0xa4]
	b _0800E5E2
_0800E5AA:
	movs r3, #0
	str r3, [sp, #0x30]
_0800E5AE:
	ldr r0, [sp, #0xa4]
	cmp r0, #0
	bgt _0800E5B8
	movs r1, #1
	str r1, [sp, #0xa4]
_0800E5B8:
	ldr r2, [sp, #0xa4]
	mov r8, r2
	mov r3, r8
	str r3, [sp, #0x20]
	mov r0, r8
	str r0, [sp, #0x18]
	b _0800E5E2
_0800E5C6:
	movs r1, #0
	str r1, [sp, #0x30]
_0800E5CA:
	ldr r2, [sp, #0xa4]
	ldr r3, [sp, #0x24]
	adds r0, r2, r3
	adds r1, r0, #1
	mov r8, r1
	mov r2, r8
	str r2, [sp, #0x18]
	str r0, [sp, #0x20]
	cmp r1, #0
	bgt _0800E5E2
	movs r3, #1
	mov r8, r3
_0800E5E2:
	movs r4, #4
	movs r0, #0
	mov r1, sl
	str r0, [r1, #0x44]
	mov r2, r8
	cmp r2, #0x17
	bls _0800E602
	movs r1, #0
_0800E5F2:
	adds r1, #1
	lsls r4, r4, #1
	adds r0, r4, #0
	adds r0, #0x14
	cmp r0, r8
	bls _0800E5F2
	mov r3, sl
	str r1, [r3, #0x44]
_0800E602:
	mov r0, sl
	ldr r1, [r0, #0x44]
	bl _Balloc
	mov r1, sl
	str r0, [r1, #0x40]
	str r0, [sp, #0x74]
	mov sb, r0
	ldr r2, [sp, #0x18]
	cmp r2, #0xe
	bls _0800E61A
	b _0800E98C
_0800E61A:
	cmp r5, #0
	bne _0800E620
	b _0800E98C
_0800E620:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	str r0, [sp, #0x78]
	str r1, [sp, #0x7c]
	str r0, [sp, #0x48]
	str r1, [sp, #0x4c]
	ldr r1, [sp, #0x24]
	str r1, [sp, #0x28]
	str r2, [sp, #0x1c]
	movs r7, #2
	cmp r1, #0
	ble _0800E6B0
	ldr r0, _0800E6A8 @ =gUnk_0808E494
	movs r2, #0xf
	ands r1, r2
	lsls r1, r1, #3
	adds r3, r1, r0
	ldr r0, [r3]
	ldr r1, [r3, #4]
	str r0, [sp, #0x6c]
	str r1, [sp, #0x70]
	ldr r1, [sp, #0x24]
	asrs r4, r1, #4
	movs r0, #0x10
	ands r0, r4
	cmp r0, #0
	beq _0800E66C
	ands r4, r2
	ldr r0, _0800E6AC @ =gUnk_0808E55C
	ldr r2, [r0, #0x20]
	ldr r3, [r0, #0x24]
	ldr r0, [sp, #0x78]
	ldr r1, [sp, #0x7c]
	bl __divdf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	movs r7, #3
_0800E66C:
	cmp r4, #0
	beq _0800E694
	ldr r5, _0800E6AC @ =gUnk_0808E55C
_0800E672:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _0800E68C
	adds r7, #1
	ldr r2, [r5]
	ldr r3, [r5, #4]
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	bl __muldf3
	str r0, [sp, #0x6c]
	str r1, [sp, #0x70]
_0800E68C:
	asrs r4, r4, #1
	adds r5, #8
	cmp r4, #0
	bne _0800E672
_0800E694:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl __divdf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	b _0800E6FC
	.align 2, 0
_0800E6A8: .4byte gUnk_0808E494
_0800E6AC: .4byte gUnk_0808E55C
_0800E6B0:
	ldr r2, [sp, #0x24]
	rsbs r6, r2, #0
	cmp r6, #0
	beq _0800E6FC
	ldr r1, _0800E7A4 @ =gUnk_0808E494
	movs r0, #0xf
	ands r0, r6
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	ldr r2, [sp, #0x78]
	ldr r3, [sp, #0x7c]
	bl __muldf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	asrs r4, r6, #4
	cmp r4, #0
	beq _0800E6FC
	ldr r5, _0800E7A8 @ =gUnk_0808E55C
_0800E6DA:
	movs r0, #1
	ands r0, r4
	cmp r0, #0
	beq _0800E6F4
	adds r7, #1
	ldr r0, [r5]
	ldr r1, [r5, #4]
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	bl __muldf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_0800E6F4:
	asrs r4, r4, #1
	adds r5, #8
	cmp r4, #0
	bne _0800E6DA
_0800E6FC:
	ldr r3, [sp, #0x2c]
	cmp r3, #0
	beq _0800E73A
	ldr r2, _0800E7AC @ =0x3FF00000
	ldr r3, _0800E7B0 @ =0x00000000
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __ltdf2
	cmp r0, #0
	bge _0800E73A
	ldr r0, [sp, #0x18]
	cmp r0, #0
	ble _0800E73A
	ldr r1, [sp, #0x20]
	cmp r1, #0
	bgt _0800E720
	b _0800E978
_0800E720:
	str r1, [sp, #0x18]
	ldr r2, [sp, #0x24]
	subs r2, #1
	str r2, [sp, #0x24]
	ldr r0, _0800E7B4 @ =0x40240000
	ldr r1, _0800E7B8 @ =0x00000000
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	bl __muldf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	adds r7, #1
_0800E73A:
	adds r0, r7, #0
	bl __floatsidf
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	bl __muldf3
	ldr r2, _0800E7BC @ =0x401C0000
	ldr r3, _0800E7C0 @ =0x00000000
	bl __adddf3
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	ldr r0, _0800E7C4 @ =0xFCC00000
	ldr r3, [sp, #0x50]
	adds r0, r3, r0
	str r0, [sp, #0x50]
	ldr r1, [sp, #0x18]
	cmp r1, #0
	bne _0800E7D0
	movs r2, #0
	str r2, [sp, #0x64]
	movs r3, #0
	str r3, [sp, #0x68]
	ldr r2, _0800E7C8 @ =0x40140000
	ldr r3, _0800E7CC @ =0x00000000
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __subdf3
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __gtdf2
	cmp r0, #0
	ble _0800E788
	b _0800ED02
_0800E788:
	ldr r0, [sp, #0x50]
	ldr r1, [sp, #0x54]
	bl __negdf2
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl __ltdf2
	cmp r0, #0
	bge _0800E7A2
	b _0800ECFA
_0800E7A2:
	b _0800E978
	.align 2, 0
_0800E7A4: .4byte gUnk_0808E494
_0800E7A8: .4byte gUnk_0808E55C
_0800E7AC: .4byte 0x3FF00000
_0800E7B0: .4byte 0x00000000
_0800E7B4: .4byte 0x40240000
_0800E7B8: .4byte 0x00000000
_0800E7BC: .4byte 0x401C0000
_0800E7C0: .4byte 0x00000000
_0800E7C4: .4byte 0xFCC00000
_0800E7C8: .4byte 0x40140000
_0800E7CC: .4byte 0x00000000
_0800E7D0:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _0800E8A0
	ldr r1, _0800E800 @ =gUnk_0808E494
	ldr r0, [sp, #0x18]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r2, [r0]
	ldr r3, [r0, #4]
	ldr r0, _0800E804 @ =0x3FE00000
	ldr r1, _0800E808 @ =0x00000000
	bl __divdf3
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __subdf3
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	movs r1, #0
	mov r8, r1
	b _0800E82C
	.align 2, 0
_0800E800: .4byte gUnk_0808E494
_0800E804: .4byte 0x3FE00000
_0800E808: .4byte 0x00000000
_0800E80C:
	ldr r1, _0800E894 @ =0x00000000
	ldr r0, _0800E890 @ =0x40240000
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __muldf3
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	ldr r1, _0800E894 @ =0x00000000
	ldr r0, _0800E890 @ =0x40240000
	adds r3, r5, #0
	adds r2, r4, #0
	bl __muldf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_0800E82C:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __fixdfsi
	adds r6, r0, #0
	bl __floatsidf
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __subdf3
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r6, #0
	adds r0, #0x30
	mov r2, sb
	strb r0, [r2]
	movs r3, #1
	add sb, r3
	adds r1, r5, #0
	adds r0, r4, #0
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __ltdf2
	cmp r0, #0
	bge _0800E868
	b _0800EF72
_0800E868:
	ldr r0, _0800E898 @ =0x3FF00000
	ldr r1, _0800E89C @ =0x00000000
	adds r3, r5, #0
	adds r2, r4, #0
	bl __subdf3
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __ltdf2
	cmp r0, #0
	bge _0800E882
	b _0800EA8C
_0800E882:
	movs r0, #1
	add r8, r0
	ldr r1, [sp, #0x18]
	cmp r8, r1
	blt _0800E80C
	b _0800E978
	.align 2, 0
_0800E890: .4byte 0x40240000
_0800E894: .4byte 0x00000000
_0800E898: .4byte 0x3FF00000
_0800E89C: .4byte 0x00000000
_0800E8A0:
	ldr r1, _0800E8C0 @ =gUnk_0808E494
	ldr r0, [sp, #0x18]
	subs r0, #1
	lsls r0, r0, #3
	adds r0, r0, r1
	ldr r1, [r0, #4]
	ldr r0, [r0]
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __muldf3
	str r0, [sp, #0x50]
	str r1, [sp, #0x54]
	movs r2, #1
	mov r8, r2
	b _0800E8D8
	.align 2, 0
_0800E8C0: .4byte gUnk_0808E494
_0800E8C4:
	movs r3, #1
	add r8, r3
	ldr r1, _0800E96C @ =0x00000000
	ldr r0, _0800E968 @ =0x40240000
	adds r3, r5, #0
	adds r2, r4, #0
	bl __muldf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_0800E8D8:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __fixdfsi
	adds r6, r0, #0
	bl __floatsidf
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __subdf3
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r6, #0
	adds r0, #0x30
	mov r1, sb
	strb r0, [r1]
	movs r2, #1
	add sb, r2
	ldr r3, [sp, #0x18]
	cmp r8, r3
	bne _0800E8C4
	ldr r6, _0800E970 @ =0x3FE00000
	ldr r7, _0800E974 @ =0x00000000
	adds r1, r7, #0
	adds r0, r6, #0
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __adddf3
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl __gtdf2
	cmp r0, #0
	ble _0800E92A
	b _0800EA8C
_0800E92A:
	adds r1, r7, #0
	adds r0, r6, #0
	ldr r2, [sp, #0x50]
	ldr r3, [sp, #0x54]
	bl __subdf3
	adds r3, r1, #0
	adds r2, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	bl __ltdf2
	cmp r0, #0
	bge _0800E978
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	ldrb r1, [r1]
	cmp r1, #0x30
	beq _0800E956
	b _0800EAB2
_0800E956:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	mov r3, sb
	ldrb r3, [r3]
	cmp r3, #0x30
	beq _0800E956
	b _0800EAB2
	.align 2, 0
_0800E968: .4byte 0x40240000
_0800E96C: .4byte 0x00000000
_0800E970: .4byte 0x3FE00000
_0800E974: .4byte 0x00000000
_0800E978:
	ldr r1, [sp, #0x74]
	mov sb, r1
	ldr r2, [sp, #0x48]
	ldr r3, [sp, #0x4c]
	str r2, [sp, #0x40]
	str r3, [sp, #0x44]
	ldr r3, [sp, #0x28]
	str r3, [sp, #0x24]
	ldr r0, [sp, #0x1c]
	str r0, [sp, #0x18]
_0800E98C:
	ldr r0, [sp, #4]
	cmp r0, #0
	bge _0800E994
	b _0800EAC8
_0800E994:
	ldr r1, [sp, #0x24]
	cmp r1, #0xe
	ble _0800E99C
	b _0800EAC8
_0800E99C:
	ldr r1, _0800E9E8 @ =gUnk_0808E494
	ldr r2, [sp, #0x24]
	lsls r0, r2, #3
	adds r0, r0, r1
	ldr r1, [r0]
	ldr r2, [r0, #4]
	str r1, [sp, #0x6c]
	str r2, [sp, #0x70]
	ldr r2, [sp, #0xa4]
	cmp r2, #0
	bge _0800E9F4
	ldr r3, [sp, #0x18]
	cmp r3, #0
	bgt _0800E9F4
	movs r0, #0
	str r0, [sp, #0x64]
	movs r1, #0
	str r1, [sp, #0x68]
	cmp r3, #0
	bge _0800E9C6
	b _0800ECFA
_0800E9C6:
	ldr r2, _0800E9EC @ =0x40140000
	ldr r3, _0800E9F0 @ =0x00000000
	ldr r0, [sp, #0x6c]
	ldr r1, [sp, #0x70]
	bl __muldf3
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __ledf2
	cmp r0, #0
	bgt _0800E9E4
	b _0800ECFA
_0800E9E4:
	b _0800ED02
	.align 2, 0
_0800E9E8: .4byte gUnk_0808E494
_0800E9EC: .4byte 0x40140000
_0800E9F0: .4byte 0x00000000
_0800E9F4:
	movs r2, #1
	mov r8, r2
	b _0800EA18
_0800E9FA:
	ldr r1, _0800EABC @ =0x00000000
	ldr r0, _0800EAB8 @ =0x40240000
	bl __muldf3
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	ldr r2, _0800EAC0 @ =0x00000000
	ldr r3, _0800EAC4 @ =0x00000000
	bl __eqdf2
	cmp r0, #0
	bne _0800EA14
	b _0800EF72
_0800EA14:
	movs r3, #1
	add r8, r3
_0800EA18:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl __divdf3
	bl __fixdfsi
	adds r6, r0, #0
	bl __floatsidf
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl __muldf3
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	bl __subdf3
	adds r3, r1, #0
	adds r2, r0, #0
	adds r0, r6, #0
	adds r0, #0x30
	mov r1, sb
	strb r0, [r1]
	movs r0, #1
	add sb, r0
	ldr r1, [sp, #0x18]
	cmp r8, r1
	bne _0800E9FA
	adds r1, r3, #0
	adds r0, r2, #0
	bl __adddf3
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl __gtdf2
	cmp r0, #0
	bgt _0800EA8C
	adds r1, r5, #0
	adds r0, r4, #0
	ldr r2, [sp, #0x6c]
	ldr r3, [sp, #0x70]
	bl __eqdf2
	cmp r0, #0
	beq _0800EA82
	b _0800EF72
_0800EA82:
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	bne _0800EA8C
	b _0800EF72
_0800EA8C:
	movs r0, #0x30
_0800EA8E:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	mov r3, sb
	ldrb r3, [r3]
	cmp r3, #0x39
	bne _0800EAAA
	ldr r1, [sp, #0x74]
	cmp sb, r1
	bne _0800EA8E
	ldr r2, [sp, #0x24]
	adds r2, #1
	str r2, [sp, #0x24]
	strb r0, [r1]
_0800EAAA:
	mov r3, sb
	ldrb r0, [r3]
	adds r0, #1
	strb r0, [r3]
_0800EAB2:
	movs r0, #1
	add sb, r0
	b _0800EF72
	.align 2, 0
_0800EAB8: .4byte 0x40240000
_0800EABC: .4byte 0x00000000
_0800EAC0: .4byte 0x00000000
_0800EAC4: .4byte 0x00000000
_0800EAC8:
	ldr r5, [sp, #0x10]
	ldr r6, [sp, #0x14]
	movs r1, #0
	str r1, [sp, #0x60]
	movs r2, #0
	str r2, [sp, #0x64]
	ldr r3, [sp, #0x30]
	cmp r3, #0
	beq _0800EB3E
	ldr r1, [sp, #0xc]
	cmp r1, #1
	bgt _0800EAFC
	ldr r2, [sp, #0x58]
	cmp r2, #0
	beq _0800EAF4
	ldr r3, _0800EAF0 @ =0x00000433
	adds r3, r3, r0
	mov r8, r3
	b _0800EB28
	.align 2, 0
_0800EAF0: .4byte 0x00000433
_0800EAF4:
	ldr r1, [sp, #8]
	movs r0, #0x36
	subs r0, r0, r1
	b _0800EB26
_0800EAFC:
	ldr r4, [sp, #0x18]
	subs r4, #1
	ldr r0, [sp, #0x14]
	cmp r0, r4
	blt _0800EB0A
	subs r6, r0, r4
	b _0800EB1A
_0800EB0A:
	ldr r1, [sp, #0x14]
	subs r4, r4, r1
	ldr r2, [sp, #0x38]
	adds r2, r2, r4
	str r2, [sp, #0x38]
	adds r1, r1, r4
	str r1, [sp, #0x14]
	movs r6, #0
_0800EB1A:
	ldr r3, [sp, #0x18]
	mov r8, r3
	cmp r3, #0
	bge _0800EB28
	subs r5, r5, r3
	movs r0, #0
_0800EB26:
	mov r8, r0
_0800EB28:
	ldr r1, [sp, #0x10]
	add r1, r8
	str r1, [sp, #0x10]
	ldr r2, [sp, #0x34]
	add r2, r8
	str r2, [sp, #0x34]
	mov r0, sl
	movs r1, #1
	bl _i2b
	str r0, [sp, #0x64]
_0800EB3E:
	cmp r5, #0
	ble _0800EB60
	ldr r3, [sp, #0x34]
	cmp r3, #0
	ble _0800EB60
	mov r8, r3
	cmp r8, r5
	ble _0800EB50
	mov r8, r5
_0800EB50:
	ldr r0, [sp, #0x10]
	mov r1, r8
	subs r0, r0, r1
	str r0, [sp, #0x10]
	subs r5, r5, r1
	ldr r2, [sp, #0x34]
	subs r2, r2, r1
	str r2, [sp, #0x34]
_0800EB60:
	ldr r3, [sp, #0x14]
	cmp r3, #0
	ble _0800EBAE
	ldr r0, [sp, #0x30]
	cmp r0, #0
	beq _0800EBA2
	cmp r6, #0
	ble _0800EB92
	mov r0, sl
	ldr r1, [sp, #0x64]
	adds r2, r6, #0
	bl _pow5mult
	str r0, [sp, #0x64]
	mov r0, sl
	ldr r1, [sp, #0x64]
	ldr r2, [sp, #0x5c]
	bl _multiply
	adds r4, r0, #0
	mov r0, sl
	ldr r1, [sp, #0x5c]
	bl _Bfree
	str r4, [sp, #0x5c]
_0800EB92:
	ldr r1, [sp, #0x14]
	subs r4, r1, r6
	cmp r4, #0
	beq _0800EBAE
	mov r0, sl
	ldr r1, [sp, #0x5c]
	adds r2, r4, #0
	b _0800EBA8
_0800EBA2:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	ldr r2, [sp, #0x14]
_0800EBA8:
	bl _pow5mult
	str r0, [sp, #0x5c]
_0800EBAE:
	mov r0, sl
	movs r1, #1
	bl _i2b
	str r0, [sp, #0x68]
	ldr r2, [sp, #0x38]
	cmp r2, #0
	ble _0800EBC8
	mov r0, sl
	ldr r1, [sp, #0x68]
	bl _pow5mult
	str r0, [sp, #0x68]
_0800EBC8:
	ldr r3, [sp, #0xc]
	cmp r3, #1
	bgt _0800EC04
	ldr r0, [sp, #0x44]
	cmp r0, #0
	bne _0800EC00
	ldr r0, _0800EBF8 @ =0x000FFFFF
	ldr r1, [sp, #0x40]
	ands r0, r1
	cmp r0, #0
	bne _0800EC00
	ldr r0, _0800EBFC @ =0x7FF00000
	ands r1, r0
	cmp r1, #0
	beq _0800EC00
	ldr r1, [sp, #0x10]
	adds r1, #1
	str r1, [sp, #0x10]
	ldr r2, [sp, #0x34]
	adds r2, #1
	str r2, [sp, #0x34]
	movs r3, #1
	str r3, [sp, #0x3c]
	b _0800EC04
	.align 2, 0
_0800EBF8: .4byte 0x000FFFFF
_0800EBFC: .4byte 0x7FF00000
_0800EC00:
	movs r0, #0
	str r0, [sp, #0x3c]
_0800EC04:
	ldr r1, [sp, #0x38]
	cmp r1, #0
	beq _0800EC30
	ldr r2, [sp, #0x68]
	ldr r1, [r2, #0x10]
	subs r1, #1
	lsls r1, r1, #2
	adds r0, r2, #0
	adds r0, #0x14
	adds r0, r0, r1
	ldr r0, [r0]
	bl _hi0bits
	ldr r1, [sp, #0x34]
	adds r1, #0x20
	subs r1, r1, r0
	mov r8, r1
	movs r0, #0x1f
	mov r3, r8
	ands r3, r0
	mov r8, r3
	b _0800EC3E
_0800EC30:
	ldr r0, [sp, #0x34]
	adds r0, #1
	mov r8, r0
	movs r0, #0x1f
	mov r1, r8
	ands r1, r0
	mov r8, r1
_0800EC3E:
	mov r2, r8
	cmp r2, #0
	beq _0800EC4A
	movs r0, #0x20
	subs r2, r0, r2
	mov r8, r2
_0800EC4A:
	mov r3, r8
	cmp r3, #4
	ble _0800EC56
	movs r0, #4
	rsbs r0, r0, #0
	b _0800EC5E
_0800EC56:
	mov r3, r8
	cmp r3, #3
	bgt _0800EC6E
	movs r0, #0x1c
_0800EC5E:
	add r8, r0
	ldr r1, [sp, #0x10]
	add r1, r8
	str r1, [sp, #0x10]
	add r5, r8
	ldr r2, [sp, #0x34]
	add r2, r8
	str r2, [sp, #0x34]
_0800EC6E:
	ldr r3, [sp, #0x10]
	cmp r3, #0
	ble _0800EC80
	mov r0, sl
	ldr r1, [sp, #0x5c]
	adds r2, r3, #0
	bl _lshift
	str r0, [sp, #0x5c]
_0800EC80:
	ldr r0, [sp, #0x34]
	cmp r0, #0
	ble _0800EC92
	mov r0, sl
	ldr r1, [sp, #0x68]
	ldr r2, [sp, #0x34]
	bl _lshift
	str r0, [sp, #0x68]
_0800EC92:
	ldr r1, [sp, #0x2c]
	cmp r1, #0
	beq _0800ECD0
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl __mcmp
	cmp r0, #0
	bge _0800ECD0
	ldr r2, [sp, #0x24]
	subs r2, #1
	str r2, [sp, #0x24]
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x5c]
	ldr r3, [sp, #0x30]
	cmp r3, #0
	beq _0800ECCC
	mov r0, sl
	ldr r1, [sp, #0x64]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x64]
_0800ECCC:
	ldr r0, [sp, #0x20]
	str r0, [sp, #0x18]
_0800ECD0:
	ldr r1, [sp, #0x18]
	cmp r1, #0
	bgt _0800ED14
	ldr r2, [sp, #0xc]
	cmp r2, #2
	ble _0800ED14
	cmp r1, #0
	blt _0800ECFA
	mov r0, sl
	ldr r1, [sp, #0x68]
	movs r2, #5
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x68]
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl __mcmp
	cmp r0, #0
	bgt _0800ED02
_0800ECFA:
	ldr r3, [sp, #0xa4]
	mvns r3, r3
	str r3, [sp, #0x24]
	b _0800EF4A
_0800ED02:
	movs r0, #0x31
	mov r1, sb
	strb r0, [r1]
	movs r2, #1
	add sb, r2
	ldr r3, [sp, #0x24]
	adds r3, #1
	str r3, [sp, #0x24]
	b _0800EF4A
_0800ED14:
	ldr r0, [sp, #0x30]
	cmp r0, #0
	bne _0800ED1C
	b _0800EE92
_0800ED1C:
	cmp r5, #0
	ble _0800ED2C
	mov r0, sl
	ldr r1, [sp, #0x64]
	adds r2, r5, #0
	bl _lshift
	str r0, [sp, #0x64]
_0800ED2C:
	ldr r1, [sp, #0x64]
	str r1, [sp, #0x60]
	ldr r2, [sp, #0x3c]
	cmp r2, #0
	beq _0800ED5E
	ldr r1, [r1, #4]
	mov r0, sl
	bl _Balloc
	str r0, [sp, #0x64]
	adds r0, #0xc
	ldr r1, [sp, #0x60]
	adds r1, #0xc
	ldr r3, [sp, #0x60]
	ldr r2, [r3, #0x10]
	lsls r2, r2, #2
	adds r2, #8
	bl memcpy
	mov r0, sl
	ldr r1, [sp, #0x64]
	movs r2, #1
	bl _lshift
	str r0, [sp, #0x64]
_0800ED5E:
	movs r0, #1
	mov r8, r0
	mov r1, r8
	ldr r2, [sp, #0x44]
	ands r2, r1
	str r2, [sp, #0x80]
	b _0800EDB4
_0800ED6C:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x5c]
	ldr r3, [sp, #0x60]
	ldr r0, [sp, #0x64]
	cmp r3, r0
	bne _0800ED94
	mov r0, sl
	ldr r1, [sp, #0x64]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x64]
	str r0, [sp, #0x60]
	b _0800EDB0
_0800ED94:
	mov r0, sl
	ldr r1, [sp, #0x60]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x60]
	mov r0, sl
	ldr r1, [sp, #0x64]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x64]
_0800EDB0:
	movs r1, #1
	add r8, r1
_0800EDB4:
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl quorem
	adds r7, r0, #0
	adds r7, #0x30
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x60]
	bl __mcmp
	adds r4, r0, #0
	mov r0, sl
	ldr r1, [sp, #0x68]
	ldr r2, [sp, #0x64]
	bl __mdiff
	adds r5, r0, #0
	ldr r0, [r5, #0xc]
	cmp r0, #0
	bne _0800EDE8
	ldr r0, [sp, #0x5c]
	adds r1, r5, #0
	bl __mcmp
	adds r6, r0, #0
	b _0800EDEA
_0800EDE8:
	movs r6, #1
_0800EDEA:
	mov r0, sl
	adds r1, r5, #0
	bl _Bfree
	cmp r6, #0
	bne _0800EE16
	ldr r2, [sp, #0xc]
	cmp r2, #0
	bne _0800EE16
	ldr r3, [sp, #0x80]
	cmp r3, #0
	bne _0800EE16
	cmp r7, #0x39
	beq _0800EE68
	cmp r4, #0
	ble _0800EE0C
	adds r7, #1
_0800EE0C:
	mov r0, sb
	strb r7, [r0]
	movs r1, #1
	add sb, r1
	b _0800EF4A
_0800EE16:
	cmp r4, #0
	blt _0800EE2A
	cmp r4, #0
	bne _0800EE60
	ldr r2, [sp, #0xc]
	cmp r2, #0
	bne _0800EE60
	ldr r3, [sp, #0x80]
	cmp r3, #0
	bne _0800EE60
_0800EE2A:
	cmp r6, #0
	ble _0800EE5A
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #1
	bl _lshift
	str r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl __mcmp
	adds r6, r0, #0
	cmp r6, #0
	bgt _0800EE54
	cmp r6, #0
	bne _0800EE5A
	adds r0, r7, #0
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	beq _0800EE5A
_0800EE54:
	adds r7, #1
	cmp r7, #0x3a
	beq _0800EE68
_0800EE5A:
	mov r2, sb
	strb r7, [r2]
	b _0800EF12
_0800EE60:
	cmp r6, #0
	ble _0800EE80
	cmp r7, #0x39
	bne _0800EE74
_0800EE68:
	movs r0, #0x39
	mov r1, sb
	strb r0, [r1]
	movs r2, #1
	add sb, r2
	b _0800EEE8
_0800EE74:
	adds r0, r7, #1
	mov r3, sb
	strb r0, [r3]
	movs r0, #1
	add sb, r0
	b _0800EF4A
_0800EE80:
	mov r1, sb
	strb r7, [r1]
	movs r2, #1
	add sb, r2
	ldr r3, [sp, #0x18]
	cmp r8, r3
	beq _0800EE90
	b _0800ED6C
_0800EE90:
	b _0800EEC4
_0800EE92:
	movs r0, #1
	mov r8, r0
	b _0800EEAA
_0800EE98:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #0xa
	movs r3, #0
	bl _multadd
	str r0, [sp, #0x5c]
	movs r1, #1
	add r8, r1
_0800EEAA:
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl quorem
	adds r7, r0, #0
	adds r7, #0x30
	mov r2, sb
	strb r7, [r2]
	movs r3, #1
	add sb, r3
	ldr r0, [sp, #0x18]
	cmp r8, r0
	blt _0800EE98
_0800EEC4:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	movs r2, #1
	bl _lshift
	str r0, [sp, #0x5c]
	ldr r1, [sp, #0x68]
	bl __mcmp
	adds r4, r0, #0
	cmp r4, #0
	bgt _0800EEE8
	cmp r4, #0
	bne _0800EF2A
	movs r0, #1
	ands r7, r0
	cmp r7, #0
	beq _0800EF2A
_0800EEE8:
	movs r1, #1
	rsbs r1, r1, #0
	add sb, r1
	mov r2, sb
	ldrb r2, [r2]
	cmp r2, #0x39
	bne _0800EF0A
_0800EEF6:
	ldr r3, [sp, #0x74]
	cmp sb, r3
	beq _0800EF18
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	ldrb r1, [r1]
	cmp r1, #0x39
	beq _0800EEF6
_0800EF0A:
	mov r2, sb
	ldrb r0, [r2]
	adds r0, #1
	strb r0, [r2]
_0800EF12:
	movs r3, #1
	add sb, r3
	b _0800EF4A
_0800EF18:
	ldr r0, [sp, #0x24]
	adds r0, #1
	str r0, [sp, #0x24]
	movs r0, #0x31
	ldr r1, [sp, #0x74]
	strb r0, [r1]
	adds r1, #1
	mov sb, r1
	b _0800EF4A
_0800EF2A:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	mov r3, sb
	ldrb r3, [r3]
	cmp r3, #0x30
	bne _0800EF46
_0800EF38:
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
	mov r1, sb
	ldrb r1, [r1]
	cmp r1, #0x30
	beq _0800EF38
_0800EF46:
	movs r2, #1
	add sb, r2
_0800EF4A:
	mov r0, sl
	ldr r1, [sp, #0x68]
	bl _Bfree
	ldr r3, [sp, #0x64]
	cmp r3, #0
	beq _0800EF72
	ldr r0, [sp, #0x60]
	cmp r0, #0
	beq _0800EF6A
	cmp r0, r3
	beq _0800EF6A
	mov r0, sl
	ldr r1, [sp, #0x60]
	bl _Bfree
_0800EF6A:
	mov r0, sl
	ldr r1, [sp, #0x64]
	bl _Bfree
_0800EF72:
	mov r0, sl
	ldr r1, [sp, #0x5c]
	bl _Bfree
	movs r0, #0
	mov r1, sb
	strb r0, [r1]
	ldr r0, [sp, #0x24]
	adds r0, #1
	ldr r2, [sp, #0xa8]
	str r0, [r2]
	ldr r3, [sp, #0xb0]
	cmp r3, #0
	beq _0800EF90
	str r1, [r3]
_0800EF90:
	ldr r0, [sp, #0x74]
_0800EF92:
	add sp, #0x84
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start fflush
fflush: @ 0x0800EFA0
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	cmp r4, #0
	bne _0800EFBC
	ldr r0, _0800EFB4 @ =gUnk_02030CDC
	ldr r0, [r0]
	ldr r1, _0800EFB8 @ =fflush
	bl _fwalk
	b _0800F032
	.align 2, 0
_0800EFB4: .4byte gUnk_02030CDC
_0800EFB8: .4byte fflush
_0800EFBC:
	ldr r0, [r4, #0x54]
	cmp r0, #0
	bne _0800EFC8
	ldr r0, _0800EFFC @ =gUnk_02030CDC
	ldr r0, [r0]
	str r0, [r4, #0x54]
_0800EFC8:
	ldr r1, [r4, #0x54]
	ldr r0, [r1, #0x38]
	cmp r0, #0
	bne _0800EFD6
	adds r0, r1, #0
	bl __sinit
_0800EFD6:
	movs r0, #0xc
	ldrsh r1, [r4, r0]
	movs r0, #8
	ands r0, r1
	cmp r0, #0
	beq _0800F030
	ldr r6, [r4, #0x10]
	cmp r6, #0
	beq _0800F030
	ldr r0, [r4]
	subs r5, r0, r6
	str r6, [r4]
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0800F00E
	ldr r0, [r4, #0x14]
	b _0800F010
	.align 2, 0
_0800EFFC: .4byte gUnk_02030CDC
_0800F000:
	movs r0, #0x40
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
	movs r0, #1
	rsbs r0, r0, #0
	b _0800F032
_0800F00E:
	movs r0, #0
_0800F010:
	str r0, [r4, #8]
	cmp r5, #0
	ble _0800F030
_0800F016:
	ldr r0, [r4, #0x1c]
	ldr r3, [r4, #0x24]
	adds r1, r6, #0
	adds r2, r5, #0
	bl _call_via_r3
	adds r1, r0, #0
	cmp r1, #0
	ble _0800F000
	adds r6, r6, r1
	subs r5, r5, r1
	cmp r5, #0
	bgt _0800F016
_0800F030:
	movs r0, #0
_0800F032:
	pop {r4, r5, r6, pc}

	thumb_func_start std
std: @ 0x0800F034
	push {r4, lr}
	movs r4, #0
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	strh r1, [r0, #0xc]
	strh r2, [r0, #0xe]
	str r4, [r0, #0x10]
	str r4, [r0, #0x18]
	str r0, [r0, #0x1c]
	ldr r1, _0800F05C @ =__sread
	str r1, [r0, #0x20]
	ldr r1, _0800F060 @ =__swrite
	str r1, [r0, #0x24]
	ldr r1, _0800F064 @ =__sseek
	str r1, [r0, #0x28]
	ldr r1, _0800F068 @ =__sclose
	str r1, [r0, #0x2c]
	str r3, [r0, #0x54]
	pop {r4, pc}
	.align 2, 0
_0800F05C: .4byte __sread
_0800F060: .4byte __swrite
_0800F064: .4byte __sseek
_0800F068: .4byte __sclose

	thumb_func_start __sfmoreglue
__sfmoreglue: @ 0x0800F06C
	push {r4, r5, r6, lr}
	adds r5, r1, #0
	movs r1, #0x58
	adds r6, r5, #0
	muls r6, r1, r6
	adds r1, r6, #0
	adds r1, #0xc
	bl _malloc_r
	adds r4, r0, #0
	cmp r4, #0
	beq _0800F098
	adds r0, #0xc
	movs r1, #0
	str r1, [r4]
	str r5, [r4, #4]
	str r0, [r4, #8]
	adds r2, r6, #0
	bl memset
	adds r0, r4, #0
	b _0800F09A
_0800F098:
	movs r0, #0
_0800F09A:
	pop {r4, r5, r6, pc}

	thumb_func_start __sfp
__sfp: @ 0x0800F09C
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, [r5, #0x38]
	cmp r0, #0
	bne _0800F0AC
	adds r0, r5, #0
	bl __sinit
_0800F0AC:
	movs r0, #0xec
	lsls r0, r0, #1
	adds r4, r5, r0
	b _0800F0B6
_0800F0B4:
	ldr r4, [r4]
_0800F0B6:
	ldr r2, [r4, #8]
	ldr r0, [r4, #4]
	b _0800F0C6
_0800F0BC:
	movs r3, #0xc
	ldrsh r1, [r2, r3]
	cmp r1, #0
	beq _0800F0E8
	adds r2, #0x58
_0800F0C6:
	subs r0, #1
	cmp r0, #0
	bge _0800F0BC
	ldr r0, [r4]
	cmp r0, #0
	bne _0800F0B4
	adds r0, r5, #0
	movs r1, #4
	bl __sfmoreglue
	str r0, [r4]
	cmp r0, #0
	bne _0800F0B4
	movs r0, #0xc
	str r0, [r5]
	movs r0, #0
	b _0800F108
_0800F0E8:
	movs r0, #1
	strh r0, [r2, #0xc]
	str r1, [r2]
	str r1, [r2, #8]
	str r1, [r2, #4]
	str r1, [r2, #0x10]
	str r1, [r2, #0x14]
	str r1, [r2, #0x18]
	ldr r0, _0800F10C @ =0x0000FFFF
	strh r0, [r2, #0xe]
	str r1, [r2, #0x30]
	str r1, [r2, #0x34]
	str r1, [r2, #0x44]
	str r1, [r2, #0x48]
	str r5, [r2, #0x54]
	adds r0, r2, #0
_0800F108:
	pop {r4, r5, pc}
	.align 2, 0
_0800F10C: .4byte 0x0000FFFF

	thumb_func_start _cleanup_r
_cleanup_r: @ 0x0800F110
	push {lr}
	ldr r1, _0800F11C @ =fflush
	bl _fwalk
	pop {pc}
	.align 2, 0
_0800F11C: .4byte fflush

	thumb_func_start _cleanup
_cleanup: @ 0x0800F120
	push {lr}
	ldr r0, _0800F12C @ =gUnk_02030CDC
	ldr r0, [r0]
	bl _cleanup_r
	pop {pc}
	.align 2, 0
_0800F12C: .4byte gUnk_02030CDC

	thumb_func_start __sinit
__sinit: @ 0x0800F130
	push {r4, r5, lr}
	adds r5, r0, #0
	ldr r0, _0800F18C @ =_cleanup_r
	str r0, [r5, #0x3c]
	movs r0, #1
	str r0, [r5, #0x38]
	movs r0, #0xf2
	lsls r0, r0, #1
	adds r4, r5, r0
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0
	adds r3, r5, #0
	bl std
	movs r1, #0x8f
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #9
	movs r2, #1
	adds r3, r5, #0
	bl std
	movs r1, #0xa5
	lsls r1, r1, #2
	adds r0, r5, r1
	movs r1, #0xa
	movs r2, #2
	adds r3, r5, #0
	bl std
	movs r0, #0xec
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #0
	str r0, [r1]
	movs r0, #0xee
	lsls r0, r0, #1
	adds r1, r5, r0
	movs r0, #3
	str r0, [r1]
	movs r1, #0xf0
	lsls r1, r1, #1
	adds r0, r5, r1
	str r4, [r0]
	pop {r4, r5, pc}
	.align 2, 0
_0800F18C: .4byte _cleanup_r

	thumb_func_start _free_r
_free_r: @ 0x0800F190
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r4, r1, #0
	cmp r4, #0
	bne _0800F1A2
	b _0800F346
_0800F1A2:
	bl __malloc_lock
	adds r5, r4, #0
	subs r5, #8
	ldr r1, [r5, #4]
	movs r6, #2
	rsbs r6, r6, #0
	ands r6, r1
	adds r7, r5, r6
	ldr r4, [r7, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r4, r0
	ldr r0, _0800F204 @ =gUnk_02030CF4
	mov ip, r0
	ldr r0, [r0, #8]
	cmp r7, r0
	bne _0800F210
	adds r6, r6, r4
	movs r4, #1
	ands r1, r4
	cmp r1, #0
	bne _0800F1DE
	ldr r0, [r5]
	subs r5, r5, r0
	adds r6, r6, r0
	ldr r3, [r5, #0xc]
	ldr r2, [r5, #8]
	str r3, [r2, #0xc]
	str r2, [r3, #8]
_0800F1DE:
	adds r0, r6, #0
	orrs r0, r4
	str r0, [r5, #4]
	mov r2, ip
	str r5, [r2, #8]
	ldr r0, _0800F208 @ =gUnk_020310FC
	ldr r0, [r0]
	cmp r6, r0
	blo _0800F1FA
	ldr r0, _0800F20C @ =gUnk_02031100
	ldr r1, [r0]
	mov r0, sb
	bl _malloc_trim_r
_0800F1FA:
	mov r0, sb
	bl __malloc_unlock
	b _0800F346
	.align 2, 0
_0800F204: .4byte gUnk_02030CF4
_0800F208: .4byte gUnk_020310FC
_0800F20C: .4byte gUnk_02031100
_0800F210:
	str r4, [r7, #4]
	movs r0, #0
	mov r8, r0
	movs r0, #1
	ands r1, r0
	cmp r1, #0
	bne _0800F23C
	ldr r0, [r5]
	subs r5, r5, r0
	adds r6, r6, r0
	ldr r1, [r5, #8]
	mov r0, ip
	adds r0, #8
	cmp r1, r0
	bne _0800F234
	movs r2, #1
	mov r8, r2
	b _0800F23C
_0800F234:
	ldr r3, [r5, #0xc]
	adds r2, r1, #0
	str r3, [r2, #0xc]
	str r2, [r3, #8]
_0800F23C:
	adds r0, r7, r4
	ldr r0, [r0, #4]
	movs r1, #1
	ands r0, r1
	cmp r0, #0
	bne _0800F274
	adds r6, r6, r4
	ldr r1, [r7, #8]
	mov r0, r8
	cmp r0, #0
	bne _0800F26C
	ldr r0, _0800F268 @ =gUnk_02030CFC
	cmp r1, r0
	bne _0800F26C
	movs r2, #1
	mov r8, r2
	str r5, [r1, #0xc]
	str r5, [r1, #8]
	str r1, [r5, #0xc]
	str r1, [r5, #8]
	b _0800F274
	.align 2, 0
_0800F268: .4byte gUnk_02030CFC
_0800F26C:
	ldr r3, [r7, #0xc]
	adds r2, r1, #0
	str r3, [r2, #0xc]
	str r2, [r3, #8]
_0800F274:
	movs r1, #1
	adds r0, r6, #0
	orrs r0, r1
	str r0, [r5, #4]
	adds r0, r5, r6
	str r6, [r0]
	mov r0, r8
	cmp r0, #0
	bne _0800F340
	ldr r0, _0800F2A4 @ =0x000001FF
	cmp r6, r0
	bhi _0800F2AC
	lsrs r4, r6, #3
	ldr r2, _0800F2A8 @ =gUnk_02030CF4
	adds r0, r4, #0
	asrs r0, r0, #2
	lsls r1, r0
	ldr r0, [r2, #4]
	orrs r0, r1
	str r0, [r2, #4]
	lsls r0, r4, #3
	adds r3, r0, r2
	ldr r2, [r3, #8]
	b _0800F338
	.align 2, 0
_0800F2A4: .4byte 0x000001FF
_0800F2A8: .4byte gUnk_02030CF4
_0800F2AC:
	lsrs r1, r6, #9
	cmp r1, #0
	bne _0800F2B6
	lsrs r4, r6, #3
	b _0800F2FE
_0800F2B6:
	cmp r1, #4
	bhi _0800F2C2
	lsrs r0, r6, #6
	adds r4, r0, #0
	adds r4, #0x38
	b _0800F2FE
_0800F2C2:
	cmp r1, #0x14
	bhi _0800F2CC
	adds r4, r1, #0
	adds r4, #0x5b
	b _0800F2FE
_0800F2CC:
	cmp r1, #0x54
	bhi _0800F2D8
	lsrs r0, r6, #0xc
	adds r4, r0, #0
	adds r4, #0x6e
	b _0800F2FE
_0800F2D8:
	movs r0, #0xaa
	lsls r0, r0, #1
	cmp r1, r0
	bhi _0800F2E8
	lsrs r0, r6, #0xf
	adds r4, r0, #0
	adds r4, #0x77
	b _0800F2FE
_0800F2E8:
	ldr r0, _0800F2F8 @ =0x00000554
	cmp r1, r0
	bhi _0800F2FC
	lsrs r0, r6, #0x12
	adds r4, r0, #0
	adds r4, #0x7c
	b _0800F2FE
	.align 2, 0
_0800F2F8: .4byte 0x00000554
_0800F2FC:
	movs r4, #0x7e
_0800F2FE:
	lsls r0, r4, #3
	ldr r7, _0800F31C @ =gUnk_02030CF4
	adds r3, r0, r7
	ldr r2, [r3, #8]
	cmp r2, r3
	bne _0800F320
	adds r0, r4, #0
	asrs r0, r0, #2
	movs r1, #1
	lsls r1, r0
	ldr r0, [r7, #4]
	orrs r0, r1
	str r0, [r7, #4]
	b _0800F338
	.align 2, 0
_0800F31C: .4byte gUnk_02030CF4
_0800F320:
	ldr r0, [r2, #4]
	movs r1, #4
	rsbs r1, r1, #0
	b _0800F330
_0800F328:
	ldr r2, [r2, #8]
	cmp r2, r3
	beq _0800F336
	ldr r0, [r2, #4]
_0800F330:
	ands r0, r1
	cmp r6, r0
	blo _0800F328
_0800F336:
	ldr r3, [r2, #0xc]
_0800F338:
	str r3, [r5, #0xc]
	str r2, [r5, #8]
	str r5, [r3, #8]
	str r5, [r2, #0xc]
_0800F340:
	mov r0, sb
	bl __malloc_unlock
_0800F346:
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start _malloc_trim_r
_malloc_trim_r: @ 0x0800F350
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r4, r1, #0
	bl __malloc_lock
	ldr r0, _0800F3D8 @ =gUnk_02030CF4
	mov r8, r0
	ldr r0, [r0, #8]
	ldr r6, [r0, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r6, r0
	subs r4, r6, r4
	movs r5, #0x80
	lsls r5, r5, #5
	ldr r1, _0800F3DC @ =0x00000FEF
	adds r4, r4, r1
	adds r0, r4, #0
	adds r1, r5, #0
	bl __udivsi3
	subs r0, #1
	lsls r4, r0, #0xc
	cmp r4, r5
	blt _0800F3CE
	adds r0, r7, #0
	movs r1, #0
	bl _sbrk_r
	adds r2, r0, #0
	mov r1, r8
	ldr r0, [r1, #8]
	adds r0, r0, r6
	cmp r2, r0
	bne _0800F3CE
	rsbs r1, r4, #0
	adds r0, r7, #0
	bl _sbrk_r
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	bne _0800F3E8
	adds r0, r7, #0
	movs r1, #0
	bl _sbrk_r
	adds r2, r0, #0
	mov r0, r8
	ldr r3, [r0, #8]
	subs r6, r2, r3
	cmp r6, #0xf
	ble _0800F3CE
	ldr r1, _0800F3E0 @ =gUnk_02031110
	ldr r0, _0800F3E4 @ =gUnk_02031104
	ldr r0, [r0]
	subs r0, r2, r0
	str r0, [r1]
	movs r0, #1
	orrs r6, r0
	str r6, [r3, #4]
_0800F3CE:
	adds r0, r7, #0
	bl __malloc_unlock
	movs r0, #0
	b _0800F404
	.align 2, 0
_0800F3D8: .4byte gUnk_02030CF4
_0800F3DC: .4byte 0x00000FEF
_0800F3E0: .4byte gUnk_02031110
_0800F3E4: .4byte gUnk_02031104
_0800F3E8:
	mov r1, r8
	ldr r2, [r1, #8]
	subs r0, r6, r4
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	ldr r1, _0800F40C @ =gUnk_02031110
	ldr r0, [r1]
	subs r0, r0, r4
	str r0, [r1]
	adds r0, r7, #0
	bl __malloc_unlock
	movs r0, #1
_0800F404:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0800F40C: .4byte gUnk_02031110

	thumb_func_start __sfvwrite
__sfvwrite: @ 0x0800F410
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	adds r5, r0, #0
	mov sl, r1
	ldr r6, [r1, #8]
	cmp r6, #0
	bne _0800F428
	b _0800F61E
_0800F428:
	movs r0, #8
	ldrh r1, [r5, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _0800F438
	ldr r0, [r5, #0x10]
	cmp r0, #0
	bne _0800F444
_0800F438:
	adds r0, r5, #0
	bl __swsetup
	cmp r0, #0
	beq _0800F444
	b _0800F62A
_0800F444:
	mov r2, sl
	ldr r2, [r2]
	mov r8, r2
	movs r6, #0
	ldrh r1, [r5, #0xc]
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _0800F498
_0800F456:
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x24]
	cmp r6, #0
	bne _0800F46C
_0800F45E:
	mov r1, r8
	ldr r7, [r1]
	ldr r6, [r1, #4]
	movs r2, #8
	add r8, r2
	cmp r6, #0
	beq _0800F45E
_0800F46C:
	adds r2, r6, #0
	movs r1, #0x80
	lsls r1, r1, #3
	cmp r6, r1
	bls _0800F478
	adds r2, r1, #0
_0800F478:
	adds r1, r7, #0
	bl _call_via_r3
	adds r4, r0, #0
	cmp r4, #0
	bgt _0800F486
	b _0800F622
_0800F486:
	adds r7, r7, r4
	subs r6, r6, r4
	mov r1, sl
	ldr r0, [r1, #8]
	subs r0, r0, r4
	str r0, [r1, #8]
	cmp r0, #0
	bne _0800F456
	b _0800F61E
_0800F498:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0800F552
_0800F4A0:
	ldrh r1, [r5, #0xc]
	ldr r0, [r5, #8]
	ldr r3, [r5]
	cmp r6, #0
	bne _0800F4B8
_0800F4AA:
	mov r2, r8
	ldr r7, [r2]
	ldr r6, [r2, #4]
	movs r2, #8
	add r8, r2
	cmp r6, #0
	beq _0800F4AA
_0800F4B8:
	adds r4, r0, #0
	movs r2, #0x80
	lsls r2, r2, #2
	adds r0, r2, #0
	ands r0, r1
	cmp r0, #0
	beq _0800F4E6
	cmp r6, r4
	bhs _0800F4CC
	adds r4, r6, #0
_0800F4CC:
	adds r0, r3, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memmove
	ldr r0, [r5, #8]
	subs r0, r0, r4
	str r0, [r5, #8]
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
	adds r4, r6, #0
	b _0800F540
_0800F4E6:
	ldr r0, [r5, #0x10]
	cmp r3, r0
	bls _0800F50E
	cmp r6, r4
	bls _0800F50E
	adds r0, r3, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memmove
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
	adds r0, r5, #0
	bl fflush
	cmp r0, #0
	beq _0800F50C
	b _0800F622
_0800F50C:
	b _0800F540
_0800F50E:
	ldr r4, [r5, #0x14]
	cmp r6, r4
	blo _0800F528
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x24]
	adds r1, r7, #0
	adds r2, r4, #0
	bl _call_via_r3
	adds r4, r0, #0
	cmp r4, #0
	ble _0800F622
	b _0800F540
_0800F528:
	adds r4, r6, #0
	adds r0, r3, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memmove
	ldr r0, [r5, #8]
	subs r0, r0, r4
	str r0, [r5, #8]
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
_0800F540:
	adds r7, r7, r4
	subs r6, r6, r4
	mov r1, sl
	ldr r0, [r1, #8]
	subs r0, r0, r4
	str r0, [r1, #8]
	cmp r0, #0
	bne _0800F4A0
	b _0800F61E
_0800F552:
	movs r2, #0
	str r2, [sp]
_0800F556:
	cmp r6, #0
	bne _0800F56C
	movs r0, #0
	str r0, [sp]
_0800F55E:
	mov r1, r8
	ldr r7, [r1]
	ldr r6, [r1, #4]
	movs r2, #8
	add r8, r2
	cmp r6, #0
	beq _0800F55E
_0800F56C:
	ldr r0, [sp]
	cmp r0, #0
	bne _0800F590
	adds r0, r7, #0
	movs r1, #0xa
	adds r2, r6, #0
	bl memchr
	adds r1, r0, #0
	cmp r1, #0
	beq _0800F588
	subs r0, r7, #1
	subs r1, r1, r0
	b _0800F58A
_0800F588:
	adds r1, r6, #1
_0800F58A:
	mov sb, r1
	movs r2, #1
	str r2, [sp]
_0800F590:
	mov r2, sb
	cmp sb, r6
	bls _0800F598
	adds r2, r6, #0
_0800F598:
	ldr r0, [r5, #8]
	ldr r1, [r5, #0x14]
	adds r4, r0, r1
	ldr r0, [r5, #0x10]
	ldr r3, [r5]
	cmp r3, r0
	bls _0800F5C6
	cmp r2, r4
	ble _0800F5C6
	adds r0, r3, #0
	adds r1, r7, #0
	adds r2, r4, #0
	bl memmove
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
	adds r0, r5, #0
	bl fflush
	cmp r0, #0
	bne _0800F622
	b _0800F5F6
_0800F5C6:
	adds r4, r1, #0
	cmp r2, r4
	blt _0800F5E0
	ldr r0, [r5, #0x1c]
	ldr r3, [r5, #0x24]
	adds r1, r7, #0
	adds r2, r4, #0
	bl _call_via_r3
	adds r4, r0, #0
	cmp r4, #0
	ble _0800F622
	b _0800F5F6
_0800F5E0:
	adds r4, r2, #0
	adds r0, r3, #0
	adds r1, r7, #0
	bl memmove
	ldr r0, [r5, #8]
	subs r0, r0, r4
	str r0, [r5, #8]
	ldr r0, [r5]
	adds r0, r0, r4
	str r0, [r5]
_0800F5F6:
	mov r0, sb
	subs r0, r0, r4
	mov sb, r0
	cmp r0, #0
	bne _0800F60E
	adds r0, r5, #0
	bl fflush
	cmp r0, #0
	bne _0800F622
	movs r1, #0
	str r1, [sp]
_0800F60E:
	adds r7, r7, r4
	subs r6, r6, r4
	mov r2, sl
	ldr r0, [r2, #8]
	subs r0, r0, r4
	str r0, [r2, #8]
	cmp r0, #0
	bne _0800F556
_0800F61E:
	movs r0, #0
	b _0800F62E
_0800F622:
	movs r0, #0x40
	ldrh r1, [r5, #0xc]
	orrs r0, r1
	strh r0, [r5, #0xc]
_0800F62A:
	movs r0, #1
	rsbs r0, r0, #0
_0800F62E:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start _fwalk
_fwalk: @ 0x0800F63C
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r1
	movs r7, #0
	movs r1, #0xec
	lsls r1, r1, #1
	adds r6, r0, r1
	cmp r6, #0
	beq _0800F674
_0800F650:
	ldr r5, [r6, #8]
	ldr r4, [r6, #4]
	b _0800F668
_0800F656:
	movs r1, #0xc
	ldrsh r0, [r5, r1]
	cmp r0, #0
	beq _0800F666
	adds r0, r5, #0
	bl _call_via_r8
	orrs r7, r0
_0800F666:
	adds r5, #0x58
_0800F668:
	subs r4, #1
	cmp r4, #0
	bge _0800F656
	ldr r6, [r6]
	cmp r6, #0
	bne _0800F650
_0800F674:
	adds r0, r7, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start _setlocale_r
_setlocale_r: @ 0x0800F67C
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	adds r4, r2, #0
	cmp r4, #0
	beq _0800F6B0
	ldr r1, _0800F6A4 @ =gUnk_0808E484
	adds r0, r4, #0
	bl strcmp
	cmp r0, #0
	beq _0800F6AC
	ldr r1, _0800F6A8 @ =gUnk_0808E47C
	adds r0, r4, #0
	bl strcmp
	cmp r0, #0
	beq _0800F6AC
	movs r0, #0
	b _0800F6B2
	.align 2, 0
_0800F6A4: .4byte gUnk_0808E484
_0800F6A8: .4byte gUnk_0808E47C
_0800F6AC:
	str r6, [r5, #0x30]
	str r4, [r5, #0x34]
_0800F6B0:
	ldr r0, _0800F6B4 @ =gUnk_0808E484
_0800F6B2:
	pop {r4, r5, r6, pc}
	.align 2, 0
_0800F6B4: .4byte gUnk_0808E484

	thumb_func_start _localeconv_r
_localeconv_r: @ 0x0800F6B8
	ldr r0, _0800F6BC @ =gUnk_0808E44C
	bx lr
	.align 2, 0
_0800F6BC: .4byte gUnk_0808E44C

	thumb_func_start setlocale
setlocale: @ 0x0800F6C0
	push {lr}
	adds r3, r0, #0
	adds r2, r1, #0
	ldr r0, _0800F6D4 @ =gUnk_02030CDC
	ldr r0, [r0]
	adds r1, r3, #0
	bl _setlocale_r
	pop {pc}
	.align 2, 0
_0800F6D4: .4byte gUnk_02030CDC

	thumb_func_start localeconv
localeconv: @ 0x0800F6D8
	push {lr}
	ldr r0, _0800F6E4 @ =gUnk_02030CDC
	ldr r0, [r0]
	bl _localeconv_r
	pop {pc}
	.align 2, 0
_0800F6E4: .4byte gUnk_02030CDC

	thumb_func_start __smakebuf
__smakebuf: @ 0x0800F6E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	adds r4, r0, #0
	movs r0, #2
	ldrh r1, [r4, #0xc]
	ands r0, r1
	cmp r0, #0
	bne _0800F77E
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	cmp r0, #0
	blt _0800F710
	ldr r0, [r4, #0x54]
	movs r2, #0xe
	ldrsh r1, [r4, r2]
	mov r2, sp
	bl _fstat_r
	cmp r0, #0
	bge _0800F722
_0800F710:
	movs r7, #0
	movs r6, #0x80
	lsls r6, r6, #3
	movs r1, #0x80
	lsls r1, r1, #4
	adds r0, r1, #0
	ldrh r2, [r4, #0xc]
	orrs r0, r2
	b _0800F766
_0800F722:
	movs r7, #0
	ldr r1, [sp, #4]
	movs r0, #0xf0
	lsls r0, r0, #8
	ands r1, r0
	movs r0, #0x80
	lsls r0, r0, #6
	cmp r1, r0
	bne _0800F736
	movs r7, #1
_0800F736:
	movs r6, #0x80
	lsls r6, r6, #3
	movs r0, #0x80
	lsls r0, r0, #8
	cmp r1, r0
	bne _0800F75C
	ldr r1, [r4, #0x28]
	ldr r0, _0800F758 @ =__sseek
	cmp r1, r0
	bne _0800F75C
	adds r0, r6, #0
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
	str r6, [r4, #0x4c]
	b _0800F768
	.align 2, 0
_0800F758: .4byte __sseek
_0800F75C:
	movs r2, #0x80
	lsls r2, r2, #4
	adds r0, r2, #0
	ldrh r1, [r4, #0xc]
	orrs r0, r1
_0800F766:
	strh r0, [r4, #0xc]
_0800F768:
	ldr r0, [r4, #0x54]
	adds r1, r6, #0
	bl _malloc_r
	adds r2, r0, #0
	cmp r2, #0
	bne _0800F78C
	movs r0, #2
	ldrh r2, [r4, #0xc]
	orrs r0, r2
	strh r0, [r4, #0xc]
_0800F77E:
	adds r0, r4, #0
	adds r0, #0x43
	str r0, [r4]
	str r0, [r4, #0x10]
	movs r0, #1
	str r0, [r4, #0x14]
	b _0800F7BA
_0800F78C:
	ldr r1, [r4, #0x54]
	ldr r0, _0800F7C0 @ =_cleanup_r
	str r0, [r1, #0x3c]
	movs r0, #0x80
	movs r5, #0
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
	str r2, [r4]
	str r2, [r4, #0x10]
	str r6, [r4, #0x14]
	cmp r7, #0
	beq _0800F7BA
	movs r2, #0xe
	ldrsh r0, [r4, r2]
	bl isatty
	cmp r0, #0
	beq _0800F7BA
	movs r0, #1
	ldrh r1, [r4, #0xc]
	orrs r0, r1
	strh r0, [r4, #0xc]
_0800F7BA:
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0800F7C0: .4byte _cleanup_r

	thumb_func_start malloc_extend_top
malloc_extend_top: @ 0x0800F7C4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #4
	str r0, [sp]
	ldr r0, _0800F838 @ =gUnk_02030CF4
	ldr r0, [r0, #8]
	mov r8, r0
	ldr r7, [r0, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r7, r0
	mov r2, r8
	adds r4, r2, r7
	ldr r0, _0800F83C @ =gUnk_02031100
	ldr r0, [r0]
	adds r1, r1, r0
	adds r6, r1, #0
	adds r6, #0x10
	ldr r3, _0800F840 @ =gUnk_02031104
	mov sl, r3
	ldr r0, [r3]
	movs r2, #1
	rsbs r2, r2, #0
	mov sb, r2
	cmp r0, sb
	beq _0800F806
	ldr r3, _0800F844 @ =0x0000100F
	adds r6, r1, r3
	ldr r0, _0800F848 @ =0xFFFFF000
	ands r6, r0
_0800F806:
	ldr r0, [sp]
	adds r1, r6, #0
	bl _sbrk_r
	adds r5, r0, #0
	cmp r5, sb
	beq _0800F908
	cmp r5, r4
	bhs _0800F81E
	ldr r0, _0800F838 @ =gUnk_02030CF4
	cmp r8, r0
	bne _0800F908
_0800F81E:
	ldr r1, _0800F84C @ =gUnk_02031110
	ldr r0, [r1]
	adds r2, r0, r6
	str r2, [r1]
	cmp r5, r4
	bne _0800F850
	adds r2, r6, r7
	ldr r3, _0800F838 @ =gUnk_02030CF4
	ldr r1, [r3, #8]
	movs r0, #1
	orrs r2, r0
	str r2, [r1, #4]
	b _0800F8F0
	.align 2, 0
_0800F838: .4byte gUnk_02030CF4
_0800F83C: .4byte gUnk_02031100
_0800F840: .4byte gUnk_02031104
_0800F844: .4byte 0x0000100F
_0800F848: .4byte 0xFFFFF000
_0800F84C: .4byte gUnk_02031110
_0800F850:
	mov r3, sl
	ldr r0, [r3]
	cmp r0, sb
	bne _0800F85C
	str r5, [r3]
	b _0800F862
_0800F85C:
	subs r0, r5, r4
	adds r0, r2, r0
	str r0, [r1]
_0800F862:
	adds r1, r5, #0
	adds r1, #8
	movs r0, #7
	ands r1, r0
	cmp r1, #0
	beq _0800F876
	movs r0, #8
	subs r4, r0, r1
	adds r5, r5, r4
	b _0800F878
_0800F876:
	movs r4, #0
_0800F878:
	adds r0, r5, r6
	movs r1, #0x80
	lsls r1, r1, #5
	subs r1, #1
	ands r0, r1
	movs r1, #0x80
	lsls r1, r1, #5
	subs r0, r1, r0
	adds r4, r4, r0
	ldr r0, [sp]
	adds r1, r4, #0
	bl _sbrk_r
	adds r2, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _0800F908
	ldr r1, _0800F8C0 @ =gUnk_02031110
	ldr r0, [r1]
	adds r0, r0, r4
	str r0, [r1]
	ldr r1, _0800F8C4 @ =gUnk_02030CF4
	str r5, [r1, #8]
	subs r0, r2, r5
	adds r2, r0, r4
	movs r3, #1
	orrs r2, r3
	str r2, [r5, #4]
	cmp r8, r1
	beq _0800F8F0
	cmp r7, #0xf
	bhi _0800F8C8
	str r3, [r5, #4]
	b _0800F908
	.align 2, 0
_0800F8C0: .4byte gUnk_02031110
_0800F8C4: .4byte gUnk_02030CF4
_0800F8C8:
	subs r7, #0xc
	movs r0, #8
	rsbs r0, r0, #0
	ands r7, r0
	mov r2, r8
	ldr r0, [r2, #4]
	ands r0, r3
	orrs r0, r7
	str r0, [r2, #4]
	adds r1, r2, r7
	movs r0, #5
	str r0, [r1, #4]
	str r0, [r1, #8]
	cmp r7, #0xf
	bls _0800F8F0
	mov r1, r8
	adds r1, #8
	ldr r0, [sp]
	bl _free_r
_0800F8F0:
	ldr r0, _0800F914 @ =gUnk_02031110
	ldr r2, _0800F918 @ =gUnk_02031108
	ldr r1, [r0]
	ldr r0, [r2]
	cmp r1, r0
	bls _0800F8FE
	str r1, [r2]
_0800F8FE:
	ldr r2, _0800F91C @ =gUnk_0203110C
	ldr r0, [r2]
	cmp r1, r0
	bls _0800F908
	str r1, [r2]
_0800F908:
	add sp, #4
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0800F914: .4byte gUnk_02031110
_0800F918: .4byte gUnk_02031108
_0800F91C: .4byte gUnk_0203110C

	thumb_func_start _malloc_r
_malloc_r: @ 0x0800F920
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	str r0, [sp]
	adds r1, #0xb
	cmp r1, #0x16
	ble _0800F942
	movs r0, #8
	rsbs r0, r0, #0
	mov r8, r0
	mov r2, r8
	ands r2, r1
	mov r8, r2
	b _0800F946
_0800F942:
	movs r3, #0x10
	mov r8, r3
_0800F946:
	ldr r0, [sp]
	bl __malloc_lock
	ldr r0, _0800F98C @ =0x000001F7
	cmp r8, r0
	bhi _0800F99A
	mov r4, r8
	lsrs r4, r4, #3
	mov ip, r4
	ldr r0, _0800F990 @ =gUnk_02030CF4
	mov r7, r8
	adds r2, r7, r0
	ldr r5, [r2, #0xc]
	cmp r5, r2
	bne _0800F96E
	adds r2, r5, #0
	adds r2, #8
	ldr r5, [r2, #0xc]
	cmp r5, r2
	beq _0800F994
_0800F96E:
	ldr r2, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r2, r0
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	adds r2, r5, r2
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	b _0800FCC6
	.align 2, 0
_0800F98C: .4byte 0x000001F7
_0800F990: .4byte gUnk_02030CF4
_0800F994:
	movs r0, #2
	add ip, r0
	b _0800FA46
_0800F99A:
	mov r2, r8
	lsrs r1, r2, #9
	cmp r1, #0
	bne _0800F9A6
	lsrs r2, r2, #3
	b _0800F9F6
_0800F9A6:
	cmp r1, #4
	bhi _0800F9B4
	mov r3, r8
	lsrs r0, r3, #6
	adds r0, #0x38
	mov ip, r0
	b _0800F9F8
_0800F9B4:
	cmp r1, #0x14
	bhi _0800F9BE
	adds r1, #0x5b
	mov ip, r1
	b _0800F9F8
_0800F9BE:
	cmp r1, #0x54
	bhi _0800F9CC
	mov r4, r8
	lsrs r0, r4, #0xc
	adds r0, #0x6e
	mov ip, r0
	b _0800F9F8
_0800F9CC:
	movs r0, #0xaa
	lsls r0, r0, #1
	cmp r1, r0
	bhi _0800F9DE
	mov r7, r8
	lsrs r0, r7, #0xf
	adds r0, #0x77
	mov ip, r0
	b _0800F9F8
_0800F9DE:
	ldr r0, _0800F9F0 @ =0x00000554
	cmp r1, r0
	bhi _0800F9F4
	mov r1, r8
	lsrs r0, r1, #0x12
	adds r0, #0x7c
	mov ip, r0
	b _0800F9F8
	.align 2, 0
_0800F9F0: .4byte 0x00000554
_0800F9F4:
	movs r2, #0x7e
_0800F9F6:
	mov ip, r2
_0800F9F8:
	mov r3, ip
	lsls r0, r3, #3
	ldr r1, _0800FA1C @ =gUnk_02030CF4
	adds r4, r0, r1
	ldr r5, [r4, #0xc]
	cmp r5, r4
	beq _0800FA42
	ldr r1, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	mov r7, r8
	subs r3, r1, r7
	cmp r3, #0xf
	ble _0800FA20
	adds r0, #3
	add ip, r0
	b _0800FA42
	.align 2, 0
_0800FA1C: .4byte gUnk_02030CF4
_0800FA20:
	cmp r3, #0
	blt _0800FA26
	b _0800FC60
_0800FA26:
	ldr r5, [r5, #0xc]
	cmp r5, r4
	beq _0800FA42
	ldr r1, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	mov r2, r8
	subs r3, r1, r2
	cmp r3, #0xf
	ble _0800FA20
	movs r3, #1
	rsbs r3, r3, #0
	add ip, r3
_0800FA42:
	movs r4, #1
	add ip, r4
_0800FA46:
	ldr r0, _0800FA84 @ =gUnk_02030CFC
	ldr r5, [r0, #8]
	mov sl, r0
	cmp r5, sl
	bne _0800FA52
	b _0800FB54
_0800FA52:
	ldr r1, [r5, #4]
	movs r0, #4
	rsbs r0, r0, #0
	ands r1, r0
	mov r7, r8
	subs r3, r1, r7
	cmp r3, #0xf
	ble _0800FA88
	adds r2, r5, r7
	movs r1, #1
	adds r0, r7, #0
	orrs r0, r1
	str r0, [r5, #4]
	mov r4, sl
	str r2, [r4, #0xc]
	str r2, [r4, #8]
	str r4, [r2, #0xc]
	str r4, [r2, #8]
	adds r0, r3, #0
	orrs r0, r1
	str r0, [r2, #4]
	adds r0, r2, r3
	str r3, [r0]
	b _0800FCC6
	.align 2, 0
_0800FA84: .4byte gUnk_02030CFC
_0800FA88:
	mov r7, sl
	str r7, [r7, #0xc]
	str r7, [r7, #8]
	cmp r3, #0
	blt _0800FA9E
	adds r2, r5, r1
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	b _0800FCC6
_0800FA9E:
	ldr r0, _0800FAC0 @ =0x000001FF
	cmp r1, r0
	bhi _0800FAC4
	lsrs r2, r1, #3
	mov r3, sl
	subs r3, #8
	adds r0, r2, #0
	asrs r0, r0, #2
	movs r1, #1
	lsls r1, r0
	ldr r0, [r3, #4]
	orrs r0, r1
	str r0, [r3, #4]
	lsls r0, r2, #3
	adds r6, r0, r3
	ldr r4, [r6, #8]
	b _0800FB4C
	.align 2, 0
_0800FAC0: .4byte 0x000001FF
_0800FAC4:
	lsrs r2, r1, #9
	cmp r2, #0
	bne _0800FACE
	lsrs r2, r1, #3
	b _0800FB12
_0800FACE:
	cmp r2, #4
	bhi _0800FADA
	lsrs r0, r1, #6
	adds r2, r0, #0
	adds r2, #0x38
	b _0800FB12
_0800FADA:
	cmp r2, #0x14
	bhi _0800FAE2
	adds r2, #0x5b
	b _0800FB12
_0800FAE2:
	cmp r2, #0x54
	bhi _0800FAEE
	lsrs r0, r1, #0xc
	adds r2, r0, #0
	adds r2, #0x6e
	b _0800FB12
_0800FAEE:
	movs r0, #0xaa
	lsls r0, r0, #1
	cmp r2, r0
	bhi _0800FAFE
	lsrs r0, r1, #0xf
	adds r2, r0, #0
	adds r2, #0x77
	b _0800FB12
_0800FAFE:
	ldr r0, _0800FB0C @ =0x00000554
	cmp r2, r0
	bhi _0800FB10
	lsrs r0, r1, #0x12
	adds r2, r0, #0
	adds r2, #0x7c
	b _0800FB12
	.align 2, 0
_0800FB0C: .4byte 0x00000554
_0800FB10:
	movs r2, #0x7e
_0800FB12:
	lsls r0, r2, #3
	ldr r3, _0800FB30 @ =gUnk_02030CF4
	adds r6, r0, r3
	ldr r4, [r6, #8]
	cmp r4, r6
	bne _0800FB34
	adds r0, r2, #0
	asrs r0, r0, #2
	movs r1, #1
	lsls r1, r0
	ldr r7, _0800FB30 @ =gUnk_02030CF4
	ldr r0, [r7, #4]
	orrs r0, r1
	str r0, [r7, #4]
	b _0800FB4C
	.align 2, 0
_0800FB30: .4byte gUnk_02030CF4
_0800FB34:
	ldr r0, [r4, #4]
	movs r2, #4
	rsbs r2, r2, #0
	b _0800FB44
_0800FB3C:
	ldr r4, [r4, #8]
	cmp r4, r6
	beq _0800FB4A
	ldr r0, [r4, #4]
_0800FB44:
	ands r0, r2
	cmp r1, r0
	blo _0800FB3C
_0800FB4A:
	ldr r6, [r4, #0xc]
_0800FB4C:
	str r6, [r5, #0xc]
	str r4, [r5, #8]
	str r5, [r6, #8]
	str r5, [r4, #0xc]
_0800FB54:
	mov r0, ip
	cmp r0, #0
	bge _0800FB5C
	adds r0, #3
_0800FB5C:
	asrs r0, r0, #2
	movs r6, #1
	lsls r6, r0
	ldr r0, _0800FB80 @ =gUnk_02030CF4
	ldr r1, [r0, #4]
	cmp r6, r1
	bhi _0800FC1E
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _0800FB92
	movs r0, #4
	rsbs r0, r0, #0
	mov r2, ip
	ands r0, r2
	adds r0, #4
	mov ip, r0
	b _0800FB88
	.align 2, 0
_0800FB80: .4byte gUnk_02030CF4
_0800FB84:
	movs r3, #4
	add ip, r3
_0800FB88:
	lsls r6, r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0800FB84
_0800FB92:
	ldr r4, _0800FC10 @ =gUnk_02030CF4
	mov sb, r4
_0800FB96:
	mov r7, ip
	str r7, [sp, #4]
	mov r1, ip
	lsls r0, r1, #3
	mov r3, sb
	adds r2, r0, r3
	adds r4, r2, #0
_0800FBA4:
	ldr r5, [r4, #0xc]
	cmp r5, r4
	beq _0800FBC4
	movs r0, #4
	rsbs r0, r0, #0
_0800FBAE:
	ldr r1, [r5, #4]
	ands r1, r0
	mov r7, r8
	subs r3, r1, r7
	cmp r3, #0xf
	bgt _0800FC74
	cmp r3, #0
	bge _0800FC9C
	ldr r5, [r5, #0xc]
	cmp r5, r4
	bne _0800FBAE
_0800FBC4:
	adds r4, #8
	movs r0, #1
	add ip, r0
	mov r0, ip
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0800FBA4
_0800FBD4:
	ldr r0, [sp, #4]
	ands r0, r1
	cmp r0, #0
	beq _0800FC14
	ldr r3, [sp, #4]
	subs r3, #1
	str r3, [sp, #4]
	subs r2, #8
	ldr r0, [r2, #8]
	cmp r0, r2
	beq _0800FBD4
_0800FBEA:
	lsls r6, r6, #1
	mov r4, sb
	ldr r1, [r4, #4]
	cmp r6, r1
	bhi _0800FC1E
	cmp r6, #0
	beq _0800FC1E
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	bne _0800FB96
_0800FC00:
	movs r7, #4
	add ip, r7
	lsls r6, r6, #1
	adds r0, r6, #0
	ands r0, r1
	cmp r0, #0
	beq _0800FC00
	b _0800FB96
	.align 2, 0
_0800FC10: .4byte gUnk_02030CF4
_0800FC14:
	mov r1, sb
	ldr r0, [r1, #4]
	bics r0, r6
	str r0, [r1, #4]
	b _0800FBEA
_0800FC1E:
	ldr r2, _0800FC5C @ =gUnk_02030CF4
	ldr r0, [r2, #8]
	ldr r0, [r0, #4]
	movs r4, #4
	rsbs r4, r4, #0
	ands r0, r4
	mov r7, r8
	subs r3, r0, r7
	cmp r0, r8
	blo _0800FC36
	cmp r3, #0xf
	bgt _0800FCB0
_0800FC36:
	ldr r0, [sp]
	mov r1, r8
	bl malloc_extend_top
	ldr r1, _0800FC5C @ =gUnk_02030CF4
	ldr r0, [r1, #8]
	ldr r0, [r0, #4]
	ands r0, r4
	mov r2, r8
	subs r3, r0, r2
	cmp r0, r8
	blo _0800FC52
	cmp r3, #0xf
	bgt _0800FCB0
_0800FC52:
	ldr r0, [sp]
	bl __malloc_unlock
	movs r0, #0
	b _0800FCD0
	.align 2, 0
_0800FC5C: .4byte gUnk_02030CF4
_0800FC60:
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	adds r2, r5, r1
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	b _0800FCC6
_0800FC74:
	mov r4, r8
	adds r2, r5, r4
	movs r1, #1
	orrs r4, r1
	str r4, [r5, #4]
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	mov r7, sl
	str r2, [r7, #0xc]
	str r2, [r7, #8]
	str r7, [r2, #0xc]
	str r7, [r2, #8]
	adds r0, r3, #0
	orrs r0, r1
	str r0, [r2, #4]
	adds r0, r2, r3
	str r3, [r0]
	b _0800FCC6
_0800FC9C:
	adds r2, r5, r1
	ldr r0, [r2, #4]
	movs r1, #1
	orrs r0, r1
	str r0, [r2, #4]
	ldr r6, [r5, #0xc]
	ldr r4, [r5, #8]
	str r6, [r4, #0xc]
	str r4, [r6, #8]
	b _0800FCC6
_0800FCB0:
	ldr r2, _0800FCDC @ =gUnk_02030CF4
	ldr r5, [r2, #8]
	movs r1, #1
	mov r0, r8
	orrs r0, r1
	str r0, [r5, #4]
	mov r4, r8
	adds r0, r5, r4
	str r0, [r2, #8]
	orrs r3, r1
	str r3, [r0, #4]
_0800FCC6:
	ldr r0, [sp]
	bl __malloc_unlock
	adds r0, r5, #0
	adds r0, #8
_0800FCD0:
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0800FCDC: .4byte gUnk_02030CF4

	thumb_func_start _mbtowc_r
_mbtowc_r: @ 0x0800FCE0
	sub sp, #4
	cmp r1, #0
	bne _0800FCE8
	mov r1, sp
_0800FCE8:
	cmp r2, #0
	beq _0800FD04
	cmp r3, #0
	bne _0800FCF6
	movs r0, #1
	rsbs r0, r0, #0
	b _0800FD06
_0800FCF6:
	ldrb r0, [r2]
	str r0, [r1]
	ldrb r0, [r2]
	cmp r0, #0
	beq _0800FD04
	movs r0, #1
	b _0800FD06
_0800FD04:
	movs r0, #0
_0800FD06:
	add sp, #4
	bx lr
	.align 2, 0

	thumb_func_start memchr
memchr: @ 0x0800FD0C
	push {r4, r5, r6, r7, lr}
	adds r5, r1, #0
	adds r1, r0, #0
	movs r0, #0xff
	ands r5, r0
	cmp r2, #3
	bls _0800FD80
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _0800FD80
	adds r4, r1, #0
	movs r6, #0
	movs r1, #0
_0800FD28:
	lsls r0, r6, #8
	adds r6, r0, r5
	adds r1, #1
	cmp r1, #3
	bls _0800FD28
	cmp r2, #3
	bls _0800FD66
	ldr r0, _0800FD6C @ =0xFEFEFEFF
	mov ip, r0
	ldr r7, _0800FD70 @ =0x80808080
_0800FD3C:
	ldr r1, [r4]
	eors r1, r6
	mov r3, ip
	adds r0, r1, r3
	bics r0, r1
	ands r0, r7
	cmp r0, #0
	beq _0800FD5E
	adds r1, r4, #0
	movs r3, #0
_0800FD50:
	ldrb r0, [r1]
	cmp r0, r5
	beq _0800FD7A
	adds r1, #1
	adds r3, #1
	cmp r3, #3
	bls _0800FD50
_0800FD5E:
	subs r2, #4
	adds r4, #4
	cmp r2, #3
	bhi _0800FD3C
_0800FD66:
	adds r1, r4, #0
	b _0800FD80
	.align 2, 0
_0800FD6C: .4byte 0xFEFEFEFF
_0800FD70: .4byte 0x80808080
_0800FD74:
	ldrb r0, [r1]
	cmp r0, r5
	bne _0800FD7E
_0800FD7A:
	adds r0, r1, #0
	b _0800FD8A
_0800FD7E:
	adds r1, #1
_0800FD80:
	adds r0, r2, #0
	subs r2, #1
	cmp r0, #0
	bne _0800FD74
	movs r0, #0
_0800FD8A:
	pop {r4, r5, r6, r7, pc}

	thumb_func_start memmove
memmove: @ 0x0800FD8C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r5, #0
	adds r3, r1, #0
	cmp r3, r5
	bhs _0800FDBE
	adds r0, r3, r2
	cmp r5, r0
	bhs _0800FDBE
	adds r3, r0, #0
	adds r4, r5, r2
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _0800FE10
	adds r1, r0, #0
_0800FDAE:
	subs r4, #1
	subs r3, #1
	ldrb r0, [r3]
	strb r0, [r4]
	subs r2, #1
	cmp r2, r1
	bne _0800FDAE
	b _0800FE10
_0800FDBE:
	cmp r2, #0xf
	bls _0800FDF6
	adds r0, r3, #0
	orrs r0, r4
	movs r1, #3
	ands r0, r1
	cmp r0, #0
	bne _0800FDF6
	adds r1, r3, #0
_0800FDD0:
	ldm r1!, {r0}
	stm r4!, {r0}
	ldm r1!, {r0}
	stm r4!, {r0}
	ldm r1!, {r0}
	stm r4!, {r0}
	ldm r1!, {r0}
	stm r4!, {r0}
	subs r2, #0x10
	cmp r2, #0xf
	bhi _0800FDD0
	cmp r2, #3
	bls _0800FDF4
_0800FDEA:
	ldm r1!, {r0}
	stm r4!, {r0}
	subs r2, #4
	cmp r2, #3
	bhi _0800FDEA
_0800FDF4:
	adds r3, r1, #0
_0800FDF6:
	subs r2, #1
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, r0
	beq _0800FE10
	adds r1, r0, #0
_0800FE02:
	ldrb r0, [r3]
	strb r0, [r4]
	adds r3, #1
	adds r4, #1
	subs r2, #1
	cmp r2, r1
	bne _0800FE02
_0800FE10:
	adds r0, r5, #0
	pop {r4, r5, pc}

	thumb_func_start __malloc_lock
__malloc_lock: @ 0x0800FE14
	bx lr
	.align 2, 0

	thumb_func_start __malloc_unlock
__malloc_unlock: @ 0x0800FE18
	bx lr
	.align 2, 0

	thumb_func_start _Balloc
_Balloc: @ 0x0800FE1C
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r6, r1, #0
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	bne _0800FE38
	adds r0, r4, #0
	movs r1, #4
	movs r2, #0x10
	bl _calloc_r
	str r0, [r4, #0x4c]
	cmp r0, #0
	beq _0800FE60
_0800FE38:
	ldr r1, [r4, #0x4c]
	lsls r0, r6, #2
	adds r2, r0, r1
	ldr r1, [r2]
	cmp r1, #0
	beq _0800FE4A
	ldr r0, [r1]
	str r0, [r2]
	b _0800FE68
_0800FE4A:
	movs r5, #1
	lsls r5, r6
	lsls r2, r5, #2
	adds r2, #0x14
	adds r0, r4, #0
	movs r1, #1
	bl _calloc_r
	adds r1, r0, #0
	cmp r1, #0
	bne _0800FE64
_0800FE60:
	movs r0, #0
	b _0800FE70
_0800FE64:
	str r6, [r1, #4]
	str r5, [r1, #8]
_0800FE68:
	movs r0, #0
	str r0, [r1, #0x10]
	str r0, [r1, #0xc]
	adds r0, r1, #0
_0800FE70:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start _Bfree
_Bfree: @ 0x0800FE74
	adds r3, r0, #0
	adds r2, r1, #0
	cmp r2, #0
	beq _0800FE8A
	ldr r0, [r2, #4]
	ldr r1, [r3, #0x4c]
	lsls r0, r0, #2
	adds r0, r0, r1
	ldr r1, [r0]
	str r1, [r2]
	str r2, [r0]
_0800FE8A:
	bx lr

	thumb_func_start _multadd
_multadd: @ 0x0800FE8C
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	mov sb, r0
	adds r5, r1, #0
	adds r4, r2, #0
	mov r8, r3
	ldr r6, [r5, #0x10]
	adds r3, r5, #0
	adds r3, #0x14
	movs r7, #0
	ldr r0, _0800FF20 @ =0x0000FFFF
	mov ip, r0
_0800FEA8:
	ldr r1, [r3]
	adds r0, r1, #0
	mov r2, ip
	ands r0, r2
	adds r2, r0, #0
	muls r2, r4, r2
	add r2, r8
	lsrs r1, r1, #0x10
	adds r0, r1, #0
	muls r0, r4, r0
	lsrs r1, r2, #0x10
	adds r0, r0, r1
	lsrs r1, r0, #0x10
	mov r8, r1
	lsls r0, r0, #0x10
	mov r1, ip
	ands r2, r1
	adds r0, r0, r2
	stm r3!, {r0}
	adds r7, #1
	cmp r7, r6
	blt _0800FEA8
	mov r2, r8
	cmp r2, #0
	beq _0800FF16
	ldr r0, [r5, #8]
	cmp r6, r0
	blt _0800FF06
	ldr r1, [r5, #4]
	adds r1, #1
	mov r0, sb
	bl _Balloc
	adds r4, r0, #0
	adds r0, #0xc
	adds r1, r5, #0
	adds r1, #0xc
	ldr r2, [r5, #0x10]
	lsls r2, r2, #2
	adds r2, #8
	bl memcpy
	mov r0, sb
	adds r1, r5, #0
	bl _Bfree
	adds r5, r4, #0
_0800FF06:
	lsls r1, r6, #2
	adds r0, r5, #0
	adds r0, #0x14
	adds r0, r0, r1
	mov r1, r8
	str r1, [r0]
	adds r6, #1
	str r6, [r5, #0x10]
_0800FF16:
	adds r0, r5, #0
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0800FF20: .4byte 0x0000FFFF

	thumb_func_start _s2b
_s2b: @ 0x0800FF24
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r7, r0, #0
	adds r4, r1, #0
	adds r6, r2, #0
	mov r8, r3
	mov r0, r8
	adds r0, #8
	movs r1, #9
	bl __divsi3
	movs r1, #0
	movs r2, #1
	cmp r0, #1
	ble _0800FF4C
_0800FF44:
	lsls r2, r2, #1
	adds r1, #1
	cmp r0, r2
	bgt _0800FF44
_0800FF4C:
	adds r0, r7, #0
	bl _Balloc
	adds r1, r0, #0
	ldr r0, [sp, #0x18]
	str r0, [r1, #0x14]
	movs r0, #1
	str r0, [r1, #0x10]
	movs r5, #9
	cmp r6, #9
	ble _0800FF7E
	adds r4, #9
_0800FF64:
	ldrb r3, [r4]
	subs r3, #0x30
	adds r4, #1
	adds r0, r7, #0
	movs r2, #0xa
	bl _multadd
	adds r1, r0, #0
	adds r5, #1
	cmp r5, r6
	blt _0800FF64
	adds r4, #1
	b _0800FF80
_0800FF7E:
	adds r4, #0xa
_0800FF80:
	cmp r5, r8
	bge _0800FF9E
	mov r0, r8
	subs r5, r0, r5
_0800FF88:
	ldrb r3, [r4]
	subs r3, #0x30
	adds r4, #1
	adds r0, r7, #0
	movs r2, #0xa
	bl _multadd
	adds r1, r0, #0
	subs r5, #1
	cmp r5, #0
	bne _0800FF88
_0800FF9E:
	adds r0, r1, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start _hi0bits
_hi0bits: @ 0x0800FFA8
	adds r1, r0, #0
	movs r2, #0
	ldr r0, _0800FFF8 @ =0xFFFF0000
	ands r0, r1
	cmp r0, #0
	bne _0800FFB8
	movs r2, #0x10
	lsls r1, r1, #0x10
_0800FFB8:
	movs r0, #0xff
	lsls r0, r0, #0x18
	ands r0, r1
	cmp r0, #0
	bne _0800FFC6
	adds r2, #8
	lsls r1, r1, #8
_0800FFC6:
	movs r0, #0xf0
	lsls r0, r0, #0x18
	ands r0, r1
	cmp r0, #0
	bne _0800FFD4
	adds r2, #4
	lsls r1, r1, #4
_0800FFD4:
	movs r0, #0xc0
	lsls r0, r0, #0x18
	ands r0, r1
	cmp r0, #0
	bne _0800FFE2
	adds r2, #2
	lsls r1, r1, #2
_0800FFE2:
	cmp r1, #0
	blt _0800FFFC
	adds r2, #1
	movs r0, #0x80
	lsls r0, r0, #0x17
	ands r0, r1
	cmp r0, #0
	bne _0800FFFC
	movs r0, #0x20
	b _0800FFFE
	.align 2, 0
_0800FFF8: .4byte 0xFFFF0000
_0800FFFC:
	adds r0, r2, #0
_0800FFFE:
	bx lr

	thumb_func_start _lo0bits
_lo0bits: @ 0x08010000
	adds r3, r0, #0
	ldr r1, [r3]
	movs r0, #7
	ands r0, r1
	cmp r0, #0
	beq _08010030
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	beq _08010018
	movs r0, #0
	b _08010080
_08010018:
	movs r0, #2
	ands r0, r1
	cmp r0, #0
	beq _08010028
	lsrs r0, r1, #1
	str r0, [r3]
	movs r0, #1
	b _08010080
_08010028:
	lsrs r0, r1, #2
	str r0, [r3]
	movs r0, #2
	b _08010080
_08010030:
	movs r2, #0
	ldr r0, _08010078 @ =0x0000FFFF
	ands r0, r1
	cmp r0, #0
	bne _0801003E
	movs r2, #0x10
	lsrs r1, r1, #0x10
_0801003E:
	movs r0, #0xff
	ands r0, r1
	cmp r0, #0
	bne _0801004A
	adds r2, #8
	lsrs r1, r1, #8
_0801004A:
	movs r0, #0xf
	ands r0, r1
	cmp r0, #0
	bne _08010056
	adds r2, #4
	lsrs r1, r1, #4
_08010056:
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08010062
	adds r2, #2
	lsrs r1, r1, #2
_08010062:
	movs r0, #1
	ands r0, r1
	cmp r0, #0
	bne _0801007C
	adds r2, #1
	lsrs r1, r1, #1
	cmp r1, #0
	bne _0801007C
	movs r0, #0x20
	b _08010080
	.align 2, 0
_08010078: .4byte 0x0000FFFF
_0801007C:
	str r1, [r3]
	adds r0, r2, #0
_08010080:
	bx lr
	.align 2, 0

	thumb_func_start _i2b
_i2b: @ 0x08010084
	push {r4, lr}
	adds r4, r1, #0
	movs r1, #1
	bl _Balloc
	str r4, [r0, #0x14]
	movs r1, #1
	str r1, [r0, #0x10]
	pop {r4, pc}
	.align 2, 0

	thumb_func_start _multiply
_multiply: @ 0x08010098
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x24
	adds r3, r0, #0
	adds r4, r1, #0
	adds r5, r2, #0
	ldr r1, [r4, #0x10]
	ldr r0, [r5, #0x10]
	cmp r1, r0
	bge _080100B8
	str r4, [sp]
	adds r4, r5, #0
	ldr r5, [sp]
_080100B8:
	ldr r1, [r4, #4]
	ldr r6, [r4, #0x10]
	ldr r0, [r5, #0x10]
	mov r8, r0
	mov r2, r8
	adds r2, r6, r2
	str r2, [sp, #4]
	ldr r0, [r4, #8]
	cmp r2, r0
	ble _080100CE
	adds r1, #1
_080100CE:
	adds r0, r3, #0
	bl _Balloc
	str r0, [sp]
	adds r7, r0, #0
	adds r7, #0x14
	ldr r1, [sp, #4]
	lsls r0, r1, #2
	adds r2, r7, r0
	str r2, [sp, #8]
	str r0, [sp, #0x18]
	adds r1, r4, #0
	adds r1, #0x14
	lsls r3, r6, #2
	adds r2, r5, #0
	adds r2, #0x14
	mov r5, r8
	lsls r4, r5, #2
	ldr r0, [sp, #8]
	cmp r7, r0
	bhs _08010102
	movs r0, #0
_080100FA:
	stm r7!, {r0}
	ldr r5, [sp, #8]
	cmp r7, r5
	blo _080100FA
_08010102:
	str r1, [sp, #8]
	adds r3, r1, r3
	str r3, [sp, #0xc]
	mov r8, r2
	add r4, r8
	str r4, [sp, #0x10]
	ldr r0, [sp]
	adds r0, #0x14
	mov sb, r0
	mov r1, sb
	str r1, [sp, #0x20]
	cmp r8, r4
	bhs _080101CA
_0801011C:
	mov r2, r8
	ldm r2!, {r6}
	str r2, [sp, #0x14]
	ldr r0, _080101D8 @ =0x0000FFFF
	ands r6, r0
	mov r4, sb
	adds r4, #4
	str r4, [sp, #0x1c]
	cmp r6, #0
	beq _08010174
	ldr r7, [sp, #8]
	mov r5, sb
	movs r1, #0
	mov ip, r1
	mov sl, r0
_0801013A:
	ldm r7!, {r3}
	adds r0, r3, #0
	mov r2, sl
	ands r0, r2
	adds r1, r0, #0
	muls r1, r6, r1
	ldr r2, [r5]
	adds r0, r2, #0
	mov r4, sl
	ands r0, r4
	adds r1, r1, r0
	mov r0, ip
	adds r4, r1, r0
	lsrs r1, r4, #0x10
	lsrs r3, r3, #0x10
	adds r0, r3, #0
	muls r0, r6, r0
	lsrs r2, r2, #0x10
	adds r0, r0, r2
	adds r2, r0, r1
	lsrs r0, r2, #0x10
	mov ip, r0
	strh r2, [r5]
	strh r4, [r5, #2]
	adds r5, #4
	ldr r1, [sp, #0xc]
	cmp r7, r1
	blo _0801013A
	str r0, [r5]
_08010174:
	mov r2, r8
	ldrh r6, [r2, #2]
	cmp r6, #0
	beq _080101BC
	ldr r7, [sp, #8]
	mov r5, sb
	movs r4, #0
	mov ip, r4
	ldr r2, [r5]
	ldr r3, _080101D8 @ =0x0000FFFF
_08010188:
	ldm r7!, {r1}
	adds r0, r1, #0
	ands r0, r3
	muls r0, r6, r0
	ldrh r4, [r5, #2]
	adds r4, r4, r0
	mov r8, r4
	add r4, ip
	lsrs r0, r4, #0x10
	mov ip, r0
	strh r4, [r5]
	strh r2, [r5, #2]
	adds r5, #4
	lsrs r1, r1, #0x10
	muls r1, r6, r1
	ldr r0, [r5]
	ands r0, r3
	adds r1, r1, r0
	mov r4, ip
	adds r2, r1, r4
	lsrs r0, r2, #0x10
	mov ip, r0
	ldr r1, [sp, #0xc]
	cmp r7, r1
	blo _08010188
	str r2, [r5]
_080101BC:
	ldr r2, [sp, #0x14]
	mov r8, r2
	ldr r4, [sp, #0x1c]
	mov sb, r4
	ldr r5, [sp, #0x10]
	cmp r8, r5
	blo _0801011C
_080101CA:
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x18]
	adds r5, r0, r1
	ldr r2, [sp, #4]
	cmp r2, #0
	ble _080101EE
	b _080101E6
	.align 2, 0
_080101D8: .4byte 0x0000FFFF
_080101DC:
	ldr r4, [sp, #4]
	subs r4, #1
	str r4, [sp, #4]
	cmp r4, #0
	ble _080101EE
_080101E6:
	subs r5, #4
	ldr r0, [r5]
	cmp r0, #0
	beq _080101DC
_080101EE:
	ldr r5, [sp, #4]
	ldr r0, [sp]
	str r5, [r0, #0x10]
	ldr r0, [sp]
	add sp, #0x24
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start _pow5mult
_pow5mult: @ 0x08010204
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	mov r8, r0
	adds r7, r1, #0
	adds r6, r2, #0
	movs r1, #3
	ands r1, r6
	cmp r1, #0
	beq _0801022E
	ldr r0, _08010250 @ =gUnk_0808E488
	subs r1, #1
	lsls r1, r1, #2
	adds r1, r1, r0
	ldr r2, [r1]
	mov r0, r8
	adds r1, r7, #0
	movs r3, #0
	bl _multadd
	adds r7, r0, #0
_0801022E:
	asrs r6, r6, #2
	cmp r6, #0
	beq _08010294
	mov r0, r8
	ldr r5, [r0, #0x48]
	adds r4, r5, #0
	cmp r5, #0
	bne _08010270
	ldr r1, _08010254 @ =0x00000271
	bl _i2b
	mov r1, r8
	str r0, [r1, #0x48]
	adds r5, r0, #0
	str r4, [r5]
	b _08010270
	.align 2, 0
_08010250: .4byte gUnk_0808E488
_08010254: .4byte 0x00000271
_08010258:
	ldr r0, [r5]
	adds r4, r0, #0
	cmp r0, #0
	bne _0801026E
	mov r0, r8
	adds r1, r5, #0
	adds r2, r5, #0
	bl _multiply
	str r0, [r5]
	str r4, [r0]
_0801026E:
	adds r5, r0, #0
_08010270:
	movs r0, #1
	ands r0, r6
	cmp r0, #0
	beq _0801028E
	mov r0, r8
	adds r1, r7, #0
	adds r2, r5, #0
	bl _multiply
	adds r4, r0, #0
	mov r0, r8
	adds r1, r7, #0
	bl _Bfree
	adds r7, r4, #0
_0801028E:
	asrs r6, r6, #1
	cmp r6, #0
	bne _08010258
_08010294:
	adds r0, r7, #0
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}

	thumb_func_start _lshift
_lshift: @ 0x0801029C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	mov sl, r0
	mov r8, r1
	adds r5, r2, #0
	asrs r6, r5, #5
	ldr r1, [r1, #4]
	mov r2, r8
	ldr r0, [r2, #0x10]
	adds r0, r6, r0
	adds r7, r0, #1
	ldr r2, [r2, #8]
	cmp r7, r2
	ble _080102C6
_080102BE:
	adds r1, #1
	lsls r2, r2, #1
	cmp r7, r2
	bgt _080102BE
_080102C6:
	mov r0, sl
	bl _Balloc
	mov sb, r0
	mov r4, sb
	adds r4, #0x14
	mov r0, r8
	adds r0, #0x14
	cmp r6, #0
	ble _080102E6
	movs r1, #0
	adds r2, r6, #0
_080102DE:
	stm r4!, {r1}
	subs r2, #1
	cmp r2, #0
	bne _080102DE
_080102E6:
	adds r3, r0, #0
	mov r1, r8
	ldr r0, [r1, #0x10]
	lsls r0, r0, #2
	adds r6, r3, r0
	movs r0, #0x1f
	ands r5, r0
	cmp r5, #0
	beq _08010318
	movs r0, #0x20
	subs r1, r0, r5
	movs r2, #0
_080102FE:
	ldr r0, [r3]
	lsls r0, r5
	orrs r0, r2
	stm r4!, {r0}
	ldm r3!, {r2}
	lsrs r2, r1
	cmp r3, r6
	blo _080102FE
	str r2, [r4]
	cmp r2, #0
	beq _08010320
	adds r7, #1
	b _08010320
_08010318:
	ldm r3!, {r0}
	stm r4!, {r0}
	cmp r3, r6
	blo _08010318
_08010320:
	subs r0, r7, #1
	mov r2, sb
	str r0, [r2, #0x10]
	mov r0, sl
	mov r1, r8
	bl _Bfree
	mov r0, sb
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start __mcmp
__mcmp: @ 0x0801033C
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r5, r1, #0
	ldr r0, [r2, #0x10]
	ldr r1, [r5, #0x10]
	subs r0, r0, r1
	cmp r0, #0
	bne _08010378
	adds r4, r2, #0
	adds r4, #0x14
	lsls r1, r1, #2
	adds r3, r4, r1
	adds r0, r5, #0
	adds r0, #0x14
	adds r1, r0, r1
_0801035A:
	subs r3, #4
	subs r1, #4
	ldr r0, [r3]
	ldr r2, [r1]
	cmp r0, r2
	beq _08010372
	movs r1, #1
	cmp r0, r2
	bhs _0801036E
	subs r1, #2
_0801036E:
	adds r0, r1, #0
	b _08010378
_08010372:
	cmp r3, r4
	bhi _0801035A
	movs r0, #0
_08010378:
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start __mdiff
__mdiff: @ 0x0801037C
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	adds r6, r0, #0
	adds r5, r1, #0
	mov r8, r2
	adds r0, r5, #0
	mov r1, r8
	bl __mcmp
	adds r4, r0, #0
	cmp r4, #0
	bne _080103AE
	adds r0, r6, #0
	movs r1, #0
	bl _Balloc
	adds r7, r0, #0
	movs r0, #1
	str r0, [r7, #0x10]
	str r4, [r7, #0x14]
	b _0801045E
_080103AE:
	cmp r4, #0
	bge _080103BC
	adds r7, r5, #0
	mov r5, r8
	mov r8, r7
	movs r4, #1
	b _080103BE
_080103BC:
	movs r4, #0
_080103BE:
	ldr r1, [r5, #4]
	adds r0, r6, #0
	bl _Balloc
	adds r7, r0, #0
	str r4, [r7, #0xc]
	ldr r0, [r5, #0x10]
	mov sb, r0
	adds r6, r5, #0
	adds r6, #0x14
	lsls r0, r0, #2
	adds r0, r0, r6
	mov sl, r0
	mov r1, r8
	ldr r0, [r1, #0x10]
	movs r3, #0x14
	add r3, r8
	mov ip, r3
	lsls r0, r0, #2
	add r0, ip
	str r0, [sp]
	adds r4, r7, #0
	adds r4, #0x14
	movs r5, #0
	ldr r0, _08010448 @ =0x0000FFFF
	mov r8, r0
_080103F2:
	ldm r6!, {r1}
	str r1, [sp, #4]
	mov r3, r8
	ands r1, r3
	mov r0, ip
	adds r0, #4
	mov ip, r0
	subs r0, #4
	ldm r0!, {r2}
	adds r0, r2, #0
	ands r0, r3
	subs r1, r1, r0
	adds r0, r1, r5
	asrs r5, r0, #0x10
	ldr r1, [sp, #4]
	lsrs r3, r1, #0x10
	lsrs r2, r2, #0x10
	subs r3, r3, r2
	adds r1, r3, r5
	asrs r5, r1, #0x10
	strh r1, [r4]
	strh r0, [r4, #2]
	adds r4, #4
	ldr r3, [sp]
	cmp ip, r3
	blo _080103F2
	cmp r6, sl
	bhs _08010452
	ldr r2, _08010448 @ =0x0000FFFF
_0801042C:
	ldm r6!, {r1}
	adds r0, r1, #0
	ands r0, r2
	adds r0, r0, r5
	asrs r5, r0, #0x10
	lsrs r1, r1, #0x10
	adds r1, r1, r5
	asrs r5, r1, #0x10
	strh r1, [r4]
	strh r0, [r4, #2]
	adds r4, #4
	cmp r6, sl
	blo _0801042C
	b _08010452
	.align 2, 0
_08010448: .4byte 0x0000FFFF
_0801044C:
	movs r0, #1
	rsbs r0, r0, #0
	add sb, r0
_08010452:
	subs r4, #4
	ldr r0, [r4]
	cmp r0, #0
	beq _0801044C
	mov r1, sb
	str r1, [r7, #0x10]
_0801045E:
	adds r0, r7, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}

	thumb_func_start _ulp
_ulp: @ 0x0801046C
	push {r4, lr}
	ldr r2, _08010480 @ =0x7FF00000
	ands r2, r0
	ldr r0, _08010484 @ =0xFCC00000
	adds r2, r2, r0
	cmp r2, #0
	ble _08010488
	adds r3, r2, #0
	movs r4, #0
	b _080104B2
	.align 2, 0
_08010480: .4byte 0x7FF00000
_08010484: .4byte 0xFCC00000
_08010488:
	rsbs r0, r2, #0
	asrs r2, r0, #0x14
	cmp r2, #0x13
	bgt _0801049C
	movs r0, #0x80
	lsls r0, r0, #0xc
	adds r3, r0, #0
	asrs r3, r2
	movs r4, #0
	b _080104B2
_0801049C:
	movs r3, #0
	subs r2, #0x14
	cmp r2, #0x1e
	bgt _080104AE
	movs r0, #0x1f
	subs r0, r0, r2
	movs r1, #1
	lsls r1, r0
	b _080104B0
_080104AE:
	movs r1, #1
_080104B0:
	adds r4, r1, #0
_080104B2:
	adds r1, r4, #0
	adds r0, r3, #0
	pop {r4, pc}

	thumb_func_start _b2d
_b2d: @ 0x080104B8
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #4
	adds r4, r1, #0
	movs r1, #0x14
	adds r1, r1, r0
	mov r8, r1
	ldr r0, [r0, #0x10]
	lsls r0, r0, #2
	adds r5, r1, r0
	subs r5, #4
	ldr r2, [r5]
	adds r0, r2, #0
	str r2, [sp]
	bl _hi0bits
	adds r3, r0, #0
	movs r0, #0x20
	subs r0, r0, r3
	str r0, [r4]
	ldr r2, [sp]
	cmp r3, #0xa
	bgt _08010518
	movs r0, #0xb
	subs r0, r0, r3
	adds r1, r2, #0
	lsrs r1, r0
	ldr r0, _08010500 @ =0x3FF00000
	adds r6, r1, #0
	orrs r6, r0
	cmp r5, r8
	bls _08010504
	subs r5, #4
	ldr r1, [r5]
	b _08010506
	.align 2, 0
_08010500: .4byte 0x3FF00000
_08010504:
	movs r1, #0
_08010506:
	adds r0, r3, #0
	adds r0, #0x15
	lsls r2, r0
	movs r0, #0xb
	subs r0, r0, r3
	lsrs r1, r0
	adds r7, r2, #0
	orrs r7, r1
	b _08010564
_08010518:
	cmp r5, r8
	bls _08010522
	subs r5, #4
	ldr r4, [r5]
	b _08010524
_08010522:
	movs r4, #0
_08010524:
	subs r3, #0xb
	cmp r3, #0
	beq _0801055C
	lsls r2, r3
	movs r0, #0x20
	subs r0, r0, r3
	adds r1, r4, #0
	lsrs r1, r0
	ldr r0, _08010548 @ =0x3FF00000
	orrs r1, r0
	adds r6, r2, #0
	orrs r6, r1
	cmp r5, r8
	bls _0801054C
	subs r5, #4
	ldr r2, [r5]
	b _0801054E
	.align 2, 0
_08010548: .4byte 0x3FF00000
_0801054C:
	movs r2, #0
_0801054E:
	lsls r4, r3
	movs r0, #0x20
	subs r0, r0, r3
	lsrs r2, r0
	adds r7, r4, #0
	orrs r7, r2
	b _08010564
_0801055C:
	ldr r0, _08010570 @ =0x3FF00000
	adds r6, r2, #0
	orrs r6, r0
	adds r7, r4, #0
_08010564:
	adds r1, r7, #0
	adds r0, r6, #0
	add sp, #4
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08010570: .4byte 0x3FF00000

	thumb_func_start _d2b
_d2b: @ 0x08010574
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #8
	mov sb, r3
	ldr r3, [sp, #0x28]
	mov sl, r3
	adds r5, r2, #0
	adds r4, r1, #0
	movs r1, #1
	bl _Balloc
	adds r6, r0, #0
	movs r0, #0x14
	adds r0, r0, r6
	mov r8, r0
	ldr r2, _080105DC @ =0x000FFFFF
	adds r1, r4, #0
	ands r2, r1
	str r2, [sp, #4]
	ldr r0, _080105E0 @ =0x7FFFFFFF
	ands r4, r0
	lsrs r7, r4, #0x14
	cmp r7, #0
	beq _080105B2
	movs r0, #0x80
	lsls r0, r0, #0xd
	orrs r0, r2
	str r0, [sp, #4]
_080105B2:
	str r5, [sp]
	cmp r5, #0
	beq _080105FC
	mov r0, sp
	bl _lo0bits
	adds r2, r0, #0
	cmp r2, #0
	beq _080105E4
	movs r0, #0x20
	subs r0, r0, r2
	ldr r1, [sp, #4]
	lsls r1, r0
	ldr r0, [sp]
	orrs r0, r1
	str r0, [r6, #0x14]
	ldr r0, [sp, #4]
	lsrs r0, r2
	str r0, [sp, #4]
	b _080105E8
	.align 2, 0
_080105DC: .4byte 0x000FFFFF
_080105E0: .4byte 0x7FFFFFFF
_080105E4:
	ldr r0, [sp]
	str r0, [r6, #0x14]
_080105E8:
	ldr r0, [sp, #4]
	mov r1, r8
	str r0, [r1, #4]
	movs r1, #1
	cmp r0, #0
	beq _080105F6
	movs r1, #2
_080105F6:
	str r1, [r6, #0x10]
	adds r4, r1, #0
	b _08010610
_080105FC:
	add r0, sp, #4
	bl _lo0bits
	adds r2, r0, #0
	ldr r0, [sp, #4]
	str r0, [r6, #0x14]
	movs r0, #1
	str r0, [r6, #0x10]
	movs r4, #1
	adds r2, #0x20
_08010610:
	cmp r7, #0
	beq _0801062C
	ldr r3, _08010628 @ =0xFFFFFBCD
	adds r0, r2, r3
	adds r0, r7, r0
	mov r1, sb
	str r0, [r1]
	movs r0, #0x35
	subs r0, r0, r2
	mov r3, sl
	str r0, [r3]
	b _08010648
	.align 2, 0
_08010628: .4byte 0xFFFFFBCD
_0801062C:
	ldr r1, _08010658 @ =0xFFFFFBCE
	adds r0, r2, r1
	mov r3, sb
	str r0, [r3]
	lsls r0, r4, #2
	add r0, r8
	subs r0, #4
	ldr r0, [r0]
	bl _hi0bits
	lsls r1, r4, #5
	subs r1, r1, r0
	mov r0, sl
	str r1, [r0]
_08010648:
	adds r0, r6, #0
	add sp, #8
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08010658: .4byte 0xFFFFFBCE

	thumb_func_start _ratio
_ratio: @ 0x0801065C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	adds r4, r0, #0
	adds r5, r1, #0
	mov r1, sp
	bl _b2d
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	add r1, sp, #4
	adds r0, r5, #0
	bl _b2d
	adds r7, r1, #0
	adds r6, r0, #0
	ldr r2, [sp]
	ldr r0, [sp, #4]
	subs r2, r2, r0
	ldr r0, [r4, #0x10]
	ldr r1, [r5, #0x10]
	subs r0, r0, r1
	lsls r0, r0, #5
	adds r0, r2, r0
	cmp r0, #0
	ble _08010698
	lsls r0, r0, #0x14
	ldr r1, [sp, #8]
	adds r0, r1, r0
	str r0, [sp, #8]
	b _0801069C
_08010698:
	lsls r0, r0, #0x14
	subs r6, r6, r0
_0801069C:
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	adds r3, r7, #0
	adds r2, r6, #0
	bl __divdf3
	add sp, #0x10
	pop {r4, r5, r6, r7, pc}

	thumb_func_start _mprec_log10
_mprec_log10: @ 0x080106AC
	push {r4, lr}
	adds r4, r0, #0
	ldr r1, _080106C8 @ =0x00000000
	ldr r0, _080106C4 @ =0x3FF00000
	cmp r4, #0x17
	bgt _080106D0
	ldr r0, _080106CC @ =gUnk_0808E494
	lsls r1, r4, #3
	adds r1, r1, r0
	ldr r0, [r1]
	ldr r1, [r1, #4]
	b _080106E2
	.align 2, 0
_080106C4: .4byte 0x3FF00000
_080106C8: .4byte 0x00000000
_080106CC: .4byte gUnk_0808E494
_080106D0:
	cmp r4, #0
	ble _080106E2
_080106D4:
	ldr r3, _080106E8 @ =0x00000000
	ldr r2, _080106E4 @ =0x40240000
	bl __muldf3
	subs r4, #1
	cmp r4, #0
	bgt _080106D4
_080106E2:
	pop {r4, pc}
	.align 2, 0
_080106E4: .4byte 0x40240000
_080106E8: .4byte 0x00000000

	thumb_func_start isinf
isinf: @ 0x080106EC
	ldr r3, _08010708 @ =0x7FFFFFFF
	ands r3, r0
	rsbs r2, r1, #0
	orrs r2, r1
	lsrs r2, r2, #0x1f
	orrs r3, r2
	ldr r0, _0801070C @ =0x7FF00000
	subs r3, r0, r3
	rsbs r0, r3, #0
	orrs r3, r0
	lsrs r3, r3, #0x1f
	movs r0, #1
	subs r0, r0, r3
	bx lr
	.align 2, 0
_08010708: .4byte 0x7FFFFFFF
_0801070C: .4byte 0x7FF00000

	thumb_func_start isnan
isnan: @ 0x08010710
	ldr r3, _08010728 @ =0x7FFFFFFF
	ands r3, r0
	rsbs r2, r1, #0
	orrs r2, r1
	lsrs r2, r2, #0x1f
	orrs r3, r2
	ldr r0, _0801072C @ =0x7FF00000
	subs r3, r0, r3
	lsrs r3, r3, #0x1f
	adds r0, r3, #0
	bx lr
	.align 2, 0
_08010728: .4byte 0x7FFFFFFF
_0801072C: .4byte 0x7FF00000

	thumb_func_start _sbrk_r
_sbrk_r: @ 0x08010730
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	ldr r4, _08010758 @ =gUnk_03002570
	movs r1, #0
	str r1, [r4]
	bl _sbrk
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08010752
	ldr r0, [r4]
	cmp r0, #0
	beq _08010752
	str r0, [r5]
_08010752:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_08010758: .4byte gUnk_03002570

	thumb_func_start __sread
__sread: @ 0x0801075C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r2, #0
	ldr r0, [r5, #0x54]
	movs r2, #0xe
	ldrsh r1, [r5, r2]
	adds r2, r4, #0
	bl _read_r
	adds r1, r0, #0
	cmp r1, #0
	blt _0801077E
	ldr r0, [r5, #0x50]
	adds r0, r0, r1
	str r0, [r5, #0x50]
	b _08010786
_0801077E:
	ldr r0, _0801078C @ =0xFFFFEFFF
	ldrh r2, [r5, #0xc]
	ands r0, r2
	strh r0, [r5, #0xc]
_08010786:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_0801078C: .4byte 0xFFFFEFFF

	thumb_func_start __swrite
__swrite: @ 0x08010790
	push {r4, r5, r6, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	movs r0, #0x80
	lsls r0, r0, #1
	ldrh r1, [r4, #0xc]
	ands r0, r1
	cmp r0, #0
	beq _080107B2
	ldr r0, [r4, #0x54]
	movs r2, #0xe
	ldrsh r1, [r4, r2]
	movs r2, #0
	movs r3, #2
	bl _lseek_r
_080107B2:
	ldr r0, _080107CC @ =0xFFFFEFFF
	ldrh r1, [r4, #0xc]
	ands r0, r1
	strh r0, [r4, #0xc]
	ldr r0, [r4, #0x54]
	movs r2, #0xe
	ldrsh r1, [r4, r2]
	adds r2, r5, #0
	adds r3, r6, #0
	bl _write_r
	pop {r4, r5, r6, pc}
	.align 2, 0
_080107CC: .4byte 0xFFFFEFFF

	thumb_func_start __sseek
__sseek: @ 0x080107D0
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	adds r3, r2, #0
	ldr r0, [r5, #0x54]
	movs r2, #0xe
	ldrsh r1, [r5, r2]
	adds r2, r4, #0
	bl _lseek_r
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _080107FC
	ldr r0, _080107F8 @ =0xFFFFEFFF
	ldrh r2, [r5, #0xc]
	ands r0, r2
	strh r0, [r5, #0xc]
	b _0801080A
	.align 2, 0
_080107F8: .4byte 0xFFFFEFFF
_080107FC:
	movs r2, #0x80
	lsls r2, r2, #5
	adds r0, r2, #0
	ldrh r2, [r5, #0xc]
	orrs r0, r2
	strh r0, [r5, #0xc]
	str r1, [r5, #0x50]
_0801080A:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start __sclose
__sclose: @ 0x08010810
	push {lr}
	ldr r2, [r0, #0x54]
	movs r3, #0xe
	ldrsh r1, [r0, r3]
	adds r0, r2, #0
	bl _close_r
	pop {pc}

	thumb_func_start strlen
strlen: @ 0x08010820
	push {r4, r5, lr}
	adds r1, r0, #0
	adds r5, r1, #0
	movs r0, #3
	ands r0, r1
	cmp r0, #0
	bne _08010858
	adds r2, r1, #0
	ldr r1, [r2]
	ldr r4, _0801083C @ =0xFEFEFEFF
	adds r0, r1, r4
	bics r0, r1
	ldr r3, _08010840 @ =0x80808080
	b _0801084C
	.align 2, 0
_0801083C: .4byte 0xFEFEFEFF
_08010840: .4byte 0x80808080
_08010844:
	adds r2, #4
	ldr r1, [r2]
	adds r0, r1, r4
	bics r0, r1
_0801084C:
	ands r0, r3
	cmp r0, #0
	beq _08010844
	adds r1, r2, #0
	b _08010858
_08010856:
	adds r1, #1
_08010858:
	ldrb r0, [r1]
	cmp r0, #0
	bne _08010856
	subs r0, r1, r5
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start findslot
findslot: @ 0x08010864
	adds r3, r0, #0
	movs r1, #0
	ldr r2, _0801086C @ =gUnk_03002438
	b _08010878
	.align 2, 0
_0801086C: .4byte gUnk_03002438
_08010870:
	adds r2, #8
	adds r1, #1
	cmp r1, #0x13
	bgt _0801087E
_08010878:
	ldr r0, [r2]
	cmp r0, r3
	bne _08010870
_0801087E:
	adds r0, r1, #0
	bx lr
	.align 2, 0

	thumb_func_start remap_handle
remap_handle: @ 0x08010884
	adds r2, r0, #0
	ldr r0, _08010898 @ =gUnk_02030CDC
	ldr r1, [r0]
	ldr r0, [r1, #4]
	movs r3, #0xe
	ldrsh r0, [r0, r3]
	cmp r2, r0
	bne _080108A0
	ldr r0, _0801089C @ =gUnk_0300242C
	b _080108C6
	.align 2, 0
_08010898: .4byte gUnk_02030CDC
_0801089C: .4byte gUnk_0300242C
_080108A0:
	ldr r0, [r1, #8]
	movs r3, #0xe
	ldrsh r0, [r0, r3]
	cmp r2, r0
	bne _080108B4
	ldr r0, _080108B0 @ =gUnk_03002430
	b _080108C6
	.align 2, 0
_080108B0: .4byte gUnk_03002430
_080108B4:
	ldr r0, [r1, #0xc]
	movs r1, #0xe
	ldrsh r0, [r0, r1]
	cmp r2, r0
	beq _080108C4
	adds r0, r2, #0
	subs r0, #0x20
	b _080108C8
_080108C4:
	ldr r0, _080108CC @ =gUnk_03002434
_080108C6:
	ldr r0, [r0]
_080108C8:
	bx lr
	.align 2, 0
_080108CC: .4byte gUnk_03002434

	thumb_func_start initialise_monitor_handles
initialise_monitor_handles: @ 0x080108D0
	push {r4, r5, lr}
	sub sp, #0xc
	ldr r4, _0801092C @ =gUnk_0808E5AC
	str r4, [sp]
	movs r3, #3
	str r3, [sp, #8]
	movs r0, #0
	str r0, [sp, #4]
	movs r5, #1
	adds r0, r5, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	ldr r5, _08010930 @ =gUnk_0300242C
	str r2, [r5]
	str r4, [sp]
	str r3, [sp, #8]
	movs r0, #4
	str r0, [sp, #4]
	ldr r3, _08010934 @ =gUnk_03002430
	movs r4, #1
	adds r0, r4, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	ldr r0, _08010938 @ =gUnk_03002434
	str r2, [r0]
	str r2, [r3]
	ldr r2, _0801093C @ =gUnk_03002438
	adds r1, r2, #0
	subs r4, #2
	adds r0, r2, #0
	adds r0, #0x98
_08010912:
	str r4, [r0]
	subs r0, #8
	cmp r0, r1
	bge _08010912
	movs r0, #0
	ldr r1, [r5]
	str r1, [r2]
	str r0, [r2, #4]
	ldr r1, [r3]
	str r1, [r2, #8]
	str r0, [r2, #0xc]
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0
_0801092C: .4byte gUnk_0808E5AC
_08010930: .4byte gUnk_0300242C
_08010934: .4byte gUnk_03002430
_08010938: .4byte gUnk_03002434
_0801093C: .4byte gUnk_03002438

	thumb_func_start get_errno
get_errno: @ 0x08010940
	push {r4, lr}
	movs r3, #0x13
	movs r4, #0
	adds r0, r3, #0
	adds r1, r4, #0
	svc #0xab
	adds r2, r0, #0
	adds r0, r2, #0
	pop {r4, pc}
	.align 2, 0

	thumb_func_start error
error: @ 0x08010954
	push {r4, r5, lr}
	adds r5, r0, #0
	bl __errno_0
	adds r4, r0, #0
	bl get_errno
	str r0, [r4]
	adds r0, r5, #0
	pop {r4, r5, pc}

	thumb_func_start wrap
wrap: @ 0x08010968
	push {lr}
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	beq _08010978
	adds r0, r1, #0
	b _0801097E
_08010978:
	adds r0, r1, #0
	bl error
_0801097E:
	pop {pc}

	thumb_func_start _swiread
_swiread: @ 0x08010980
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r5, r2, #0
	bl remap_handle
	str r0, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	movs r3, #6
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	adds r0, r2, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start _read
_read: @ 0x080109A4
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r7, r2, #0
	bl remap_handle
	bl findslot
	adds r6, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r7, #0
	bl _swiread
	cmp r0, #0
	bge _080109CE
	movs r0, #1
	rsbs r0, r0, #0
	bl error
	b _080109E4
_080109CE:
	subs r2, r7, r0
	cmp r6, #0x14
	beq _080109E2
	ldr r0, _080109E8 @ =gUnk_03002438
	lsls r1, r6, #3
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
_080109E2:
	adds r0, r2, #0
_080109E4:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080109E8: .4byte gUnk_03002438

	thumb_func_start _swilseek
_swilseek: @ 0x080109EC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #8
	mov r8, r0
	adds r5, r1, #0
	adds r4, r2, #0
	bl remap_handle
	adds r7, r0, #0
	bl findslot
	adds r6, r0, #0
	cmp r4, #1
	bne _08010A22
	cmp r6, #0x14
	bne _08010A14
	movs r0, #1
	rsbs r0, r0, #0
	b _08010A64
_08010A14:
	ldr r0, _08010A6C @ =gUnk_03002438
	lsls r1, r6, #3
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	adds r5, r5, r0
	movs r4, #0
_08010A22:
	cmp r4, #2
	bne _08010A34
	str r7, [sp]
	movs r3, #0xc
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	adds r5, r5, r2
_08010A34:
	mov r0, r8
	bl remap_handle
	str r0, [sp]
	str r5, [sp, #4]
	movs r3, #0xa
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	cmp r6, #0x14
	beq _08010A5A
	cmp r2, #0
	bne _08010A5A
	ldr r0, _08010A6C @ =gUnk_03002438
	lsls r1, r6, #3
	adds r0, #4
	adds r1, r1, r0
	str r5, [r1]
_08010A5A:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r2, #0
	bne _08010A64
	adds r0, r5, #0
_08010A64:
	add sp, #8
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08010A6C: .4byte gUnk_03002438

	thumb_func_start _lseek
_lseek: @ 0x08010A70
	push {lr}
	bl _swilseek
	bl wrap
	pop {pc}

	thumb_func_start _swiwrite
_swiwrite: @ 0x08010A7C
	push {r4, r5, lr}
	sub sp, #0xc
	adds r4, r1, #0
	adds r5, r2, #0
	bl remap_handle
	str r0, [sp]
	str r4, [sp, #4]
	str r5, [sp, #8]
	movs r3, #5
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	adds r0, r2, #0
	add sp, #0xc
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start _write
_write: @ 0x08010AA0
	push {r4, r5, r6, r7, lr}
	adds r4, r0, #0
	adds r5, r1, #0
	adds r6, r2, #0
	bl remap_handle
	bl findslot
	adds r7, r0, #0
	adds r0, r4, #0
	adds r1, r5, #0
	adds r2, r6, #0
	bl _swiwrite
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, r1
	beq _08010AC8
	cmp r0, r6
	bne _08010AD0
_08010AC8:
	adds r0, r1, #0
	bl error
	b _08010AE6
_08010AD0:
	subs r2, r6, r0
	cmp r7, #0x14
	beq _08010AE4
	ldr r0, _08010AE8 @ =gUnk_03002438
	lsls r1, r7, #3
	adds r0, #4
	adds r1, r1, r0
	ldr r0, [r1]
	adds r0, r0, r2
	str r0, [r1]
_08010AE4:
	adds r0, r2, #0
_08010AE6:
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08010AE8: .4byte gUnk_03002438

	thumb_func_start _swiopen
_swiopen: @ 0x08010AEC
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	sub sp, #0xc
	adds r7, r0, #0
	adds r4, r1, #0
	movs r5, #0
	movs r6, #1
	rsbs r6, r6, #0
	adds r0, r6, #0
	bl findslot
	mov r8, r0
	cmp r0, #0x14
	bne _08010B0E
	adds r0, r6, #0
	b _08010B82
_08010B0E:
	movs r0, #2
	ands r0, r4
	cmp r0, #0
	beq _08010B18
	movs r5, #2
_08010B18:
	movs r0, #0x80
	lsls r0, r0, #2
	ands r0, r4
	cmp r0, #0
	beq _08010B26
	movs r0, #4
	orrs r5, r0
_08010B26:
	movs r0, #0x80
	lsls r0, r0, #3
	ands r0, r4
	cmp r0, #0
	beq _08010B34
	movs r0, #4
	orrs r5, r0
_08010B34:
	movs r1, #8
	ands r4, r1
	cmp r4, #0
	beq _08010B44
	movs r0, #5
	rsbs r0, r0, #0
	ands r5, r0
	orrs r5, r1
_08010B44:
	str r7, [sp]
	adds r0, r7, #0
	bl strlen
	str r0, [sp, #8]
	str r5, [sp, #4]
	movs r2, #1
	adds r0, r2, #0
	mov r1, sp
	svc #0xab
	adds r3, r0, #0
	cmp r3, #0
	blt _08010B7C
	ldr r0, _08010B78 @ =gUnk_03002438
	mov r1, r8
	lsls r2, r1, #3
	adds r1, r2, r0
	str r3, [r1]
	adds r0, #4
	adds r2, r2, r0
	movs r0, #0
	str r0, [r2]
	adds r0, r3, #0
	adds r0, #0x20
	b _08010B82
	.align 2, 0
_08010B78: .4byte gUnk_03002438
_08010B7C:
	adds r0, r3, #0
	bl error
_08010B82:
	add sp, #0xc
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start _open
_open: @ 0x08010B8C
	push {r1, r2, r3}
	push {lr}
	ldr r1, [sp, #4]
	bl _swiopen
	bl wrap
	pop {r3}
	add sp, #0xc
	bx r3

	thumb_func_start _swiclose
_swiclose: @ 0x08010BA0
	push {lr}
	sub sp, #4
	bl remap_handle
	str r0, [sp]
	bl findslot
	adds r1, r0, #0
	cmp r1, #0x14
	beq _08010BC0
	ldr r0, _08010BD0 @ =gUnk_03002438
	lsls r1, r1, #3
	adds r1, r1, r0
	movs r0, #1
	rsbs r0, r0, #0
	str r0, [r1]
_08010BC0:
	movs r3, #2
	adds r0, r3, #0
	mov r1, sp
	svc #0xab
	adds r2, r0, #0
	adds r0, r2, #0
	add sp, #4
	pop {pc}
	.align 2, 0
_08010BD0: .4byte gUnk_03002438

	thumb_func_start _close
_close: @ 0x08010BD4
	push {lr}
	bl _swiclose
	bl wrap
	pop {pc}

	thumb_func_start _exit
_exit: @ 0x08010BE0
	mov ip, r3
	mov r3, r8
	push {r3}
	mov r3, ip
	movs r2, #0x18
	ldr r3, _08010BFC @ =0x00020026
	adds r0, r2, #0
	adds r1, r3, #0
	svc #0xab
	mov r8, r0
	pop {r3}
	mov r8, r3
	bx lr
	.align 2, 0
_08010BFC: .4byte 0x00020026

	thumb_func_start _kill
_kill: @ 0x08010C00
	mov ip, r3
	mov r3, r8
	push {r3}
	mov r3, ip
	movs r2, #0x18
	ldr r3, _08010C1C @ =0x00020026
	adds r0, r2, #0
	adds r1, r3, #0
	svc #0xab
	mov r8, r0
	pop {r3}
	mov r8, r3
	bx lr
	.align 2, 0
_08010C1C: .4byte 0x00020026

	thumb_func_start _getpid
_getpid: @ 0x08010C20
	movs r0, #1
	bx lr

	thumb_func_start _sbrk
_sbrk: @ 0x08010C24
	push {r4, r5, r6, lr}
	adds r6, r0, #0
	ldr r4, _08010C54 @ =gUnk_03002428
	ldr r0, [r4]
	cmp r0, #0
	bne _08010C34
	ldr r0, _08010C58 @ =gUnk_02038000
	str r0, [r4]
_08010C34:
	ldr r5, [r4]
	adds r0, r5, r6
	cmp r0, sp
	bls _08010C4A
	ldr r1, _08010C5C @ =gUnk_0808E5B0
	movs r0, #1
	movs r2, #0x20
	bl _write
	bl abort
_08010C4A:
	ldr r0, [r4]
	adds r0, r0, r6
	str r0, [r4]
	adds r0, r5, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_08010C54: .4byte gUnk_03002428
_08010C58: .4byte gUnk_02038000
_08010C5C: .4byte gUnk_0808E5B0

	thumb_func_start _fstat
_fstat: @ 0x08010C60
	movs r0, #0x80
	lsls r0, r0, #6
	str r0, [r1, #4]
	movs r0, #0
	bx lr
	.align 2, 0

	thumb_func_start _unlink
_unlink: @ 0x08010C6C
	movs r0, #1
	rsbs r0, r0, #0
	bx lr
	.align 2, 0

	thumb_func_start _raise
_raise: @ 0x08010C74
	bx lr
	.align 2, 0

	thumb_func_start _gettimeofday
_gettimeofday: @ 0x08010C78
	push {r4, r5, lr}
	adds r2, r0, #0
	adds r3, r1, #0
	cmp r2, #0
	beq _08010C96
	movs r4, #0x11
	movs r5, #0
	adds r0, r4, #0
	adds r1, r5, #0
	svc #0xab
	adds r5, r0, #0
	adds r4, r5, #0
	str r4, [r2]
	movs r0, #0
	str r0, [r2, #4]
_08010C96:
	cmp r3, #0
	beq _08010CA0
	movs r0, #0
	str r0, [r3]
	str r0, [r3, #4]
_08010CA0:
	movs r0, #0
	pop {r4, r5, pc}

	thumb_func_start _times
_times: @ 0x08010CA4
	push {r4, r5, lr}
	adds r2, r0, #0
	movs r4, #0x10
	movs r5, #0
	adds r0, r4, #0
	adds r1, r5, #0
	svc #0xab
	adds r3, r0, #0
	cmp r2, #0
	beq _08010CC2
	str r3, [r2]
	movs r0, #0
	str r0, [r2, #4]
	str r0, [r2, #8]
	str r0, [r2, #0xc]
_08010CC2:
	adds r0, r3, #0
	pop {r4, r5, pc}
	.align 2, 0

	thumb_func_start _write_r
_write_r: @ 0x08010CC8
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r4, _08010CF4 @ =gUnk_03002570
	movs r3, #0
	str r3, [r4]
	bl _write
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08010CEE
	ldr r0, [r4]
	cmp r0, #0
	beq _08010CEE
	str r0, [r5]
_08010CEE:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_08010CF4: .4byte gUnk_03002570

	thumb_func_start _calloc_r
_calloc_r: @ 0x08010CF8
	push {r4, lr}
	muls r1, r2, r1
	bl _malloc_r
	adds r4, r0, #0
	cmp r4, #0
	bne _08010D0A
	movs r0, #0
	b _08010D4E
_08010D0A:
	adds r0, r4, #0
	subs r0, #8
	ldr r0, [r0, #4]
	movs r1, #4
	rsbs r1, r1, #0
	ands r0, r1
	subs r2, r0, #4
	cmp r2, #0x24
	bhi _08010D44
	adds r1, r4, #0
	cmp r2, #0x13
	bls _08010D3A
	movs r0, #0
	stm r1!, {r0}
	str r0, [r4, #4]
	adds r1, #4
	cmp r2, #0x1b
	bls _08010D3A
	stm r1!, {r0}
	stm r1!, {r0}
	cmp r2, #0x23
	bls _08010D3A
	stm r1!, {r0}
	stm r1!, {r0}
_08010D3A:
	movs r0, #0
	stm r1!, {r0}
	stm r1!, {r0}
	str r0, [r1]
	b _08010D4C
_08010D44:
	adds r0, r4, #0
	movs r1, #0
	bl memset
_08010D4C:
	adds r0, r4, #0
_08010D4E:
	pop {r4, pc}

	thumb_func_start _close_r
_close_r: @ 0x08010D50
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	ldr r4, _08010D78 @ =gUnk_03002570
	movs r1, #0
	str r1, [r4]
	bl _close
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08010D72
	ldr r0, [r4]
	cmp r0, #0
	beq _08010D72
	str r0, [r5]
_08010D72:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_08010D78: .4byte gUnk_03002570

	thumb_func_start __errno_0
__errno_0: @ 0x08010D7C
	ldr r0, _08010D84 @ =gUnk_02030CDC
	ldr r0, [r0]
	bx lr
	.align 2, 0
_08010D84: .4byte gUnk_02030CDC

	thumb_func_start _fstat_r
_fstat_r: @ 0x08010D88
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	ldr r4, _08010DB0 @ =gUnk_03002570
	movs r2, #0
	str r2, [r4]
	bl _fstat
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08010DAC
	ldr r0, [r4]
	cmp r0, #0
	beq _08010DAC
	str r0, [r5]
_08010DAC:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_08010DB0: .4byte gUnk_03002570

	thumb_func_start abort
abort: @ 0x08010DB4
	mov ip, r3
	mov r3, r8
	push {r3}
	mov r3, ip
	movs r2, #0x18
	ldr r3, _08010DD0 @ =0x00020022
	adds r0, r2, #0
	adds r1, r3, #0
	svc #0xab
	mov r8, r0
	pop {r3}
	mov r8, r3
	bx lr
	.align 2, 0
_08010DD0: .4byte 0x00020022

	thumb_func_start isatty
isatty: @ 0x08010DD4
	movs r0, #1
	bx lr

	thumb_func_start alarm
alarm: @ 0x08010DD8
	bx lr
	.align 2, 0

	thumb_func_start _lseek_r
_lseek_r: @ 0x08010DDC
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r4, _08010E08 @ =gUnk_03002570
	movs r3, #0
	str r3, [r4]
	bl _lseek
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08010E02
	ldr r0, [r4]
	cmp r0, #0
	beq _08010E02
	str r0, [r5]
_08010E02:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_08010E08: .4byte gUnk_03002570

	thumb_func_start _read_r
_read_r: @ 0x08010E0C
	push {r4, r5, lr}
	adds r5, r0, #0
	adds r0, r1, #0
	adds r1, r2, #0
	adds r2, r3, #0
	ldr r4, _08010E38 @ =gUnk_03002570
	movs r3, #0
	str r3, [r4]
	bl _read
	adds r1, r0, #0
	movs r0, #1
	rsbs r0, r0, #0
	cmp r1, r0
	bne _08010E32
	ldr r0, [r4]
	cmp r0, #0
	beq _08010E32
	str r0, [r5]
_08010E32:
	adds r0, r1, #0
	pop {r4, r5, pc}
	.align 2, 0
_08010E38: .4byte gUnk_03002570

	thumb_func_start __modsi3
__modsi3: @ 0x08010E3C
	movs r3, #1
	cmp r1, #0
	beq _08010F00
	bpl _08010E46
	rsbs r1, r1, #0
_08010E46:
	push {r4}
	push {r0}
	cmp r0, #0
	bpl _08010E50
	rsbs r0, r0, #0
_08010E50:
	cmp r0, r1
	blo _08010EF4
	movs r4, #1
	lsls r4, r4, #0x1c
_08010E58:
	cmp r1, r4
	bhs _08010E66
	cmp r1, r0
	bhs _08010E66
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _08010E58
_08010E66:
	lsls r4, r4, #3
_08010E68:
	cmp r1, r4
	bhs _08010E76
	cmp r1, r0
	bhs _08010E76
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _08010E68
_08010E76:
	movs r2, #0
	cmp r0, r1
	blo _08010E7E
	subs r0, r0, r1
_08010E7E:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _08010E90
	subs r0, r0, r4
	mov ip, r3
	movs r4, #1
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_08010E90:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _08010EA2
	subs r0, r0, r4
	mov ip, r3
	movs r4, #2
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_08010EA2:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _08010EB4
	subs r0, r0, r4
	mov ip, r3
	movs r4, #3
	rors r3, r4
	orrs r2, r3
	mov r3, ip
_08010EB4:
	mov ip, r3
	cmp r0, #0
	beq _08010EC2
	lsrs r3, r3, #4
	beq _08010EC2
	lsrs r1, r1, #4
	b _08010E76
_08010EC2:
	movs r4, #0xe
	lsls r4, r4, #0x1c
	ands r2, r4
	beq _08010EF4
	mov r3, ip
	movs r4, #3
	rors r3, r4
	tst r2, r3
	beq _08010ED8
	lsrs r4, r1, #3
	adds r0, r0, r4
_08010ED8:
	mov r3, ip
	movs r4, #2
	rors r3, r4
	tst r2, r3
	beq _08010EE6
	lsrs r4, r1, #2
	adds r0, r0, r4
_08010EE6:
	mov r3, ip
	movs r4, #1
	rors r3, r4
	tst r2, r3
	beq _08010EF4
	lsrs r4, r1, #1
	adds r0, r0, r4
_08010EF4:
	pop {r4}
	cmp r4, #0
	bpl _08010EFC
	rsbs r0, r0, #0
_08010EFC:
	pop {r4}
	mov pc, lr
_08010F00:
	push {lr}
	bl sub_0800CC68
	movs r0, #0
	pop {pc}
	.align 2, 0

	thumb_func_start __udivsi3
__udivsi3: @ 0x08010F0C
	cmp r1, #0
	beq _08010F7A
	movs r3, #1
	movs r2, #0
	push {r4}
	cmp r0, r1
	blo _08010F74
	movs r4, #1
	lsls r4, r4, #0x1c
_08010F1E:
	cmp r1, r4
	bhs _08010F2C
	cmp r1, r0
	bhs _08010F2C
	lsls r1, r1, #4
	lsls r3, r3, #4
	b _08010F1E
_08010F2C:
	lsls r4, r4, #3
_08010F2E:
	cmp r1, r4
	bhs _08010F3C
	cmp r1, r0
	bhs _08010F3C
	lsls r1, r1, #1
	lsls r3, r3, #1
	b _08010F2E
_08010F3C:
	cmp r0, r1
	blo _08010F44
	subs r0, r0, r1
	orrs r2, r3
_08010F44:
	lsrs r4, r1, #1
	cmp r0, r4
	blo _08010F50
	subs r0, r0, r4
	lsrs r4, r3, #1
	orrs r2, r4
_08010F50:
	lsrs r4, r1, #2
	cmp r0, r4
	blo _08010F5C
	subs r0, r0, r4
	lsrs r4, r3, #2
	orrs r2, r4
_08010F5C:
	lsrs r4, r1, #3
	cmp r0, r4
	blo _08010F68
	subs r0, r0, r4
	lsrs r4, r3, #3
	orrs r2, r4
_08010F68:
	cmp r0, #0
	beq _08010F74
	lsrs r3, r3, #4
	beq _08010F74
	lsrs r1, r1, #4
	b _08010F3C
_08010F74:
	adds r0, r2, #0
	pop {r4}
	mov pc, lr
_08010F7A:
	push {lr}
	bl sub_0800CC68
	movs r0, #0
	pop {pc}

	thumb_func_start __pack_d
__pack_d: @ 0x08010F84
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r1, r0, #0
	ldr r4, [r1, #0xc]
	ldr r5, [r1, #0x10]
	ldr r7, [r1, #4]
	movs r6, #0
	movs r2, #0
	ldr r0, [r1]
	cmp r0, #1
	bhi _08010F9C
	movs r2, #1
_08010F9C:
	cmp r2, #0
	beq _08010FBC
	ldr r6, _08010FB0 @ =0x000007FF
	ldr r2, _08010FB4 @ =0x00000000
	ldr r3, _08010FB8 @ =0x00080000
	adds r0, r4, #0
	adds r1, r5, #0
	orrs r1, r3
	b _08011074
	.align 2, 0
_08010FB0: .4byte 0x000007FF
_08010FB4: .4byte 0x00000000
_08010FB8: .4byte 0x00080000
_08010FBC:
	movs r2, #0
	cmp r0, #4
	bne _08010FC4
	movs r2, #1
_08010FC4:
	cmp r2, #0
	bne _08011010
	movs r2, #0
	cmp r0, #2
	bne _08010FD0
	movs r2, #1
_08010FD0:
	cmp r2, #0
	beq _08010FDA
	movs r4, #0
	movs r5, #0
	b _08011078
_08010FDA:
	adds r0, r5, #0
	orrs r0, r4
	cmp r0, #0
	beq _08011078
	ldr r2, [r1, #8]
	ldr r0, _08010FF8 @ =0xFFFFFC02
	cmp r2, r0
	bge _0801100A
	subs r2, r0, r2
	cmp r2, #0x38
	ble _08010FFC
	movs r4, #0
	movs r5, #0
	b _0801106A
	.align 2, 0
_08010FF8: .4byte 0xFFFFFC02
_08010FFC:
	adds r1, r5, #0
	adds r0, r4, #0
	bl __lshrdi3
	adds r5, r1, #0
	adds r4, r0, #0
	b _0801106A
_0801100A:
	ldr r0, _08011018 @ =0x000003FF
	cmp r2, r0
	ble _08011020
_08011010:
	ldr r6, _0801101C @ =0x000007FF
	movs r4, #0
	movs r5, #0
	b _08011078
	.align 2, 0
_08011018: .4byte 0x000003FF
_0801101C: .4byte 0x000007FF
_08011020:
	ldr r0, _08011048 @ =0x000003FF
	adds r6, r2, r0
	movs r0, #0xff
	adds r1, r4, #0
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _0801104C
	cmp r2, #0
	bne _0801104C
	adds r0, #1
	adds r1, r4, #0
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	beq _08011054
	movs r0, #0x80
	movs r1, #0
	b _08011050
	.align 2, 0
_08011048: .4byte 0x000003FF
_0801104C:
	movs r0, #0x7f
	movs r1, #0
_08011050:
	adds r4, r4, r0
	adcs r5, r1
_08011054:
	ldr r0, _080110B8 @ =0x1FFFFFFF
	cmp r5, r0
	bls _0801106A
	lsls r3, r5, #0x1f
	lsrs r2, r4, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #1
	adds r5, r1, #0
	adds r4, r0, #0
	adds r6, #1
_0801106A:
	lsls r3, r5, #0x18
	lsrs r2, r4, #8
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #8
_08011074:
	adds r5, r1, #0
	adds r4, r0, #0
_08011078:
	str r4, [sp]
	ldr r2, _080110BC @ =0x000FFFFF
	ands r2, r5
	ldr r0, [sp, #4]
	ldr r1, _080110C0 @ =0xFFF00000
	ands r0, r1
	orrs r0, r2
	str r0, [sp, #4]
	mov r2, sp
	ldr r1, _080110C4 @ =0x000007FF
	adds r0, r1, #0
	ands r6, r0
	lsls r1, r6, #4
	ldr r0, _080110C8 @ =0xFFFF800F
	ldrh r3, [r2, #6]
	ands r0, r3
	orrs r0, r1
	strh r0, [r2, #6]
	lsls r1, r7, #7
	movs r0, #0x7f
	ldrb r3, [r2, #7]
	ands r0, r3
	orrs r0, r1
	strb r0, [r2, #7]
	ldr r1, [sp]
	ldr r0, [sp, #4]
	str r0, [sp]
	str r1, [sp, #4]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add sp, #8
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080110B8: .4byte 0x1FFFFFFF
_080110BC: .4byte 0x000FFFFF
_080110C0: .4byte 0xFFF00000
_080110C4: .4byte 0x000007FF
_080110C8: .4byte 0xFFFF800F

	thumb_func_start __unpack_d
__unpack_d: @ 0x080110CC
	push {r4, r5, r6, r7, lr}
	sub sp, #8
	adds r2, r0, #0
	adds r6, r1, #0
	ldr r1, [r2, #4]
	str r1, [sp]
	ldr r0, [r2]
	str r0, [sp, #4]
	mov r2, sp
	adds r4, r1, #0
	lsls r0, r0, #0xc
	lsrs r5, r0, #0xc
	ldrh r3, [r2, #6]
	lsls r0, r3, #0x11
	lsrs r3, r0, #0x15
	ldrb r2, [r2, #7]
	lsrs r0, r2, #7
	str r0, [r6, #4]
	cmp r3, #0
	bne _08011140
	orrs r1, r5
	cmp r1, #0
	bne _08011100
	movs r0, #2
	str r0, [r6]
	b _08011194
_08011100:
	ldr r0, _08011138 @ =0xFFFFFC02
	str r0, [r6, #8]
	lsrs r3, r4, #0x18
	lsls r2, r5, #8
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #8
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #3
	str r0, [r6]
	ldr r0, _0801113C @ =0x0FFFFFFF
	cmp r5, r0
	bhi _08011170
	adds r7, r0, #0
_0801111E:
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [r6, #8]
	subs r0, #1
	str r0, [r6, #8]
	cmp r5, r7
	bls _0801111E
	b _08011170
	.align 2, 0
_08011138: .4byte 0xFFFFFC02
_0801113C: .4byte 0x0FFFFFFF
_08011140:
	ldr r0, _08011154 @ =0x000007FF
	cmp r3, r0
	bne _08011176
	orrs r1, r5
	cmp r1, #0
	bne _08011158
	movs r0, #4
	str r0, [r6]
	b _08011194
	.align 2, 0
_08011154: .4byte 0x000007FF
_08011158:
	movs r2, #0x80
	lsls r2, r2, #0xc
	movs r0, #0
	adds r1, r5, #0
	ands r1, r2
	orrs r1, r0
	cmp r1, #0
	beq _0801116E
	movs r0, #1
	str r0, [r6]
	b _08011170
_0801116E:
	str r1, [r6]
_08011170:
	str r4, [r6, #0xc]
	str r5, [r6, #0x10]
	b _08011194
_08011176:
	ldr r1, _08011198 @ =0xFFFFFC01
	adds r0, r3, r1
	str r0, [r6, #8]
	movs r0, #3
	str r0, [r6]
	lsrs r3, r4, #0x18
	lsls r2, r5, #8
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #8
	ldr r2, _0801119C @ =0x00000000
	ldr r3, _080111A0 @ =0x10000000
	orrs r1, r3
	str r0, [r6, #0xc]
	str r1, [r6, #0x10]
_08011194:
	add sp, #8
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08011198: .4byte 0xFFFFFC01
_0801119C: .4byte 0x00000000
_080111A0: .4byte 0x10000000

	thumb_func_start _fpadd_parts
_fpadd_parts: @ 0x080111A4
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0xc
	adds r3, r0, #0
	adds r4, r1, #0
	mov sl, r2
	movs r0, #0
	ldr r2, [r3]
	cmp r2, #1
	bhi _080111C0
	movs r0, #1
_080111C0:
	cmp r0, #0
	beq _080111C8
_080111C4:
	adds r0, r3, #0
	b _08011400
_080111C8:
	movs r1, #0
	ldr r0, [r4]
	cmp r0, #1
	bhi _080111D2
	movs r1, #1
_080111D2:
	cmp r1, #0
	bne _0801124A
	movs r1, #0
	cmp r2, #4
	bne _080111DE
	movs r1, #1
_080111DE:
	cmp r1, #0
	beq _08011200
	movs r1, #0
	cmp r0, #4
	bne _080111EA
	movs r1, #1
_080111EA:
	cmp r1, #0
	beq _080111C4
	ldr r1, [r3, #4]
	ldr r0, [r4, #4]
	cmp r1, r0
	beq _080111C4
	ldr r0, _080111FC @ =gUnk_030024D8
	b _08011400
	.align 2, 0
_080111FC: .4byte gUnk_030024D8
_08011200:
	movs r1, #0
	cmp r0, #4
	bne _08011208
	movs r1, #1
_08011208:
	cmp r1, #0
	bne _0801124A
	movs r1, #0
	cmp r0, #2
	bne _08011214
	movs r1, #1
_08011214:
	cmp r1, #0
	beq _0801123C
	movs r0, #0
	cmp r2, #2
	bne _08011220
	movs r0, #1
_08011220:
	cmp r0, #0
	beq _080111C4
	mov r1, sl
	adds r0, r3, #0
	ldm r0!, {r2, r5, r6}
	stm r1!, {r2, r5, r6}
	ldm r0!, {r2, r5}
	stm r1!, {r2, r5}
	ldr r0, [r3, #4]
	ldr r1, [r4, #4]
	ands r0, r1
	mov r6, sl
	str r0, [r6, #4]
	b _080113FE
_0801123C:
	movs r1, #0
	ldr r0, [r3]
	cmp r0, #2
	bne _08011246
	movs r1, #1
_08011246:
	cmp r1, #0
	beq _0801124E
_0801124A:
	adds r0, r4, #0
	b _08011400
_0801124E:
	ldr r0, [r3, #8]
	mov sb, r0
	ldr r1, [r4, #8]
	mov r8, r1
	ldr r6, [r3, #0xc]
	ldr r7, [r3, #0x10]
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	str r0, [sp]
	str r1, [sp, #4]
	mov r1, sb
	mov r2, r8
	subs r0, r1, r2
	cmp r0, #0
	bge _0801126E
	rsbs r0, r0, #0
_0801126E:
	cmp r0, #0x3f
	bgt _080112EC
	ldr r3, [r3, #4]
	mov ip, r3
	ldr r4, [r4, #4]
	str r4, [sp, #8]
	cmp sb, r8
	ble _080112B8
	mov r3, sb
	mov r4, r8
	subs r3, r3, r4
	mov r8, r3
_08011286:
	movs r5, #1
	rsbs r5, r5, #0
	add r8, r5
	ldr r2, [sp]
	movs r0, #1
	ands r2, r0
	movs r3, #0
	ldr r1, [sp, #4]
	lsls r5, r1, #0x1f
	ldr r0, [sp]
	lsrs r4, r0, #1
	adds r0, r5, #0
	orrs r0, r4
	adds r4, r1, #0
	lsrs r1, r4, #1
	adds r5, r2, #0
	orrs r5, r0
	str r5, [sp]
	adds r4, r3, #0
	orrs r4, r1
	str r4, [sp, #4]
	mov r5, r8
	cmp r5, #0
	bne _08011286
	mov r8, sb
_080112B8:
	cmp r8, sb
	ble _08011308
	mov r0, r8
	mov r1, sb
	subs r0, r0, r1
	mov sb, r0
_080112C4:
	movs r2, #1
	rsbs r2, r2, #0
	add sb, r2
	movs r2, #1
	ands r2, r6
	movs r3, #0
	lsls r5, r7, #0x1f
	lsrs r4, r6, #1
	adds r0, r5, #0
	orrs r0, r4
	lsrs r1, r7, #1
	adds r6, r2, #0
	orrs r6, r0
	adds r7, r3, #0
	orrs r7, r1
	mov r3, sb
	cmp r3, #0
	bne _080112C4
	mov sb, r8
	b _08011308
_080112EC:
	cmp sb, r8
	ble _080112FA
	movs r0, #0
	movs r1, #0
	str r0, [sp]
	str r1, [sp, #4]
	b _08011300
_080112FA:
	mov sb, r8
	movs r6, #0
	movs r7, #0
_08011300:
	ldr r3, [r3, #4]
	mov ip, r3
	ldr r4, [r4, #4]
	str r4, [sp, #8]
_08011308:
	ldr r1, [sp, #8]
	cmp ip, r1
	beq _080113B0
	mov r2, ip
	cmp r2, #0
	beq _0801132A
	adds r1, r7, #0
	adds r0, r6, #0
	bl __negdi2
	adds r3, r1, #0
	adds r2, r0, #0
	ldr r4, [sp]
	ldr r5, [sp, #4]
	adds r2, r2, r4
	adcs r3, r5
	b _08011336
_0801132A:
	adds r3, r7, #0
	adds r2, r6, #0
	ldr r0, [sp]
	ldr r1, [sp, #4]
	subs r2, r2, r0
	sbcs r3, r1
_08011336:
	cmp r3, #0
	blt _0801134C
	movs r0, #0
	mov r1, sl
	str r0, [r1, #4]
	mov r4, sb
	str r4, [r1, #8]
	mov r5, sl
	str r2, [r5, #0xc]
	str r3, [r5, #0x10]
	b _08011364
_0801134C:
	movs r0, #1
	mov r6, sl
	str r0, [r6, #4]
	mov r0, sb
	str r0, [r6, #8]
	adds r1, r3, #0
	adds r0, r2, #0
	bl __negdi2
	mov r2, sl
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
_08011364:
	mov r4, sl
	ldr r2, [r4, #0xc]
	ldr r3, [r4, #0x10]
	movs r0, #1
	rsbs r0, r0, #0
	asrs r1, r0, #0x1f
_08011370:
	adds r2, r2, r0
	adcs r3, r1
	ldr r0, _080113AC @ =0x0FFFFFFF
	cmp r3, r0
	bhi _080113C8
	cmp r3, r0
	bne _08011386
	movs r0, #2
	rsbs r0, r0, #0
	cmp r2, r0
	bhi _080113C8
_08011386:
	mov r5, sl
	ldr r0, [r5, #0xc]
	ldr r1, [r5, #0x10]
	lsrs r3, r0, #0x1f
	lsls r2, r1, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r0, #1
	mov r6, sl
	str r0, [r6, #0xc]
	str r1, [r6, #0x10]
	ldr r2, [r6, #8]
	subs r2, #1
	str r2, [r6, #8]
	movs r2, #1
	rsbs r2, r2, #0
	asrs r3, r2, #0x1f
	b _08011370
	.align 2, 0
_080113AC: .4byte 0x0FFFFFFF
_080113B0:
	mov r0, ip
	mov r1, sl
	str r0, [r1, #4]
	mov r2, sb
	str r2, [r1, #8]
	ldr r3, [sp]
	ldr r4, [sp, #4]
	adds r6, r6, r3
	adcs r7, r4
	mov r4, sl
	str r6, [r4, #0xc]
	str r7, [r4, #0x10]
_080113C8:
	movs r0, #3
	mov r5, sl
	str r0, [r5]
	ldr r1, [r5, #0x10]
	ldr r0, _0801140C @ =0x1FFFFFFF
	cmp r1, r0
	bls _080113FE
	ldr r4, [r5, #0xc]
	ldr r5, [r5, #0x10]
	movs r2, #1
	adds r0, r4, #0
	ands r0, r2
	movs r1, #0
	lsls r6, r5, #0x1f
	mov r8, r6
	lsrs r6, r4, #1
	mov r2, r8
	orrs r2, r6
	lsrs r3, r5, #1
	orrs r0, r2
	orrs r1, r3
	mov r2, sl
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
	ldr r0, [r2, #8]
	adds r0, #1
	str r0, [r2, #8]
_080113FE:
	mov r0, sl
_08011400:
	add sp, #0xc
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801140C: .4byte 0x1FFFFFFF

	thumb_func_start __adddf3
__adddf3: @ 0x08011410
	push {r4, lr}
	sub sp, #0x4c
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	add r2, sp, #0x28
	mov r0, sp
	adds r1, r4, #0
	bl _fpadd_parts
	bl __pack_d
	add sp, #0x4c
	pop {r4, pc}

	thumb_func_start __subdf3
__subdf3: @ 0x08011440
	push {r4, lr}
	sub sp, #0x4c
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	ldr r0, [r4, #4]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #4]
	add r2, sp, #0x28
	mov r0, sp
	adds r1, r4, #0
	bl _fpadd_parts
	bl __pack_d
	add sp, #0x4c
	pop {r4, pc}

	thumb_func_start __muldf3
__muldf3: @ 0x08011478
	push {r4, r5, r6, r7, lr}
	mov r7, sl
	mov r6, sb
	mov r5, r8
	push {r5, r6, r7}
	sub sp, #0x74
	str r0, [sp, #0x3c]
	str r1, [sp, #0x40]
	str r2, [sp, #0x44]
	str r3, [sp, #0x48]
	add r0, sp, #0x3c
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x44
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	mov r8, sp
	add r0, sp, #0x28
	mov sl, r0
	movs r0, #0
	ldr r1, [sp]
	cmp r1, #1
	bhi _080114AE
	movs r0, #1
_080114AE:
	cmp r0, #0
	bne _08011512
	movs r2, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _080114BC
	movs r2, #1
_080114BC:
	cmp r2, #0
	beq _080114C4
	ldr r0, [sp, #4]
	b _08011534
_080114C4:
	movs r2, #0
	cmp r1, #4
	bne _080114CC
	movs r2, #1
_080114CC:
	cmp r2, #0
	beq _080114DE
	movs r1, #0
	cmp r0, #2
	bne _080114D8
	movs r1, #1
_080114D8:
	cmp r1, #0
	bne _080114F6
	b _08011512
_080114DE:
	movs r2, #0
	cmp r0, #4
	bne _080114E6
	movs r2, #1
_080114E6:
	cmp r2, #0
	beq _08011506
	movs r0, #0
	cmp r1, #2
	bne _080114F2
	movs r0, #1
_080114F2:
	cmp r0, #0
	beq _08011500
_080114F6:
	ldr r0, _080114FC @ =gUnk_030024D8
	b _080116FE
	.align 2, 0
_080114FC: .4byte gUnk_030024D8
_08011500:
	mov r1, r8
	ldr r0, [r1, #4]
	b _08011534
_08011506:
	movs r2, #0
	cmp r1, #2
	bne _0801150E
	movs r2, #1
_0801150E:
	cmp r2, #0
	beq _08011524
_08011512:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x18]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #4]
	mov r0, sp
	b _080116FE
_08011524:
	movs r1, #0
	cmp r0, #2
	bne _0801152C
	movs r1, #1
_0801152C:
	cmp r1, #0
	beq _08011544
	mov r2, r8
	ldr r0, [r2, #4]
_08011534:
	ldr r1, [sp, #0x18]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #0x18]
	adds r0, r4, #0
	b _080116FE
_08011544:
	mov r4, r8
	ldr r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	adds r6, r0, #0
	movs r7, #0
	str r1, [sp, #0x4c]
	movs r5, #0
	str r5, [sp, #0x50]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	adds r4, r0, #0
	str r1, [sp, #0x54]
	movs r0, #0
	str r0, [sp, #0x58]
	adds r1, r5, #0
	adds r0, r4, #0
	adds r3, r7, #0
	adds r2, r6, #0
	bl __muldi3
	str r0, [sp, #0x5c]
	str r1, [sp, #0x60]
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	adds r3, r7, #0
	adds r2, r6, #0
	bl __muldi3
	adds r7, r1, #0
	adds r6, r0, #0
	adds r1, r5, #0
	adds r0, r4, #0
	ldr r2, [sp, #0x4c]
	ldr r3, [sp, #0x50]
	bl __muldi3
	adds r5, r1, #0
	adds r4, r0, #0
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x58]
	ldr r2, [sp, #0x4c]
	ldr r3, [sp, #0x50]
	bl __muldi3
	str r0, [sp, #0x64]
	str r1, [sp, #0x68]
	movs r1, #0
	movs r2, #0
	str r1, [sp, #0x6c]
	str r2, [sp, #0x70]
	adds r3, r7, #0
	adds r2, r6, #0
	adds r2, r2, r4
	adcs r3, r5
	cmp r7, r3
	bhi _080115BC
	cmp r7, r3
	bne _080115C4
	cmp r6, r2
	bls _080115C4
_080115BC:
	ldr r5, _08011714 @ =0x00000001
	ldr r4, _08011710 @ =0x00000000
	str r4, [sp, #0x6c]
	str r5, [sp, #0x70]
_080115C4:
	adds r1, r2, #0
	movs r6, #0
	adds r7, r1, #0
	ldr r0, [sp, #0x5c]
	ldr r1, [sp, #0x60]
	adds r6, r6, r0
	adcs r7, r1
	cmp r1, r7
	bhi _080115E0
	ldr r1, [sp, #0x60]
	cmp r1, r7
	bne _080115F0
	cmp r0, r6
	bls _080115F0
_080115E0:
	movs r0, #1
	movs r1, #0
	ldr r4, [sp, #0x6c]
	ldr r5, [sp, #0x70]
	adds r4, r4, r0
	adcs r5, r1
	str r4, [sp, #0x6c]
	str r5, [sp, #0x70]
_080115F0:
	adds r0, r3, #0
	adds r2, r0, #0
	movs r3, #0
	adds r5, r3, #0
	adds r4, r2, #0
	ldr r0, [sp, #0x64]
	ldr r1, [sp, #0x68]
	adds r4, r4, r0
	adcs r5, r1
	ldr r1, [sp, #0x6c]
	ldr r2, [sp, #0x70]
	adds r4, r4, r1
	adcs r5, r2
	mov r0, r8
	ldr r2, [r0, #8]
	ldr r0, [sp, #0x1c]
	adds r2, r2, r0
	str r2, [sp, #0x30]
	mov r0, r8
	ldr r1, [r0, #4]
	ldr r0, [sp, #0x18]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [sp, #0x2c]
	adds r2, #4
	str r2, [sp, #0x30]
	ldr r0, _08011718 @ =0x1FFFFFFF
	cmp r5, r0
	bls _08011672
	movs r1, #1
	mov sb, r1
	mov r8, r0
	mov ip, r2
_08011636:
	movs r2, #1
	add ip, r2
	mov r0, sb
	ands r0, r4
	cmp r0, #0
	beq _0801165C
	lsls r3, r7, #0x1f
	lsrs r2, r6, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r7, #1
	adds r7, r1, #0
	adds r6, r0, #0
	adds r0, r6, #0
	movs r1, #0x80
	lsls r1, r1, #0x18
	orrs r1, r7
	adds r7, r1, #0
	adds r6, r0, #0
_0801165C:
	lsls r3, r5, #0x1f
	lsrs r2, r4, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r5, #1
	adds r5, r1, #0
	adds r4, r0, #0
	cmp r5, r8
	bhi _08011636
	mov r0, ip
	str r0, [sp, #0x30]
_08011672:
	ldr r0, _0801171C @ =0x0FFFFFFF
	cmp r5, r0
	bhi _080116C4
	movs r1, #0x80
	lsls r1, r1, #0x18
	mov sb, r1
	mov r8, r0
	ldr r2, [sp, #0x30]
	mov ip, r2
_08011684:
	movs r0, #1
	rsbs r0, r0, #0
	add ip, r0
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	movs r0, #0
	mov r1, sb
	ands r1, r7
	orrs r0, r1
	cmp r0, #0
	beq _080116AE
	movs r0, #1
	orrs r0, r4
	adds r1, r5, #0
	adds r5, r1, #0
	adds r4, r0, #0
_080116AE:
	lsrs r3, r6, #0x1f
	lsls r2, r7, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r6, #1
	adds r7, r1, #0
	adds r6, r0, #0
	cmp r5, r8
	bls _08011684
	mov r1, ip
	str r1, [sp, #0x30]
_080116C4:
	movs r0, #0xff
	adds r1, r4, #0
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _080116F2
	cmp r2, #0
	bne _080116F2
	adds r0, #1
	adds r1, r4, #0
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	bne _080116EA
	adds r0, r7, #0
	orrs r0, r6
	cmp r0, #0
	beq _080116F2
_080116EA:
	movs r0, #0x80
	movs r1, #0
	adds r4, r4, r0
	adcs r5, r1
_080116F2:
	str r4, [sp, #0x34]
	str r5, [sp, #0x38]
	movs r0, #3
	mov r2, sl
	str r0, [r2]
	add r0, sp, #0x28
_080116FE:
	bl __pack_d
	add sp, #0x74
	pop {r3, r4, r5}
	mov r8, r3
	mov sb, r4
	mov sl, r5
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08011710: .4byte 0x00000000
_08011714: .4byte 0x00000001
_08011718: .4byte 0x1FFFFFFF
_0801171C: .4byte 0x0FFFFFFF

	thumb_func_start __divdf3
__divdf3: @ 0x08011720
	push {r4, r5, r6, r7, lr}
	sub sp, #0x48
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	mov ip, sp
	movs r0, #0
	ldr r3, [sp]
	cmp r3, #1
	bhi _0801174A
	movs r0, #1
_0801174A:
	cmp r0, #0
	beq _08011752
	mov r1, sp
	b _08011894
_08011752:
	movs r0, #0
	ldr r2, [sp, #0x14]
	adds r5, r2, #0
	cmp r2, #1
	bhi _0801175E
	movs r0, #1
_0801175E:
	cmp r0, #0
	beq _08011766
	adds r1, r4, #0
	b _08011894
_08011766:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x18]
	eors r0, r1
	str r0, [sp, #4]
	movs r0, #0
	cmp r3, #4
	bne _08011776
	movs r0, #1
_08011776:
	cmp r0, #0
	bne _08011786
	movs r4, #0
	cmp r3, #2
	bne _08011782
	movs r4, #1
_08011782:
	cmp r4, #0
	beq _08011798
_08011786:
	mov r1, ip
	ldr r0, [r1]
	cmp r0, r5
	beq _08011790
	b _08011894
_08011790:
	ldr r1, _08011794 @ =gUnk_030024D8
	b _08011894
	.align 2, 0
_08011794: .4byte gUnk_030024D8
_08011798:
	movs r0, #0
	cmp r2, #4
	bne _080117A0
	movs r0, #1
_080117A0:
	cmp r0, #0
	beq _080117B2
	movs r0, #0
	movs r1, #0
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	str r4, [sp, #8]
	mov r1, sp
	b _08011894
_080117B2:
	movs r0, #0
	cmp r2, #2
	bne _080117BA
	movs r0, #1
_080117BA:
	cmp r0, #0
	beq _080117C6
	movs r0, #4
	mov r2, ip
	str r0, [r2]
	b _08011892
_080117C6:
	mov r3, ip
	ldr r1, [r3, #8]
	ldr r0, [sp, #0x1c]
	subs r6, r1, r0
	str r6, [r3, #8]
	ldr r4, [r3, #0xc]
	ldr r5, [r3, #0x10]
	ldr r0, [sp, #0x20]
	ldr r1, [sp, #0x24]
	str r0, [sp, #0x38]
	str r1, [sp, #0x3c]
	cmp r1, r5
	bhi _080117EA
	ldr r1, [sp, #0x3c]
	cmp r1, r5
	bne _080117FE
	cmp r0, r4
	bls _080117FE
_080117EA:
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	subs r0, r6, #1
	mov r2, ip
	str r0, [r2, #8]
_080117FE:
	ldr r7, _080118A4 @ =0x10000000
	ldr r6, _080118A0 @ =0x00000000
	movs r0, #0
	movs r1, #0
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
_0801180A:
	ldr r1, [sp, #0x3c]
	cmp r1, r5
	bhi _0801182E
	cmp r1, r5
	bne _0801181A
	ldr r2, [sp, #0x38]
	cmp r2, r4
	bhi _0801182E
_0801181A:
	ldr r0, [sp, #0x40]
	orrs r0, r6
	ldr r1, [sp, #0x44]
	orrs r1, r7
	str r0, [sp, #0x40]
	str r1, [sp, #0x44]
	ldr r0, [sp, #0x38]
	ldr r1, [sp, #0x3c]
	subs r4, r4, r0
	sbcs r5, r1
_0801182E:
	lsls r3, r7, #0x1f
	lsrs r2, r6, #1
	adds r0, r3, #0
	orrs r0, r2
	lsrs r1, r7, #1
	adds r7, r1, #0
	adds r6, r0, #0
	lsrs r3, r4, #0x1f
	lsls r2, r5, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r4, #1
	adds r5, r1, #0
	adds r4, r0, #0
	adds r0, r7, #0
	orrs r0, r6
	cmp r0, #0
	bne _0801180A
	movs r0, #0xff
	ldr r1, [sp, #0x40]
	ands r1, r0
	movs r2, #0
	cmp r1, #0x80
	bne _08011888
	cmp r2, #0
	bne _08011888
	adds r0, #1
	ldr r1, [sp, #0x40]
	ands r1, r0
	adds r0, r2, #0
	orrs r0, r1
	cmp r0, #0
	bne _08011878
	adds r0, r5, #0
	orrs r0, r4
	cmp r0, #0
	beq _08011888
_08011878:
	movs r0, #0x80
	movs r1, #0
	ldr r2, [sp, #0x40]
	ldr r3, [sp, #0x44]
	adds r2, r2, r0
	adcs r3, r1
	str r2, [sp, #0x40]
	str r3, [sp, #0x44]
_08011888:
	ldr r0, [sp, #0x40]
	ldr r1, [sp, #0x44]
	mov r2, ip
	str r0, [r2, #0xc]
	str r1, [r2, #0x10]
_08011892:
	mov r1, ip
_08011894:
	adds r0, r1, #0
	bl __pack_d
	add sp, #0x48
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_080118A0: .4byte 0x00000000
_080118A4: .4byte 0x10000000

	thumb_func_start __fpcmp_parts_d
__fpcmp_parts_d: @ 0x080118A8
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r6, r1, #0
	movs r0, #0
	ldr r1, [r5]
	cmp r1, #1
	bhi _080118B8
	movs r0, #1
_080118B8:
	cmp r0, #0
	bne _080118CA
	movs r0, #0
	ldr r2, [r6]
	cmp r2, #1
	bhi _080118C6
	movs r0, #1
_080118C6:
	cmp r0, #0
	beq _080118CE
_080118CA:
	movs r0, #1
	b _080119A4
_080118CE:
	movs r0, #0
	cmp r1, #4
	bne _080118D6
	movs r0, #1
_080118D6:
	cmp r0, #0
	beq _080118EE
	movs r0, #0
	cmp r2, #4
	bne _080118E2
	movs r0, #1
_080118E2:
	cmp r0, #0
	beq _080118EE
	ldr r0, [r6, #4]
	ldr r1, [r5, #4]
	subs r0, r0, r1
	b _080119A4
_080118EE:
	movs r1, #0
	ldr r0, [r5]
	cmp r0, #4
	bne _080118F8
	movs r1, #1
_080118F8:
	cmp r1, #0
	bne _08011946
	movs r1, #0
	cmp r2, #4
	bne _08011904
	movs r1, #1
_08011904:
	cmp r1, #0
	beq _08011916
_08011908:
	ldr r0, [r6, #4]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	beq _08011950
	movs r1, #1
	b _08011950
_08011916:
	movs r1, #0
	cmp r0, #2
	bne _0801191E
	movs r1, #1
_0801191E:
	cmp r1, #0
	beq _0801192E
	movs r1, #0
	cmp r2, #2
	bne _0801192A
	movs r1, #1
_0801192A:
	cmp r1, #0
	bne _080119A2
_0801192E:
	movs r1, #0
	cmp r0, #2
	bne _08011936
	movs r1, #1
_08011936:
	cmp r1, #0
	bne _08011908
	movs r0, #0
	cmp r2, #2
	bne _08011942
	movs r0, #1
_08011942:
	cmp r0, #0
	beq _08011954
_08011946:
	ldr r0, [r5, #4]
	movs r1, #1
	cmp r0, #0
	beq _08011950
	subs r1, #2
_08011950:
	adds r0, r1, #0
	b _080119A4
_08011954:
	ldr r0, [r6, #4]
	ldr r4, [r5, #4]
	cmp r4, r0
	beq _08011966
_0801195C:
	movs r0, #1
	cmp r4, #0
	beq _080119A4
	subs r0, #2
	b _080119A4
_08011966:
	ldr r1, [r5, #8]
	ldr r0, [r6, #8]
	cmp r1, r0
	bgt _0801195C
	cmp r1, r0
	bge _0801197E
_08011972:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r4, #0
	beq _080119A4
	movs r0, #1
	b _080119A4
_0801197E:
	ldr r3, [r5, #0x10]
	ldr r2, [r6, #0x10]
	cmp r3, r2
	bhi _0801195C
	cmp r3, r2
	bne _08011992
	ldr r1, [r5, #0xc]
	ldr r0, [r6, #0xc]
	cmp r1, r0
	bhi _0801195C
_08011992:
	cmp r2, r3
	bhi _08011972
	cmp r2, r3
	bne _080119A2
	ldr r1, [r6, #0xc]
	ldr r0, [r5, #0xc]
	cmp r1, r0
	bhi _08011972
_080119A2:
	movs r0, #0
_080119A4:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start __cmpdf2
__cmpdf2: @ 0x080119A8
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __eqdf2
__eqdf2: @ 0x080119D4
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080119FC
	movs r1, #1
_080119FC:
	cmp r1, #0
	bne _08011A0E
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _08011A0A
	movs r1, #1
_08011A0A:
	cmp r1, #0
	beq _08011A12
_08011A0E:
	movs r0, #1
	b _08011A1A
_08011A12:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_08011A1A:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __nedf2
__nedf2: @ 0x08011A20
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _08011A48
	movs r1, #1
_08011A48:
	cmp r1, #0
	bne _08011A5A
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _08011A56
	movs r1, #1
_08011A56:
	cmp r1, #0
	beq _08011A5E
_08011A5A:
	movs r0, #1
	b _08011A66
_08011A5E:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_08011A66:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __gtdf2
__gtdf2: @ 0x08011A6C
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _08011A94
	movs r1, #1
_08011A94:
	cmp r1, #0
	bne _08011AA6
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _08011AA2
	movs r1, #1
_08011AA2:
	cmp r1, #0
	beq _08011AAC
_08011AA6:
	movs r0, #1
	rsbs r0, r0, #0
	b _08011AB4
_08011AAC:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_08011AB4:
	add sp, #0x38
	pop {r4, pc}

	thumb_func_start __gedf2
__gedf2: @ 0x08011AB8
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _08011AE0
	movs r1, #1
_08011AE0:
	cmp r1, #0
	bne _08011AF2
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _08011AEE
	movs r1, #1
_08011AEE:
	cmp r1, #0
	beq _08011AF8
_08011AF2:
	movs r0, #1
	rsbs r0, r0, #0
	b _08011B00
_08011AF8:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_08011B00:
	add sp, #0x38
	pop {r4, pc}

	thumb_func_start __ltdf2
__ltdf2: @ 0x08011B04
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _08011B2C
	movs r1, #1
_08011B2C:
	cmp r1, #0
	bne _08011B3E
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _08011B3A
	movs r1, #1
_08011B3A:
	cmp r1, #0
	beq _08011B42
_08011B3E:
	movs r0, #1
	b _08011B4A
_08011B42:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_08011B4A:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __ledf2
__ledf2: @ 0x08011B50
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x28]
	str r1, [sp, #0x2c]
	str r2, [sp, #0x30]
	str r3, [sp, #0x34]
	add r0, sp, #0x28
	mov r1, sp
	bl __unpack_d
	add r0, sp, #0x30
	add r4, sp, #0x14
	adds r1, r4, #0
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _08011B78
	movs r1, #1
_08011B78:
	cmp r1, #0
	bne _08011B8A
	movs r1, #0
	ldr r0, [sp, #0x14]
	cmp r0, #1
	bhi _08011B86
	movs r1, #1
_08011B86:
	cmp r1, #0
	beq _08011B8E
_08011B8A:
	movs r0, #1
	b _08011B96
_08011B8E:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_d
_08011B96:
	add sp, #0x38
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __floatsidf
__floatsidf: @ 0x08011B9C
	push {r4, r5, lr}
	sub sp, #0x14
	adds r2, r0, #0
	movs r0, #3
	str r0, [sp]
	lsrs r1, r2, #0x1f
	str r1, [sp, #4]
	cmp r2, #0
	bne _08011BB4
	movs r0, #2
	str r0, [sp]
	b _08011C0A
_08011BB4:
	movs r0, #0x3c
	str r0, [sp, #8]
	cmp r1, #0
	beq _08011BDA
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r2, r0
	bne _08011BD4
	ldr r1, _08011BD0 @ =0x00000000
	ldr r0, _08011BCC @ =0xC1E00000
	b _08011C10
	.align 2, 0
_08011BCC: .4byte 0xC1E00000
_08011BD0: .4byte 0x00000000
_08011BD4:
	rsbs r0, r2, #0
	asrs r1, r0, #0x1f
	b _08011BDE
_08011BDA:
	adds r0, r2, #0
	asrs r1, r2, #0x1f
_08011BDE:
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	ldr r0, [sp, #0x10]
	ldr r1, _08011C14 @ =0x0FFFFFFF
	cmp r0, r1
	bhi _08011C0A
	adds r5, r1, #0
	ldr r4, [sp, #8]
_08011BEE:
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	lsrs r3, r0, #0x1f
	lsls r2, r1, #1
	adds r1, r3, #0
	orrs r1, r2
	lsls r0, r0, #1
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	subs r4, #1
	ldr r0, [sp, #0x10]
	cmp r0, r5
	bls _08011BEE
	str r4, [sp, #8]
_08011C0A:
	mov r0, sp
	bl __pack_d
_08011C10:
	add sp, #0x14
	pop {r4, r5, pc}
	.align 2, 0
_08011C14: .4byte 0x0FFFFFFF

	thumb_func_start __fixdfsi
__fixdfsi: @ 0x08011C18
	push {lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r1, sp
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #2
	bne _08011C32
	movs r1, #1
_08011C32:
	cmp r1, #0
	bne _08011C66
	movs r1, #0
	cmp r0, #1
	bhi _08011C3E
	movs r1, #1
_08011C3E:
	cmp r1, #0
	bne _08011C66
	movs r1, #0
	cmp r0, #4
	bne _08011C4A
	movs r1, #1
_08011C4A:
	cmp r1, #0
	beq _08011C60
_08011C4E:
	ldr r0, [sp, #4]
	ldr r1, _08011C5C @ =0x7FFFFFFF
	cmp r0, #0
	beq _08011C84
	adds r1, #1
	b _08011C84
	.align 2, 0
_08011C5C: .4byte 0x7FFFFFFF
_08011C60:
	ldr r0, [sp, #8]
	cmp r0, #0
	bge _08011C6A
_08011C66:
	movs r0, #0
	b _08011C86
_08011C6A:
	cmp r0, #0x1e
	bgt _08011C4E
	movs r2, #0x3c
	subs r2, r2, r0
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x10]
	bl __lshrdi3
	adds r1, r0, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _08011C84
	rsbs r1, r1, #0
_08011C84:
	adds r0, r1, #0
_08011C86:
	add sp, #0x1c
	pop {pc}
	.align 2, 0

	thumb_func_start __negdf2
__negdf2: @ 0x08011C8C
	push {lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r1, sp
	bl __unpack_d
	movs r1, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _08011CA6
	movs r1, #1
_08011CA6:
	str r1, [sp, #4]
	mov r0, sp
	bl __pack_d
	add sp, #0x1c
	pop {pc}
	.align 2, 0

	thumb_func_start __make_dp
__make_dp: @ 0x08011CB4
	sub sp, #4
	push {r4, lr}
	sub sp, #0x14
	str r3, [sp, #0x1c]
	ldr r3, [sp, #0x1c]
	ldr r4, [sp, #0x20]
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	str r4, [sp, #0x10]
	mov r0, sp
	bl __pack_d
	add sp, #0x14
	pop {r4}
	pop {r3}
	add sp, #4
	bx r3
	.align 2, 0

	thumb_func_start __truncdfsf2
__truncdfsf2: @ 0x08011CDC
	push {r4, r5, lr}
	sub sp, #0x1c
	str r0, [sp, #0x14]
	str r1, [sp, #0x18]
	add r0, sp, #0x14
	mov r1, sp
	bl __unpack_d
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	lsls r5, r3, #2
	lsrs r4, r2, #0x1e
	adds r0, r5, #0
	orrs r0, r4
	adds r5, r0, #0
	ldr r4, _08011D1C @ =0x3FFFFFFF
	adds r0, r2, #0
	ands r0, r4
	movs r1, #0
	orrs r0, r1
	cmp r0, #0
	beq _08011D0C
	movs r0, #1
	orrs r5, r0
_08011D0C:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	ldr r2, [sp, #8]
	adds r3, r5, #0
	bl __make_fp
	add sp, #0x1c
	pop {r4, r5, pc}
	.align 2, 0
_08011D1C: .4byte 0x3FFFFFFF

	thumb_func_start __pack_f
__pack_f: @ 0x08011D20
	push {r4, r5, r6, lr}
	ldr r2, [r0, #0xc]
	ldr r6, [r0, #4]
	movs r5, #0
	movs r1, #0
	ldr r3, [r0]
	cmp r3, #1
	bhi _08011D32
	movs r1, #1
_08011D32:
	cmp r1, #0
	beq _08011D40
	movs r5, #0xff
	movs r0, #0x80
	lsls r0, r0, #0xd
	orrs r2, r0
	b _08011DA6
_08011D40:
	movs r1, #0
	cmp r3, #4
	bne _08011D48
	movs r1, #1
_08011D48:
	cmp r1, #0
	bne _08011D7C
	movs r1, #0
	cmp r3, #2
	bne _08011D54
	movs r1, #1
_08011D54:
	cmp r1, #0
	beq _08011D5C
	movs r2, #0
	b _08011DA6
_08011D5C:
	cmp r2, #0
	beq _08011DA6
	ldr r0, [r0, #8]
	movs r3, #0x7e
	rsbs r3, r3, #0
	cmp r0, r3
	bge _08011D78
	subs r0, r3, r0
	cmp r0, #0x19
	ble _08011D74
	movs r2, #0
	b _08011DA4
_08011D74:
	lsrs r2, r0
	b _08011DA4
_08011D78:
	cmp r0, #0x7f
	ble _08011D82
_08011D7C:
	movs r5, #0xff
	movs r2, #0
	b _08011DA6
_08011D82:
	adds r5, r0, #0
	adds r5, #0x7f
	movs r0, #0x7f
	ands r0, r2
	cmp r0, #0x40
	bne _08011D9A
	movs r0, #0x80
	ands r0, r2
	cmp r0, #0
	beq _08011D9C
	adds r2, #0x40
	b _08011D9C
_08011D9A:
	adds r2, #0x3f
_08011D9C:
	cmp r2, #0
	bge _08011DA4
	lsrs r2, r2, #1
	adds r5, #1
_08011DA4:
	lsrs r2, r2, #7
_08011DA6:
	ldr r0, _08011DC8 @ =0x007FFFFF
	ands r2, r0
	ldr r0, _08011DCC @ =0xFF800000
	ands r4, r0
	orrs r4, r2
	movs r0, #0xff
	ands r5, r0
	lsls r1, r5, #0x17
	ldr r0, _08011DD0 @ =0x807FFFFF
	ands r4, r0
	orrs r4, r1
	lsls r1, r6, #0x1f
	ldr r0, _08011DD4 @ =0x7FFFFFFF
	ands r4, r0
	orrs r4, r1
	adds r0, r4, #0
	pop {r4, r5, r6, pc}
	.align 2, 0
_08011DC8: .4byte 0x007FFFFF
_08011DCC: .4byte 0xFF800000
_08011DD0: .4byte 0x807FFFFF
_08011DD4: .4byte 0x7FFFFFFF

	thumb_func_start __unpack_f
__unpack_f: @ 0x08011DD8
	push {r4, lr}
	adds r3, r1, #0
	ldr r0, [r0]
	lsls r1, r0, #9
	lsrs r2, r1, #9
	lsls r1, r0, #1
	lsrs r1, r1, #0x18
	lsrs r0, r0, #0x1f
	str r0, [r3, #4]
	cmp r1, #0
	bne _08011E1C
	cmp r2, #0
	bne _08011DF8
	movs r0, #2
	str r0, [r3]
	b _08011E50
_08011DF8:
	adds r4, r1, #0
	subs r4, #0x7e
	str r4, [r3, #8]
	lsls r2, r2, #7
	movs r0, #3
	str r0, [r3]
	ldr r1, _08011E18 @ =0x3FFFFFFF
	cmp r2, r1
	bhi _08011E38
	adds r0, r4, #0
_08011E0C:
	lsls r2, r2, #1
	subs r0, #1
	cmp r2, r1
	bls _08011E0C
	str r0, [r3, #8]
	b _08011E38
	.align 2, 0
_08011E18: .4byte 0x3FFFFFFF
_08011E1C:
	cmp r1, #0xff
	bne _08011E3C
	cmp r2, #0
	bne _08011E2A
	movs r0, #4
	str r0, [r3]
	b _08011E50
_08011E2A:
	movs r0, #0x80
	lsls r0, r0, #0xd
	ands r0, r2
	cmp r0, #0
	beq _08011E36
	movs r0, #1
_08011E36:
	str r0, [r3]
_08011E38:
	str r2, [r3, #0xc]
	b _08011E50
_08011E3C:
	adds r0, r1, #0
	subs r0, #0x7f
	str r0, [r3, #8]
	movs r0, #3
	str r0, [r3]
	lsls r0, r2, #7
	movs r1, #0x80
	lsls r1, r1, #0x17
	orrs r0, r1
	str r0, [r3, #0xc]
_08011E50:
	pop {r4, pc}
	.align 2, 0

	thumb_func_start _fpadd_parts_0
_fpadd_parts_0: @ 0x08011E54
	push {r4, r5, r6, r7, lr}
	mov r7, r8
	push {r7}
	adds r6, r0, #0
	adds r7, r1, #0
	adds r5, r2, #0
	movs r0, #0
	ldr r2, [r6]
	cmp r2, #1
	bhi _08011E6A
	movs r0, #1
_08011E6A:
	cmp r0, #0
	beq _08011E72
_08011E6E:
	adds r0, r6, #0
	b _08011FC8
_08011E72:
	movs r1, #0
	ldr r0, [r7]
	cmp r0, #1
	bhi _08011E7C
	movs r1, #1
_08011E7C:
	cmp r1, #0
	bne _08011EF0
	movs r1, #0
	cmp r2, #4
	bne _08011E88
	movs r1, #1
_08011E88:
	cmp r1, #0
	beq _08011EA8
	movs r1, #0
	cmp r0, #4
	bne _08011E94
	movs r1, #1
_08011E94:
	cmp r1, #0
	beq _08011E6E
	ldr r1, [r6, #4]
	ldr r0, [r7, #4]
	cmp r1, r0
	beq _08011E6E
	ldr r0, _08011EA4 @ =gUnk_030024F0
	b _08011FC8
	.align 2, 0
_08011EA4: .4byte gUnk_030024F0
_08011EA8:
	movs r1, #0
	cmp r0, #4
	bne _08011EB0
	movs r1, #1
_08011EB0:
	cmp r1, #0
	bne _08011EF0
	movs r1, #0
	cmp r0, #2
	bne _08011EBC
	movs r1, #1
_08011EBC:
	cmp r1, #0
	beq _08011EE2
	movs r0, #0
	cmp r2, #2
	bne _08011EC8
	movs r0, #1
_08011EC8:
	cmp r0, #0
	beq _08011E6E
	adds r1, r5, #0
	adds r0, r6, #0
	ldm r0!, {r2, r3, r4}
	stm r1!, {r2, r3, r4}
	ldr r0, [r0]
	str r0, [r1]
	ldr r0, [r6, #4]
	ldr r1, [r7, #4]
	ands r0, r1
	str r0, [r5, #4]
	b _08011FC6
_08011EE2:
	movs r1, #0
	ldr r0, [r6]
	cmp r0, #2
	bne _08011EEC
	movs r1, #1
_08011EEC:
	cmp r1, #0
	beq _08011EF4
_08011EF0:
	adds r0, r7, #0
	b _08011FC8
_08011EF4:
	ldr r1, [r6, #8]
	ldr r3, [r7, #8]
	ldr r2, [r6, #0xc]
	ldr r4, [r7, #0xc]
	subs r0, r1, r3
	cmp r0, #0
	bge _08011F04
	rsbs r0, r0, #0
_08011F04:
	cmp r0, #0x1f
	bgt _08011F48
	ldr r6, [r6, #4]
	ldr r7, [r7, #4]
	mov r8, r7
	cmp r1, r3
	ble _08011F2A
	movs r7, #1
	mov ip, r7
	subs r3, r1, r3
_08011F18:
	subs r3, #1
	adds r0, r4, #0
	mov r7, ip
	ands r0, r7
	lsrs r4, r4, #1
	orrs r4, r0
	cmp r3, #0
	bne _08011F18
	adds r3, r1, #0
_08011F2A:
	cmp r3, r1
	ble _08011F5A
	movs r0, #1
	mov ip, r0
	subs r1, r3, r1
_08011F34:
	subs r1, #1
	adds r0, r2, #0
	mov r7, ip
	ands r0, r7
	lsrs r2, r2, #1
	orrs r2, r0
	cmp r1, #0
	bne _08011F34
	adds r1, r3, #0
	b _08011F5A
_08011F48:
	cmp r1, r3
	ble _08011F50
	movs r4, #0
	b _08011F54
_08011F50:
	adds r1, r3, #0
	movs r2, #0
_08011F54:
	ldr r6, [r6, #4]
	ldr r7, [r7, #4]
	mov r8, r7
_08011F5A:
	cmp r6, r8
	beq _08011FA4
	cmp r6, #0
	beq _08011F66
	subs r3, r4, r2
	b _08011F68
_08011F66:
	subs r3, r2, r4
_08011F68:
	cmp r3, #0
	blt _08011F76
	movs r0, #0
	str r0, [r5, #4]
	str r1, [r5, #8]
	str r3, [r5, #0xc]
	b _08011F80
_08011F76:
	movs r0, #1
	str r0, [r5, #4]
	str r1, [r5, #8]
	rsbs r0, r3, #0
	str r0, [r5, #0xc]
_08011F80:
	ldr r1, [r5, #0xc]
	subs r0, r1, #1
	ldr r2, _08011FA0 @ =0x3FFFFFFE
	cmp r0, r2
	bhi _08011FAC
_08011F8A:
	lsls r0, r1, #1
	str r0, [r5, #0xc]
	ldr r1, [r5, #8]
	subs r1, #1
	str r1, [r5, #8]
	adds r1, r0, #0
	subs r0, r1, #1
	cmp r0, r2
	bls _08011F8A
	b _08011FAC
	.align 2, 0
_08011FA0: .4byte 0x3FFFFFFE
_08011FA4:
	str r6, [r5, #4]
	str r1, [r5, #8]
	adds r0, r2, r4
	str r0, [r5, #0xc]
_08011FAC:
	movs r0, #3
	str r0, [r5]
	ldr r1, [r5, #0xc]
	cmp r1, #0
	bge _08011FC6
	movs r0, #1
	ands r0, r1
	lsrs r1, r1, #1
	orrs r0, r1
	str r0, [r5, #0xc]
	ldr r0, [r5, #8]
	adds r0, #1
	str r0, [r5, #8]
_08011FC6:
	adds r0, r5, #0
_08011FC8:
	pop {r3}
	mov r8, r3
	pop {r4, r5, r6, r7, pc}
	.align 2, 0

	thumb_func_start __addsf3
__addsf3: @ 0x08011FD0
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	add r0, sp, #0x30
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x34
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	add r2, sp, #0x20
	mov r0, sp
	adds r1, r4, #0
	bl _fpadd_parts_0
	bl __pack_f
	add sp, #0x38
	pop {r4, pc}

	thumb_func_start __subsf3
__subsf3: @ 0x08011FFC
	push {r4, lr}
	sub sp, #0x38
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	add r0, sp, #0x30
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x34
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	ldr r0, [r4, #4]
	movs r1, #1
	eors r0, r1
	str r0, [r4, #4]
	add r2, sp, #0x20
	mov r0, sp
	adds r1, r4, #0
	bl _fpadd_parts_0
	bl __pack_f
	add sp, #0x38
	pop {r4, pc}

	thumb_func_start __mulsf3
__mulsf3: @ 0x08012030
	push {r4, r5, r6, r7, lr}
	mov r7, sb
	mov r6, r8
	push {r6, r7}
	sub sp, #0x38
	str r0, [sp, #0x30]
	str r1, [sp, #0x34]
	add r0, sp, #0x30
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x34
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	mov r7, sp
	add r0, sp, #0x20
	mov r8, r0
	movs r0, #0
	ldr r1, [sp]
	mov sb, r8
	cmp r1, #1
	bhi _08012062
	movs r0, #1
_08012062:
	cmp r0, #0
	bne _080120C0
	movs r2, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _08012070
	movs r2, #1
_08012070:
	cmp r2, #0
	beq _08012078
	ldr r0, [sp, #4]
	b _080120E0
_08012078:
	movs r2, #0
	cmp r1, #4
	bne _08012080
	movs r2, #1
_08012080:
	cmp r2, #0
	beq _08012092
	movs r1, #0
	cmp r0, #2
	bne _0801208C
	movs r1, #1
_0801208C:
	cmp r1, #0
	bne _080120AA
	b _080120C0
_08012092:
	movs r2, #0
	cmp r0, #4
	bne _0801209A
	movs r2, #1
_0801209A:
	cmp r2, #0
	beq _080120B4
	movs r0, #0
	cmp r1, #2
	bne _080120A6
	movs r0, #1
_080120A6:
	cmp r0, #0
	beq _080120DE
_080120AA:
	ldr r0, _080120B0 @ =gUnk_030024F0
	b _08012182
	.align 2, 0
_080120B0: .4byte gUnk_030024F0
_080120B4:
	movs r2, #0
	cmp r1, #2
	bne _080120BC
	movs r2, #1
_080120BC:
	cmp r2, #0
	beq _080120D2
_080120C0:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x14]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #4]
	mov r0, sp
	b _08012182
_080120D2:
	movs r1, #0
	cmp r0, #2
	bne _080120DA
	movs r1, #1
_080120DA:
	cmp r1, #0
	beq _080120F0
_080120DE:
	ldr r0, [r7, #4]
_080120E0:
	ldr r1, [sp, #0x14]
	eors r0, r1
	rsbs r1, r0, #0
	orrs r1, r0
	lsrs r1, r1, #0x1f
	str r1, [sp, #0x14]
	adds r0, r4, #0
	b _08012182
_080120F0:
	ldr r0, [r7, #0xc]
	movs r1, #0
	ldr r2, [sp, #0x1c]
	movs r3, #0
	bl __muldi3
	adds r2, r1, #0
	adds r5, r2, #0
	adds r6, r0, #0
	ldr r4, [r7, #8]
	ldr r0, [sp, #0x18]
	adds r4, r4, r0
	str r4, [sp, #0x28]
	ldr r1, [r7, #4]
	ldr r0, [sp, #0x14]
	eors r1, r0
	rsbs r0, r1, #0
	orrs r0, r1
	lsrs r0, r0, #0x1f
	str r0, [sp, #0x24]
	adds r4, #2
	str r4, [sp, #0x28]
	cmp r2, #0
	bge _0801213C
	movs r2, #1
	movs r1, #0x80
	lsls r1, r1, #0x18
_08012126:
	adds r4, #1
	adds r0, r5, #0
	ands r0, r2
	cmp r0, #0
	beq _08012134
	lsrs r6, r6, #1
	orrs r6, r1
_08012134:
	lsrs r5, r5, #1
	cmp r5, #0
	blt _08012126
	str r4, [sp, #0x28]
_0801213C:
	ldr r0, _08012190 @ =0x3FFFFFFF
	cmp r5, r0
	bhi _08012162
	movs r4, #0x80
	lsls r4, r4, #0x18
	movs r3, #1
	adds r2, r0, #0
	ldr r1, [sp, #0x28]
_0801214C:
	subs r1, #1
	lsls r5, r5, #1
	adds r0, r6, #0
	ands r0, r4
	cmp r0, #0
	beq _0801215A
	orrs r5, r3
_0801215A:
	lsls r6, r6, #1
	cmp r5, r2
	bls _0801214C
	str r1, [sp, #0x28]
_08012162:
	movs r0, #0x7f
	ands r0, r5
	cmp r0, #0x40
	bne _08012178
	movs r0, #0x80
	ands r0, r5
	cmp r0, #0
	bne _08012176
	cmp r6, #0
	beq _08012178
_08012176:
	adds r5, #0x40
_08012178:
	str r5, [sp, #0x2c]
	movs r0, #3
	mov r1, r8
	str r0, [r1]
	mov r0, sb
_08012182:
	bl __pack_f
	add sp, #0x38
	pop {r3, r4}
	mov r8, r3
	mov sb, r4
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_08012190: .4byte 0x3FFFFFFF

	thumb_func_start __divsf3
__divsf3: @ 0x08012194
	push {r4, r5, r6, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r5, sp, #0x10
	adds r1, r5, #0
	bl __unpack_f
	mov r4, sp
	movs r0, #0
	ldr r3, [sp]
	cmp r3, #1
	bhi _080121BA
	movs r0, #1
_080121BA:
	cmp r0, #0
	beq _080121C2
	mov r1, sp
	b _08012274
_080121C2:
	movs r0, #0
	ldr r2, [sp, #0x10]
	adds r6, r2, #0
	cmp r2, #1
	bhi _080121CE
	movs r0, #1
_080121CE:
	cmp r0, #0
	beq _080121D6
	adds r1, r5, #0
	b _08012274
_080121D6:
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x14]
	eors r0, r1
	str r0, [sp, #4]
	movs r0, #0
	cmp r3, #4
	bne _080121E6
	movs r0, #1
_080121E6:
	cmp r0, #0
	bne _080121F6
	movs r0, #0
	cmp r3, #2
	bne _080121F2
	movs r0, #1
_080121F2:
	cmp r0, #0
	beq _08012208
_080121F6:
	ldr r0, [r4]
	adds r1, r4, #0
	cmp r0, r6
	bne _08012274
	ldr r1, _08012204 @ =gUnk_030024F0
	b _08012274
	.align 2, 0
_08012204: .4byte gUnk_030024F0
_08012208:
	movs r1, #0
	cmp r2, #4
	bne _08012210
	movs r1, #1
_08012210:
	cmp r1, #0
	beq _0801221C
	str r0, [sp, #0xc]
	str r0, [sp, #8]
	mov r1, sp
	b _08012274
_0801221C:
	movs r0, #0
	cmp r2, #2
	bne _08012224
	movs r0, #1
_08012224:
	cmp r0, #0
	beq _0801222E
	movs r0, #4
	str r0, [r4]
	b _08012272
_0801222E:
	ldr r1, [r4, #8]
	ldr r0, [sp, #0x18]
	subs r0, r1, r0
	str r0, [r4, #8]
	ldr r2, [r4, #0xc]
	ldr r3, [sp, #0x1c]
	cmp r2, r3
	bhs _08012244
	lsls r2, r2, #1
	subs r0, #1
	str r0, [r4, #8]
_08012244:
	movs r0, #0x80
	lsls r0, r0, #0x17
	movs r1, #0
_0801224A:
	cmp r2, r3
	blo _08012252
	orrs r1, r0
	subs r2, r2, r3
_08012252:
	lsrs r0, r0, #1
	lsls r2, r2, #1
	cmp r0, #0
	bne _0801224A
	movs r0, #0x7f
	ands r0, r1
	cmp r0, #0x40
	bne _08012270
	movs r0, #0x80
	ands r0, r1
	cmp r0, #0
	bne _0801226E
	cmp r2, #0
	beq _08012270
_0801226E:
	adds r1, #0x40
_08012270:
	str r1, [r4, #0xc]
_08012272:
	adds r1, r4, #0
_08012274:
	adds r0, r1, #0
	bl __pack_f
	add sp, #0x28
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start __fpcmp_parts_f
__fpcmp_parts_f: @ 0x08012280
	push {r4, lr}
	adds r4, r0, #0
	movs r0, #0
	ldr r2, [r4]
	cmp r2, #1
	bhi _0801228E
	movs r0, #1
_0801228E:
	cmp r0, #0
	bne _080122A0
	movs r0, #0
	ldr r3, [r1]
	cmp r3, #1
	bhi _0801229C
	movs r0, #1
_0801229C:
	cmp r0, #0
	beq _080122A4
_080122A0:
	movs r0, #1
	b _08012362
_080122A4:
	movs r0, #0
	cmp r2, #4
	bne _080122AC
	movs r0, #1
_080122AC:
	cmp r0, #0
	beq _080122C4
	movs r0, #0
	cmp r3, #4
	bne _080122B8
	movs r0, #1
_080122B8:
	cmp r0, #0
	beq _080122C4
	ldr r0, [r1, #4]
	ldr r1, [r4, #4]
	subs r0, r0, r1
	b _08012362
_080122C4:
	movs r2, #0
	ldr r0, [r4]
	cmp r0, #4
	bne _080122CE
	movs r2, #1
_080122CE:
	cmp r2, #0
	bne _0801231C
	movs r2, #0
	cmp r3, #4
	bne _080122DA
	movs r2, #1
_080122DA:
	cmp r2, #0
	beq _080122EC
_080122DE:
	ldr r0, [r1, #4]
	movs r1, #1
	rsbs r1, r1, #0
	cmp r0, #0
	beq _08012326
	movs r1, #1
	b _08012326
_080122EC:
	movs r2, #0
	cmp r0, #2
	bne _080122F4
	movs r2, #1
_080122F4:
	cmp r2, #0
	beq _08012304
	movs r2, #0
	cmp r3, #2
	bne _08012300
	movs r2, #1
_08012300:
	cmp r2, #0
	bne _08012360
_08012304:
	movs r2, #0
	cmp r0, #2
	bne _0801230C
	movs r2, #1
_0801230C:
	cmp r2, #0
	bne _080122DE
	movs r0, #0
	cmp r3, #2
	bne _08012318
	movs r0, #1
_08012318:
	cmp r0, #0
	beq _0801232A
_0801231C:
	ldr r0, [r4, #4]
	movs r1, #1
	cmp r0, #0
	beq _08012326
	subs r1, #2
_08012326:
	adds r0, r1, #0
	b _08012362
_0801232A:
	ldr r3, [r4, #4]
	ldr r0, [r1, #4]
	cmp r3, r0
	beq _0801233C
_08012332:
	movs r0, #1
	cmp r3, #0
	beq _08012362
	subs r0, #2
	b _08012362
_0801233C:
	ldr r2, [r4, #8]
	ldr r0, [r1, #8]
	cmp r2, r0
	bgt _08012332
	cmp r2, r0
	bge _08012354
_08012348:
	movs r0, #1
	rsbs r0, r0, #0
	cmp r3, #0
	beq _08012362
	movs r0, #1
	b _08012362
_08012354:
	ldr r0, [r4, #0xc]
	ldr r1, [r1, #0xc]
	cmp r0, r1
	bhi _08012332
	cmp r0, r1
	blo _08012348
_08012360:
	movs r0, #0
_08012362:
	pop {r4, pc}

	thumb_func_start __cmpsf2
__cmpsf2: @ 0x08012364
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __eqsf2
__eqsf2: @ 0x0801238C
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080123B0
	movs r1, #1
_080123B0:
	cmp r1, #0
	bne _080123C2
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _080123BE
	movs r1, #1
_080123BE:
	cmp r1, #0
	beq _080123C6
_080123C2:
	movs r0, #1
	b _080123CE
_080123C6:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_080123CE:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __nesf2
__nesf2: @ 0x080123D4
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080123F8
	movs r1, #1
_080123F8:
	cmp r1, #0
	bne _0801240A
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _08012406
	movs r1, #1
_08012406:
	cmp r1, #0
	beq _0801240E
_0801240A:
	movs r0, #1
	b _08012416
_0801240E:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_08012416:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __gtsf2
__gtsf2: @ 0x0801241C
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _08012440
	movs r1, #1
_08012440:
	cmp r1, #0
	bne _08012452
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _0801244E
	movs r1, #1
_0801244E:
	cmp r1, #0
	beq _08012458
_08012452:
	movs r0, #1
	rsbs r0, r0, #0
	b _08012460
_08012458:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_08012460:
	add sp, #0x28
	pop {r4, pc}

	thumb_func_start __gesf2
__gesf2: @ 0x08012464
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _08012488
	movs r1, #1
_08012488:
	cmp r1, #0
	bne _0801249A
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _08012496
	movs r1, #1
_08012496:
	cmp r1, #0
	beq _080124A0
_0801249A:
	movs r0, #1
	rsbs r0, r0, #0
	b _080124A8
_080124A0:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_080124A8:
	add sp, #0x28
	pop {r4, pc}

	thumb_func_start __ltsf2
__ltsf2: @ 0x080124AC
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _080124D0
	movs r1, #1
_080124D0:
	cmp r1, #0
	bne _080124E2
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _080124DE
	movs r1, #1
_080124DE:
	cmp r1, #0
	beq _080124E6
_080124E2:
	movs r0, #1
	b _080124EE
_080124E6:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_080124EE:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __lesf2
__lesf2: @ 0x080124F4
	push {r4, lr}
	sub sp, #0x28
	str r0, [sp, #0x20]
	str r1, [sp, #0x24]
	add r0, sp, #0x20
	mov r1, sp
	bl __unpack_f
	add r0, sp, #0x24
	add r4, sp, #0x10
	adds r1, r4, #0
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #1
	bhi _08012518
	movs r1, #1
_08012518:
	cmp r1, #0
	bne _0801252A
	movs r1, #0
	ldr r0, [sp, #0x10]
	cmp r0, #1
	bhi _08012526
	movs r1, #1
_08012526:
	cmp r1, #0
	beq _0801252E
_0801252A:
	movs r0, #1
	b _08012536
_0801252E:
	mov r0, sp
	adds r1, r4, #0
	bl __fpcmp_parts_f
_08012536:
	add sp, #0x28
	pop {r4, pc}
	.align 2, 0

	thumb_func_start __floatsisf
__floatsisf: @ 0x0801253C
	push {lr}
	sub sp, #0x10
	adds r1, r0, #0
	movs r0, #3
	str r0, [sp]
	lsrs r2, r1, #0x1f
	str r2, [sp, #4]
	cmp r1, #0
	bne _08012554
	movs r0, #2
	str r0, [sp]
	b _0801258C
_08012554:
	movs r0, #0x1e
	str r0, [sp, #8]
	cmp r2, #0
	beq _08012572
	movs r0, #0x80
	lsls r0, r0, #0x18
	cmp r1, r0
	bne _0801256C
	ldr r0, _08012568 @ =0xCF000000
	b _08012592
	.align 2, 0
_08012568: .4byte 0xCF000000
_0801256C:
	rsbs r0, r1, #0
	str r0, [sp, #0xc]
	b _08012574
_08012572:
	str r1, [sp, #0xc]
_08012574:
	ldr r2, [sp, #0xc]
	ldr r3, _08012598 @ =0x3FFFFFFF
	cmp r2, r3
	bhi _0801258C
	ldr r1, [sp, #8]
_0801257E:
	lsls r0, r2, #1
	subs r1, #1
	adds r2, r0, #0
	cmp r0, r3
	bls _0801257E
	str r1, [sp, #8]
	str r0, [sp, #0xc]
_0801258C:
	mov r0, sp
	bl __pack_f
_08012592:
	add sp, #0x10
	pop {pc}
	.align 2, 0
_08012598: .4byte 0x3FFFFFFF

	thumb_func_start __fixsfsi
__fixsfsi: @ 0x0801259C
	push {lr}
	sub sp, #0x14
	str r0, [sp, #0x10]
	add r0, sp, #0x10
	mov r1, sp
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp]
	cmp r0, #2
	bne _080125B4
	movs r1, #1
_080125B4:
	cmp r1, #0
	bne _080125E6
	movs r1, #0
	cmp r0, #1
	bhi _080125C0
	movs r1, #1
_080125C0:
	cmp r1, #0
	bne _080125E6
	movs r1, #0
	cmp r0, #4
	bne _080125CC
	movs r1, #1
_080125CC:
	cmp r1, #0
	beq _080125E0
_080125D0:
	ldr r0, [sp, #4]
	ldr r1, _080125DC @ =0x7FFFFFFF
	cmp r0, #0
	beq _080125FE
	adds r1, #1
	b _080125FE
	.align 2, 0
_080125DC: .4byte 0x7FFFFFFF
_080125E0:
	ldr r1, [sp, #8]
	cmp r1, #0
	bge _080125EA
_080125E6:
	movs r0, #0
	b _08012600
_080125EA:
	cmp r1, #0x1e
	bgt _080125D0
	movs r0, #0x1e
	subs r0, r0, r1
	ldr r1, [sp, #0xc]
	lsrs r1, r0
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _080125FE
	rsbs r1, r1, #0
_080125FE:
	adds r0, r1, #0
_08012600:
	add sp, #0x14
	pop {pc}

	thumb_func_start __negsf2
__negsf2: @ 0x08012604
	push {lr}
	sub sp, #0x14
	str r0, [sp, #0x10]
	add r0, sp, #0x10
	mov r1, sp
	bl __unpack_f
	movs r1, #0
	ldr r0, [sp, #4]
	cmp r0, #0
	bne _0801261C
	movs r1, #1
_0801261C:
	str r1, [sp, #4]
	mov r0, sp
	bl __pack_f
	add sp, #0x14
	pop {pc}

	thumb_func_start __make_fp
__make_fp: @ 0x08012628
	push {lr}
	sub sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	mov r0, sp
	bl __pack_f
	add sp, #0x10
	pop {pc}
	.align 2, 0

	thumb_func_start __extendsfdf2
__extendsfdf2: @ 0x08012640
	push {r4, r5, r6, lr}
	sub sp, #0x18
	str r0, [sp, #0x14]
	add r0, sp, #0x14
	add r1, sp, #4
	bl __unpack_f
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0xc]
	ldr r3, [sp, #0x10]
	movs r4, #0
	lsrs r6, r3, #2
	lsls r5, r4, #0x1e
	adds r4, r6, #0
	orrs r4, r5
	lsls r3, r3, #0x1e
	str r4, [sp]
	bl __make_dp
	add sp, #0x18
	pop {r4, r5, r6, pc}

	thumb_func_start __lshrdi3
__lshrdi3: @ 0x0801266C
	push {r4, r5, r6, lr}
	adds r6, r1, #0
	adds r5, r0, #0
	cmp r2, #0
	beq _0801269C
	movs r0, #0x20
	subs r0, r0, r2
	cmp r0, #0
	bgt _08012688
	movs r4, #0
	rsbs r0, r0, #0
	adds r3, r6, #0
	lsrs r3, r0
	b _08012698
_08012688:
	adds r1, r6, #0
	lsls r1, r0
	adds r4, r6, #0
	lsrs r4, r2
	adds r0, r5, #0
	lsrs r0, r2
	adds r3, r0, #0
	orrs r3, r1
_08012698:
	adds r1, r4, #0
	adds r0, r3, #0
_0801269C:
	pop {r4, r5, r6, pc}
	.align 2, 0

	thumb_func_start __muldi3
__muldi3: @ 0x080126A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x10
	str r0, [sp]
	str r1, [sp, #4]
	str r2, [sp, #8]
	str r3, [sp, #0xc]
	ldr r3, [sp]
	ldr r0, _0801270C @ =0x0000FFFF
	mov ip, r0
	adds r2, r3, #0
	ands r2, r0
	lsrs r3, r3, #0x10
	ldr r1, [sp, #8]
	adds r0, r1, #0
	mov r4, ip
	ands r0, r4
	lsrs r1, r1, #0x10
	adds r5, r2, #0
	muls r5, r0, r5
	adds r4, r2, #0
	muls r4, r1, r4
	adds r2, r3, #0
	muls r2, r0, r2
	muls r3, r1, r3
	lsrs r0, r5, #0x10
	adds r4, r4, r0
	adds r4, r4, r2
	cmp r4, r2
	bhs _080126E0
	movs r0, #0x80
	lsls r0, r0, #9
	adds r3, r3, r0
_080126E0:
	lsrs r0, r4, #0x10
	adds r7, r3, r0
	mov r1, ip
	ands r4, r1
	lsls r0, r4, #0x10
	ands r5, r1
	adds r6, r0, #0
	orrs r6, r5
	adds r1, r7, #0
	adds r0, r6, #0
	ldr r3, [sp]
	ldr r4, [sp, #0xc]
	adds r2, r3, #0
	muls r2, r4, r2
	ldr r5, [sp, #4]
	ldr r4, [sp, #8]
	adds r3, r5, #0
	muls r3, r4, r3
	adds r2, r2, r3
	adds r1, r7, r2
	add sp, #0x10
	pop {r4, r5, r6, r7, pc}
	.align 2, 0
_0801270C: .4byte 0x0000FFFF

	thumb_func_start __negdi2
__negdi2: @ 0x08012710
	push {r4, lr}
	rsbs r2, r0, #0
	adds r3, r2, #0
	rsbs r1, r1, #0
	cmp r2, #0
	beq _0801271E
	subs r1, #1
_0801271E:
	adds r4, r1, #0
	adds r1, r4, #0
	adds r0, r3, #0
	pop {r4, pc}
	.align 2, 0
