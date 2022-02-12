       LDR     R0,=0xF0F1F3F4
       LDR     R2,=0x000000FF ;mask
       LDR     R1,=0x200
      
       STR     R0,[R1]

       MOV     R4,#0x0; we will assign the masking result here
       MOV     R5,#0 ; sum

       AND     R4,R0,R2
       ADD     R5,R5,R4

       LSR     R0,R0,#8 ; reaching F3
       AND     R4,R0,R2
       ADD     R5,R5,R4

       LSR     R0,R0,#8 ; reaching F1
       AND     R4,R0,R2
       ADD     R5,R5,R4

       LSR     R0,R0,#8 ; reaching F0
       AND     R4,R0,R2
       ADD     R5,R5,R4

       LSR     R5,R5,#2 ; average 

       STR     R5,[R1,#4]