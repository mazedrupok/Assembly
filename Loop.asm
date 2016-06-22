main proc
    mov cx, 9    ;loop runs 9 times
    mov ah, 2    ;output
    mov dl, '1'  ;dl start with 1
    
    top:
      int 21h
      inc dl     ;increment by 1
      loop top
      
      mov ah, 4ch
      int 21h    
      
      main endp
end main
