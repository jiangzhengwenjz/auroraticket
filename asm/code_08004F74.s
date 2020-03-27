	.include "asm/macros.inc"
	.include "constants/constants.inc"

	.syntax unified

	.text

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

	thumb_func_start CalcCRC16WithTable
CalcCRC16WithTable: @ 0x08006B18
	push {r4, r5, r6, lr}
	adds r5, r0, #0
	adds r4, r1, #0
	ldr r2, _08006B54 @ =0x00001121
	movs r3, #0
	cmp r3, r4
	bhs _08006B46
	ldr r6, _08006B58 @ =gCrc16Table
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
_08006B58: .4byte gCrc16Table

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
	bl CalcCRC16WithTable
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
	bl CalcCRC16WithTable
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
	bl CalcCRC16WithTable
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
	bl SiiRtcSetDateTime
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
