       ;       to understand the masking, i solved it using the mask method, it could be solved short without using a mask
       LDR     R0,=0x200
       LDR     R1,=0xF7F6F5F4
       STR     R1,[R0]
       MOV     R2,#0x04 ; increasing the adress value
       MOV     R3,#0xFF ; we perform masking to achieve values such as F4, F5
       MOV     R4,#1 ; checking odd or even
       MOV     R5,#0 ; even numbers
       MOV     R6,#0 ; odd numbers
       MOV     R7,#0x0 ; we will assign values such as F4, F5 that we have masked here
       MOV     R10,#3 ; loop control
loop2  
       AND     R7, R3,R1
       AND     R8,R7,R4
       CMP     R8,#1
       BNE     loop1
       ADD     R6,R6,#1
       B       atla

loop1  
       ADD     R5,R5,#1

atla   

       LSR     R1,R1,#8
       SUBS    R10,R10,#1
       BHS     loop2

       STR     R5,[R0,R2]
       ADD     R2,R2,#0x04
       STR     R6,[R0,R2]