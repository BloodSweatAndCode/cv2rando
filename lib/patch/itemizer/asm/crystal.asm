PHP
TYA
PHA

LDY #$00

CHECK LDA $6030,Y
CMP $7F
BNE NEXT

LDA $6031,Y
CMP *$30
BNE NEXT

LDA $6032,Y
CMP *$50
BNE NEXT

LDA *$51
AND #$7
STA $6000
LDA $6033,Y
CMP $6000
BNE NEXT

BEQ DONE

NEXT CPY #$8
BEQ CRYS
INY
INY
INY
INY
BNE CHECK

CRYS LDA $91
AND #$60
CLC
ROR A
ROR A
ROR A
TAY
LDA $7F
STA $6030,Y
LDA *$30
STA $6031,Y
LDA *$50
STA $6032,Y
LDA *$51
AND #$7
STA $6033,Y

LDA *$91
CLC
ADC #$20
STA *$91

DONE 
PLA
TAY
PLP

LDA $91

RTS
