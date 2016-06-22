org 100h
.model small
.stack 100h
.data
    x db "Hi MazedRupok$"
.code                     
    mov ah, 9  ;string output
    lea dx, x  ;set address of x[0] to dx by LEA
    int 21h
    
ret
