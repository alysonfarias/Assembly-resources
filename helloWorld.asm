.data
	mens: .asciiz "Ol� mundo" #mensagem ao usuario

.text 
	#instru��es do programa
	li $v0, 4 #instru��o impressao String
	la $a0, mens #indica o endere�o que est� a msg, come�a no registrador 4 $a0
	syscall #executa codigo
	
	#li $v0, 10 + syscall encerra o programa 