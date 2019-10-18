	#==================================================================================================
	#
	# This test program was automatically generated by the MicroTESK tool
	# Generation started: Fri Oct 18 10:41:59 AST 2019
	#
	# Ivannikov Institute for System Programming of the Russian Academy of Sciences (ISP RAS)
	# 25 Alexander Solzhenitsyn st., Moscow, 109004, Russia
	#
	# http://www.microtesk.org
	# http://forge.ispras.ru/projects/microtesk
	#
	#==================================================================================================

	#==================================================================================================
	# Prologue (riscv_test.rb:231)

	#====================================== .section .text.init =======================================
	.section .text.init
	.align 6
	.weak stvec_handler
	.weak mtvec_handler
	.globl _start
_start:
	j reset_vector
	.align 2
trap_vector:
	csrr t5, mcause
	li t6, 0x8
	beq t5, t6, write_tohost
	li t6, 0x9
	beq t5, t6, write_tohost
	li t6, 0xb
	beq t5, t6, write_tohost
	la t5, mtvec_handler
	beqz t5, 1f
	jr t5
1:
	csrr t5, mcause
	bgez t5, handle_exception
	j other_exception
handle_exception:
other_exception:
1:
	ori gp, gp, 1337
write_tohost:
	nop
	sw gp, tohost, t5
	nop
	j write_tohost
reset_vector:
	csrr a0, mhartid
1:
	bnez a0, 1b
	la t0, 1f
	csrw mtvec, t0
	csrwi satp, 0x0
	.align 2
1:
	la t0, 1f
	csrw mtvec, t0
	li t0, 0xffffffffffffffff
	csrw pmpaddr0, t0
	li t0, 0x1f
	csrw pmpcfg0, t0
	.align 2
1:
	la t0, 1f
	csrw mtvec, t0
	csrwi medeleg, 0x0
	csrwi mideleg, 0x0
	csrwi mie, 0x0
	.align 2
1:
	li gp, 0x0
	la t0, trap_vector
	csrw mtvec, t0
	li a0, 0x1
	slli a0, a0, 0x1f
	bgez a0, 1f
	fence
	li gp, 0x1
	ecall
1:
	la t0, stvec_handler
	beqz t0, 1f
	csrw stvec, t0
	li t0, 0xb109
	csrw medeleg, t0
	csrr t1, medeleg
	bne t0, t1, other_exception
1:
	csrwi mstatus, 0x0

	# RVTEST_FP_ENABLE
	li a0, 0x2000
	csrs mstatus, a0
	csrwi fcsr, 0x0

	la t0, 1f
	csrw mepc, t0
	csrr a0, mhartid
	mret
1:

	#==================================================================================================
	# External Code (riscv_test_macros.rb:503)

test_2:
	li gp, 0x2
	la a0, test_2_data
	flw ft0, 0(a0)
	flw ft1, 4(a0)
	flw ft2, 8(a0)
	lw a3, 12(a0)
	fdiv.s ft3, ft0, ft1
	fmv.x.s a0, ft3
	fsflags a1, zero
	li a2, 0x1
	bne a0, a3, fail
	bne a1, a2, fail
test_3:
	li gp, 0x3
	la a0, test_3_data
	flw ft0, 0(a0)
	flw ft1, 4(a0)
	flw ft2, 8(a0)
	lw a3, 12(a0)
	fdiv.s ft3, ft0, ft1
	fmv.x.s a0, ft3
	fsflags a1, zero
	li a2, 0x1
	bne a0, a3, fail
	bne a1, a2, fail
test_4:
	li gp, 0x4
	la a0, test_4_data
	flw ft0, 0(a0)
	flw ft1, 4(a0)
	flw ft2, 8(a0)
	lw a3, 12(a0)
	fdiv.s ft3, ft0, ft1
	fmv.x.s a0, ft3
	fsflags a1, zero
	li a2, 0x0
	bne a0, a3, fail
	bne a1, a2, fail
test_5:
	li gp, 0x5
	la a0, test_5_data
	flw ft0, 0(a0)
	flw ft1, 4(a0)
	flw ft2, 8(a0)
	lw a3, 12(a0)
	fsqrt.s ft3, ft0
	fmv.x.s a0, ft3
	fsflags a1, zero
	li a2, 0x1
	bne a0, a3, fail
	bne a1, a2, fail
test_6:
	li gp, 0x6
	la a0, test_6_data
	flw ft0, 0(a0)
	flw ft1, 4(a0)
	flw ft2, 8(a0)
	lw a3, 12(a0)
	fsqrt.s ft3, ft0
	fmv.x.s a0, ft3
	fsflags a1, zero
	li a2, 0x0
	bne a0, a3, fail
	bne a1, a2, fail
test_7:
	li gp, 0x7
	la a0, test_7_data
	flw ft0, 0(a0)
	flw ft1, 4(a0)
	flw ft2, 8(a0)
	lw a3, 12(a0)
	fsqrt.s ft3, ft0
	fmv.x.s a0, ft3
	fsflags a1, zero
	li a2, 0x10
	bne a0, a3, fail
	bne a1, a2, fail
test_8:
	li gp, 0x8
	la a0, test_8_data
	flw ft0, 0(a0)
	flw ft1, 4(a0)
	flw ft2, 8(a0)
	lw a3, 12(a0)
	fsqrt.s ft3, ft0
	fmv.x.s a0, ft3
	fsflags a1, zero
	li a2, 0x1
	bne a0, a3, fail
	bne a1, a2, fail

	#==================================================================================================
	# Epilogue (riscv_test_macros.rb:883)

	bne zero, gp, pass
fail:
	fence
1:
	beqz gp, 1b
	sll gp, gp, ra
	or gp, gp, ra
	ecall
pass:
	fence
	li gp, 0x1
	ecall
	unimp

	#==================================================================================================
	# Data

	#============================================= .data ==============================================
	.data

	#========================================== Global Data ===========================================
	.align 4
	.pushsection .tohost,"aw",@progbits
	.align 8; .global tohost; tohost: .dword 0;
	.align 8; .global fromhost; fromhost: .dword 0;
	.popsection;
	.align 4
	.globl begin_signature
begin_signature:

	.align 4
	.globl end_signature
end_signature:
	.align 8; .global begin_regstate; begin_regstate:
	.word 128;
	.align 8; .global end_regstate; end_regstate:
	.word 4;

	.align 2
test_2_data:
	.float 3.1415927
	.float 2.7182817
	.float 0.0
	.float 1.1557274

	.align 2
test_3_data:
	.float -1234.0
	.float 1235.1
	.float 0.0
	.float -0.9991094

	.align 2
test_4_data:
	.float 3.1415927
	.float 1.0
	.float 0.0
	.float 3.1415927

	.align 2
test_5_data:
	.float 3.1415927
	.float 0.0
	.float 0.0
	.float 1.7724539

	.align 2
test_6_data:
	.float 10000.0
	.float 0.0
	.float 0.0
	.float 100.0

	.align 2
test_7_data:
	.float -1.0
	.float 0.0
	.float 0.0
	.dword 0x7FC00000

	.align 2
test_8_data:
	.float 171.0
	.float 0.0
	.float 0.0
	.float 13.076696