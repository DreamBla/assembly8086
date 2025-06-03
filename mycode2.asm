org 100h
.data 
a db 8
b db 4
.code

mov cl,a
mov bl,b
mov al,0 
cmp cl,bl
je fin
jg grater
jl less

grater:
cmp cl,bl
jl less 
sub cl,bl
cmp bl,cl
je fin
jne grater


less:
cmp bl,cl
jl grater
sub bl,cl
cmp bl,cl
je fin
jne less

fin:
mov dl,cl
mov bl,cl
mov cl,bl

ret