.data
.text

addi $a1, $zero, 44
jal somatorio

somatorio:
addi $s0, $zero, 0
while:
bgt $zero, $a1, exit
add $s0, $s0, $a1
subi $a1, $a1, 1
j while
exit:
li $v0, 1
add $a0, $zero, $s0
jr $ra
