; =========================
; 3-Address
; X = (A + B*C) / (D - E*F)
; Auxiliaries: T1, T2, T3, T4
; =========================

MUL T1, B, C      ; T1 = B*C
ADD T2, A, T1     ; T2 = A + T1

MUL T3, E, F      ; T3 = E*F
SUB T4, D, T3     ; T4 = D - T3   

DIV X,  T2, T4    ; X  = T2 / T4