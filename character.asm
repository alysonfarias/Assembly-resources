.data
	nome: .asciiz "Alyson" #mensagem ao usuario
	sexo: .byte 'M' #caractere
	idade: .word 19	
	
.text
	li $v0, 4 #imprimi char ou string
	la $a0, nome
	syscall
	
	li $v0, 4 #imprimi char ou string
	la $a0, sexo
	syscall
	
	li $v0, 1
	lw $a0, idade
	syscall
	
	li $v0, 10 
	syscall