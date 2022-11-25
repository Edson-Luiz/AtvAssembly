.data 

messageMaior: .asciiz "É maior"
messageMenor: .asciiz "É menor"

.text

addi $t1, $zero, 50
addi $t0, $zero, 100

slt $s0, $t0, $t1
bne $s0, $zero, printMessage
li $v0, 4
la $a0, messageMenor
syscall

cont:
  ## tell the system this is the end of main
  li $v0, 10
  syscall
  
  printMessage:
  li $v0, 4
  la $a0, messageMaior
  syscall
  j cont