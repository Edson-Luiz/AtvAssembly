.data

messageEqual: .asciiz "A área é: "
pi: .float 3.14
raio: .float 12.0

.text

lwc1 $f4, raio
mul.s  $f1, $f4, $f4

lwc1 $f3, pi
mul.s $f2, $f3, $f1

li $v0, 4
la $a0, messageEqual 
syscall
li $v0, 2
add.s $f12, $f0, $f2
syscall