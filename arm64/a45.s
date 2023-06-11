.text
.global genseq
genseq:
	mov x3, xzr
	mov	x4, #1
	mov	x5, #1
loop:
	str	x4, [x0, x3, lsl #3]
	add	x3, x3,#1
	adds	x6, x4, x5
	bvs	end
	mov	x4, x5
	mov	x5, x6
	cmp	x3, x1
	bne	loop
end:
	mov	x0, x3
	ret
