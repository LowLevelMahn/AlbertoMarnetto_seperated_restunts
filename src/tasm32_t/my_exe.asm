.model small
.stack

.data
.code

extrn return_msg:proc
extrn _c_msg:proc

start:
    mov ax, @data
    mov ds, ax  

    call return_msg
    mov dx, ax
    mov ah, 09h 
    int 21h            

    call _c_msg
    mov dx, ax
    mov ah, 09h 
    int 21h            

    mov ax, 4C00h
    int 21h

end start
