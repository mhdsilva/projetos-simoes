; Teste das instrucoes que vao sendo implementadas!


; 4 Perguntas ao implemantar as instrucoes:
;	1) O Que preciso fazer para esta instrucao?
;	2) Onde Comeca: Pegargcc o que tem que fazer e ir voltando ate' chegar em um registrador (ie. PC)
;	3) Qual e' a Sequencia de Operacoes: Descrever todos os comandos que tem que dar nos cilos de Dec e Exec
;	4) Ja' terminou??? Cumpriu o que tinha que fazer??? O PC esta' pronto para a proxima instrucao (cuidado com Load, Loadn, Store, Jmp, Call)


jmp main



main:
	loadn r0, #'C'
	STOREHD Dado, r0
	
	loadn r0, #0
	LOADHD r0, Dado
	loadn r1, #'C'
	cmp r0, r1
	jeq Deu_Certo
	
	loadn r2, #'E'
	loadn r3, #0
	outchar r2, r3
	
	jmp Fim
	
	Deu_Certo:
		loadn r2, #'A'
		loadn r3, #0
		outchar r2, r3
	
	Fim:
		halt
	
Dado : var #1  ; O comando VAR aloca bytes de memoria e associa o primeiro byte ao LABEL
static Dado + #0, #'B'
	
	
	
	
