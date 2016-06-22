org 100h
.model small
.stack 100h
.data
    x db 0     ;declare x data as data byte(DB) or 1 byte      
    
.code                      
    mov ah, 1  ;input a character using accumulator register(AX)
    int 21h    ;interrupt for input
    mov x,al   ;store input to x
    
    mov ah, 2  ;output a character using accumulator register(AX)
    mov dl, x  ;store data of x in data register (DX)
    int 21h    ;interrupt for output
    
