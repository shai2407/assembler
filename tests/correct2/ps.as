; file ps.as
.entry LIST
.extern W
MAIN: add r3, LIST
.extern O
.entry Q
.entry Q
LOOP: prn	 #+12
macro m1
 inc 	r6
 mov r3, W
endm
 lea STR, r6
 m1
 sub r1,     r4
 bne     END
macro	 m2
	mov r6, W
	inc r1
	endm
m2
	m2
cmp K, #+5
 cmp val1, #-6
 bne END[r15]
 dec K
.entry MAIN
m1
; file ps.as 	%%%%
 sub LOOP[r13] ,r12
END: 	stop
STR: .string     "abcdefg"
LIST: .data 6, -9, +11,		   -4
 .data -100,1 , 9
.entry K
K: .data 31
.extern 	val1
