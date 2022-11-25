.data
.text
addi $s0, $zero, 0
addi $s1, $zero, 1
addi $s2, $zero, 10
while: beq $s1, $s2, saida
add $s0, $s0, $s1
addi $s1, $s1, 1
j while
saida:
