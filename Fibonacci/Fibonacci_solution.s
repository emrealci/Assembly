       ;       0 1 1 2 3 5 8 13 21 34 55 89

       MOV     R0,#0 ; first number
       MOV     R1,#1; second number
       MOV     R2,#9 ; [ number of terms - 3 ]
       LDR     R3,=0x4000

       STR     R0,[R3]
       ADD     R3,R3,#0x04
       STR     R1,[R3]

       MOV     R4,#0 ; buffer

loop1  
       MOV     R4,R0
       MOV     R0,R1
       ADD     R1,R4,R0
       ADD     R3,R3,#0x04
       STR     R1,[R3]
       SUBS    R2,R2,#1
       BHS     loop1





