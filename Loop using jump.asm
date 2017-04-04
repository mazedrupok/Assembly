
org 100h 
.model small
.stack 100h               
     
.data 
  x db 10,13,"Noakhali Science & Technology University$"
  y db 6
.code          
main proc
    mov cx, 20
    
    top:
      mov ah, 9
      lea dx, x     
      int 21h
     
      dec cx
      cmp cx, 0h
      JNE top         
ret

