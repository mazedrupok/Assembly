
org 100h 
.model small
.stack 100h               
     
.data 
  ;x db 10,13,"Noakhali Science & Technology University$"
  y db 10, 13 
  p db ?

.code          
main proc
    mov cx, 0 
    mov di, 0
    top:     
      mov ah, 1
      int 21h
      mov ds[di], al       
      inc di
      inc cx
      cmp al, 0DH      
      JNE top
      
   mov ah, 2 
   mov dl, y
   int 21h 
   
   mov di, 0   
                 
   mov ah, 2              
   print: 
   mov dl, ds[di]
   
   cmp dl, ' '
   JE nolab
     
   cmp dl, 'Z'
   JNG nolab
   
   sub dl, ' '
   
   nolab: 
   int 21h
   inc di
   dec cx
   
   cmp cx, 0h
   JNE print
   
   main endp
end main
       
ret

