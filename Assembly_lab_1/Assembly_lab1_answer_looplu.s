       LDR     R0,=0xF0F1F3F4
       LDR     R2,=0xFF ; mask
       LDR     R1,=0x200

       STR     R0,[R1]

       MOV     R4,#0x0 ; masking result
       MOV     R5,#0 ; sum

       AND     R4,R0,R2
       ADD     R5,R5,R4

       LSR     R0,R0,#8 ; access F3
       AND     R4,R0,R2
       ADD     R5,R5,R4

       LSR     R0,R0,#8 ; acces F1
       AND     R4,R0,R2
       ADD     R5,R5,R4

       LSR     R0,R0,#8
       AND     R4,R0,R2
       ADD     R5,R5,R4

       LSR     R5,R5,#2 ; finding average

       STR     R5,[R1,#4]