/* Jonathan West / Zach Johnston */
/* ET $$$ - Lab 1 ARM */
/* 02/19/2014 */


		.include "address_map_arm.s"
		
		.text
		.global _start
		
_start:
	LDR	  r2, =SW_BASE
	LDR	  r5, =LEDR_BASE

	/*get first ADD value */   
	LDR r4, [R2, #0]       /* get first value */
	/*STR r4, [r5, #0];       displays value to red */

	/*get second ADD value */   
	LDR r6, [R2, #0]       /* get value, changed to register 6 (unused till now) */
	/*STR r6, [R5, #0];        displays value to red */

	add r7, r4, r6	      /* add values, to register 7 */
	STR r7, [R5, #0];      /* stores bit r7 to green led (register 3) */
	
	/*subtract two different values*/
	LDR r9, [R2, #0]
	
	LDR r8, [R2, #0]
	
	SUB r10, r9, r8 
	STR r10, [R5, #0]
	
	.end