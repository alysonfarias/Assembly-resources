.data
	mens: .asciiz "Olá mundo" #mensagem ao usuario

.text 
	#instruções do programa
	li $v0, 4 #instrução impressao String
	la $a0, mens #indica o endereço que está a msg, começa no registrador 4 $a0
	syscall #executa codigo
	
	#li $v0, 10 + syscall encerra o programa 