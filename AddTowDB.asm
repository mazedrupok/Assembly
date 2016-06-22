org 100h
.model small
.stack 100h
.data
    x db 0
    y db 0
.code     
    mov ah, 1
    int 21h
    mov x, al
    
    mov ah, 1
    int 21h
    mov y, al
    
    add al, x
    mov y, al
    sub y, 48
    
    mov ah, 2
    mov dl, y
    int 21h
    
ret
