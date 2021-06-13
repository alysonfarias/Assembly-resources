.text #n�o precisamos de .data se n�o pegar diretamente da memoria RAM

	 #soma = add 3 registradores ::::: soma imediata = addi 2 registradores 
	li $t0, -49
	li $t1, -51
	add $s0, $t0, $t1 #soma
	addi $s1, $zero, 101 
	
	add $s2, $s0, $s1
	
	#subtra��o = sub 3  registradores ::::: subtra��o imediata = subi 2 registradores 
	
	sub $s3, $t0, $t1
	sub $s4, $t1, $t0
	
	subi $s5, $s3, -998
	
	#multiplica��o = mul  3 registradores
	li $t2, 1
	li $t3, 5

	mul $s6, $t2, $t3 # multiplica e armazena no registrador
	
	li $v0, 1 #instru��o para imprimir int
	move $a0, $s6 #mover do registrador padrao para nossa variavel
	syscall
	
	
		#shiftleft l�gico = potencia de 2
	sll $s7, $t2, 10 # faz SH de t1 n casas para a esquerda
		#ou seja no codigo acima temos $t2 = 2 x (2^10 = 1024)
		
		#shift right l�gico =  permite dividir por pot�ncias de 2 
	srl $s7, $s7, 2 # faz SH de t1 n casas para a esquerda
		#ou seja no codigo acima temos $s7 = 1024 / (2^2 = 4)
	
	#divis�o de inteiros = 2 registradores e resultado da parte inteiro vai pra lo
				# e o resto para hi
	div $t3, $t2
	
	#como lo e hi nao s�o registradores padr�es e n�o usam $ usamos o comando padr�o mflo e mfli
	mflo $t8  	#move from lo to $
	mfhi $t9 	#move from hi to $
	
