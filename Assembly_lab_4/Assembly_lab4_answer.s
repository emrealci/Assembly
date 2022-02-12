       LDR     R0,=0X20000040
       MOV     R1,#0xF0 ; first value
       MOV     R2,#0 ; even
       MOV     R3,#0 ; odd

       MOV     R4,#3 ; loop control
       MOV     R6,#3
       MOV     R5,#000000000
       MOV     R7,#1
       MOV     R8,#0
       LDR     R9,=0x30000040

loop2  

loop1  

       LSL     R5,R5,#8
       ORR     R5,R5,R1
       ADD     R1,R1,#01
       AND     R8,R1,R7
       CMP     R8,#1
       BEQ     sayac
       ADD     R2,R2,#1
       B       atla


sayac  
       ADD     R3,R3,#1
atla   
       SUBS    R4,R4,#1
       BHS     loop1

       STR     R5,[R0]
       MOV     R4,#3
       ADD     R0,R0,#0x04
       SUBS    R6,R6,#1
       BHS     loop2
       STR     R2,[R9] ;number of evens
       STR     R3,[R9,#0x04] ; number of odds




