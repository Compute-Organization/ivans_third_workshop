; =========================
; 2-Address (FINAL)
; X = (A + B*C) / (D - E*F)
; Auxiliaries: T1, T2, T3
; =========================

; T1 = B*C
MOVE T1, B
MUL  T1, C

; T2 = A + T1
MOVE T2, A
ADD  T2, T1

; T1 = E*F
MOVE T1, E
MUL  T1, F

; T3 = D - T1 
MOVE T3, D
SUB  T3, T1

; X = T2 / T3
MOVE X, T2
DIV  X, T3