.data
_Prompt: .asciiz "Enter an integer:  "
_ret: .asciiz "\n"
.globl main
.text
j main
read:
  li $v0,4
  la $a0,_Prompt
  syscall
  li $v0,5
  syscall
  jr $ra
write:
  li $v0,1
  syscall
  li $v0,4
  la $a0,_ret
  syscall
  move $v0,$0
  jr $ra

GCD:
label4:
  li $t3, 0
  sw $t3, 20($sp)
  lw $t1, 16($sp)
  lw $t2, 20($sp)
  bne $t1,$t2,label3
  j label2
label3:
  lw $t1, 12($sp)
  lw $t2, 16($sp)
  div $t1, $t2
  mfhi $t3
  sw $t3, 24($sp)
  lw $t1, 24($sp)
  move $t3, $t1
  sw $t3, 20($sp)
  lw $t1, 16($sp)
  move $t3, $t1
  sw $t3, 12($sp)
  lw $t1, 20($sp)
  move $t3, $t1
  sw $t3, 16($sp)
  j label4
label2:
  lw $v0,12($sp)
  jr $ra
label1:

main:
  addi $sp, $sp, -44
  addi $sp, $sp, -4
  sw $ra,0($sp)
  jal read
  lw $ra,0($sp)
  addi $sp, $sp, 4
  sw $v0, 24($sp)
  lw $t1, 24($sp)
  move $t3, $t1
  sw $t3, 12($sp)
  addi $sp, $sp, -4
  sw $ra,0($sp)
  jal read
  lw $ra,0($sp)
  addi $sp, $sp, 4
  sw $v0, 28($sp)
  lw $t1, 28($sp)
  move $t3, $t1
  sw $t3, 16($sp)
  move $t0,$sp
  addi $sp, $sp, -32
  sw $ra,0($sp)
  lw $t1, 12($t0)
  move $t3,$t1
  sw $t3,12($sp)
  lw $t1, 16($t0)
  move $t3,$t1
  sw $t3,16($sp)
  jal GCD
  lw $ra,0($sp)
  addi $sp,$sp,32
  sw $v0,32($sp)
  lw $t1, 32($sp)
  move $t3, $t1
  sw $t3, 20($sp)
  lw $a0, 20($sp)
  addi $sp, $sp, -4
  sw $ra,0($sp)
  jal write
  lw $ra,0($sp)
  addi $sp, $sp, 4
  li $t3, 1
  sw $t3, 40($sp)
  li $v0, 10
  syscall
label6:
