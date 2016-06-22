org 100h
.model small
.stack 100h
.data
    x db 0
.code     
    mov ah, 1    ;input
    int 21h
    mov x, al    ;store in x
    
    mov ah, 2    ;output
    mov dl, 0dh  ;carriage return
    int 21h
    mov dl, 0ah  ;line feed
    int 21h
    
    mov ah, 2    ;output
    mov dl, x    ;taking x to dl
    int 21h
    
ret
