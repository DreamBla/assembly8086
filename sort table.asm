org 100h

.data
T db 9, 5, 6    ; Array of 3 bytes

.code
start:
    mov cx, 2        ; Number of passes (n-1 for n elements)
outer_loop:
    mov si, 0        ; Start of inner loop

inner_loop:
    mov al, T[si]    ; Load current element into AL
    mov bl, T[si+1]  ; Load next element into BL
    cmp al, bl       ; Compare current and next
    jbe no_swap      ; If already in order, skip swap

    ; Swap T[si] and T[si+1]
    mov T[si], bl
    mov T[si+1], al

no_swap:
    inc si
    cmp si, 2        ; We stop at index 1 (last compare is T[1] vs T[2])
    jl inner_loop

    loop outer_loop  ; Repeat for CX passes

    ; End program (for DOSBox)
    
