NAME	LOW_LEVEL

?PR?push_bank?LOW_LEVEL         SEGMENT CODE 
?PR?pop_bank?LOW_LEVEL         SEGMENT CODE 
?PR?returni?LOW_LEVEL         SEGMENT CODE 

PUBLIC push_bank
PUBLIC pop_bank
PUBLIC returni

EXTRN CODE (timer_isr)

;;;;;;;;;;;;;;
	RSEG  ?PR?push_bank?LOW_LEVEL
	USING	0
push_bank:
	USING	0

	pop acc
	pop b
	push	ar2
	push	ar3
	push	ar4
	push	ar5
	push	ar6
	push	ar7
	push	ar0
	push	ar1
	push b
	push acc
	
	RET

;;;;;;;
	RSEG  ?PR?pop_bank?LOW_LEVEL
	USING	0
pop_bank:
	USING	0

	pop acc
	pop b
	pop		ar1																				
	pop		ar0																				
	pop		ar7																				
	pop		ar6																				
	pop		ar5																				
	pop		ar4																				
	pop		ar3																				
	pop		ar2
	push b
	push acc	
	RET


;hook to call reti from C (Keil)
	RSEG  ?PR?returni?LOW_LEVEL
	USING	0
returni:
	USING	0
	DEC SP
	DEC SP
	RETI

;TMR0 interrupt vector
CSEG AT 0000BH
	LJMP timer_isr

END