; =========================
; 1-Address (Accumulator)
; X = (A + B*C) / (D - E*F)
; Auxiliaries: T1, T2
; =========================

; T1 = B*C
LOAD B
MUL C
STORE T1

; T2 = A + T1 
LOAD A
ADD T1
STORE T2

; T1 = E*F
LOAD E
MUL F
STORE T1

; T1 = D - T1
LOAD D
SUB T1
STORE T1

; X = T2 / T1
LOAD T2
DIV T1
STORE X