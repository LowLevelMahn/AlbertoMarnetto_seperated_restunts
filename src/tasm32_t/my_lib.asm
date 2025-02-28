.model small

.data
  
msg db "Hello World from lib!",13,10,"$"

.code

public return_msg

return_msg proc
  mov ax,offset msg
  ret
return_msg endp

ends

end