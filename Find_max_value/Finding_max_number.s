       LDR     R0,=0xf5f7f9f3 ; since f9 is the largest,the purpose of the code is to print f9
       LDR     R9,=0x30303060

       MOV     R1,#0xFF ; mask
       MOV     R2,#0 ; maximum number
       MOV     R8,#0 ; first number
       MOV     R4,#3 ; loop control

loop1  

       AND     R8,R0,R1
       LSR     R0,R0,#8
       CMP     R8,R2
       BHS     loop2

       MOV     R2,R2
       B       atla

loop2  

       MOV     R2,R8
atla   

       SUBS    R4,R4,#1
       BHS     loop1

       STR     R2,[R9]