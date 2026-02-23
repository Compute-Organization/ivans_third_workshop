; =========================
; 0-Address (Stack Machine)
; X = (A + B*C) / (D - E*F)
; =========================

PUSH B
PUSH C
MUL            ; -> (B*C)

PUSH A
ADD            ; -> (A + B*C)

PUSH D
PUSH E
PUSH F
MUL            ; -> (E*F)

SUB            ; -> (D - E*F)

DIV            ; -> (A + B*C) / (D - E*F)

POP X