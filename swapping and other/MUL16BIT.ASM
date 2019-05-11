.model small
.stack 100h
.code
a dw 1234h
b dw 3456h
c dd ?
.data
main proc
mov ax,@data
mov ds,ax

mov ax,a
mov bx,b
mul bx
mov word ptr c,ax
mov word ptr c+2,dx
int 21h

mov ah,4ch
int 21h
main endp
end main
