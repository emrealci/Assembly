       ;       when the first loop is over, redefine the first loop control
       LDR     R0,=0x3040
       LDR     R8,=0x4040
       MOV     R1,#0X0F ; first value
       MOV     R2,#3 ; first loop
       MOV     R3,#0x00000000
       MOV     R4,#3 ; second loop
       MOV     R5,#0 ; sum

loop2  

loop1  
       LSL     R3,R3,#8
       ORR     R3,R1,R3
       ADD     R5,R5,R1
       ADD     R1,R1,#0x10 ; e.g : make 0F --> 1F


       SUBS    R2,R2,#1
       BHS     loop1

       STR     R3,[R0]
       ADD     R0,R0,#0x04
       MOV     R2,#3

       SUBS    R4,R4,#1
       BHS     loop2
       LSR     R5,R5,#4 ; average
       STR     R5,[R8]
