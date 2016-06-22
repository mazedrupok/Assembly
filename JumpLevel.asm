.code

main proc    ;proc for procedure
    first: 
      mov dl, 6   ;set dl to value 6
      add dl, 48  ;for ascii value of 6
      mov ah, 2   ;output
      int 21h
      jmp second  ;jump to level second  
      
    mazed:        ;level mazed not used
      mov dl, 3
      add dl, 48 
      mov ah, 2
      int 21h
      jmp third 
    second:
      mov dl, 7
      add dl, 48 
      mov ah, 2
      int 21h 
      jmp mazed
    third: 
      ret  
ret
