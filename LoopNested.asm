main proc
    mov cl, 30h       ;cl is zero now
    mov bl, '1'       ;bl is one now
    
    L1: 
       cmp bl, 39h    ;compare bl with 9
         jg exit      ;if greater 9 than exit
       cmp cl, 33h    ;compare counter with 3
         je newline:  ;if equal 3 create a newline
       
       mov ah, 2      ;output
       mov dl, bl     ;output bl
       int 21h
       
       inc bl         ;increment bl
       inc cl         ;increment cl
       
       jmp L1
       
    newline:
      mov ah, 2
      mov dl, 0dh
      int 21h
      mov dl, 0ah
      int 21h  
      
      mov cl, 30h
      jmp L1 
       
    exit:  
      mov ah, 4ch
      int 21h    
      
      main endp
end main
