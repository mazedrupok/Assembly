
org 100h 
.model small
.stack 100h               
     
.data 
  x db 10,13,"Noakhali Science & Technology University$"
  y db 6
.code          
main proc
    mov cx, 0
    top:     
      mov ah, 1
      int 21h
             
      push ax
      inc cx
      cmp al, 0DH      
      JNE top
      
    Newline: 
      mov ah, 2
      mov dl, 0Dh
      int 21h
      mov ah, 2
      mov dl, 0Ah
      int 21h
   
   print: 
   pop ax 
   mov dx, ax
   mov ah, 2
   int 21h
   dec cx
   
   cmp cx, 0
   JNE print
       
ret

