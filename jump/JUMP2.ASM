.model small
.stack 100h
.data
ms1 db 'less$'
ms2 db 'greater$'

.code
main proc
mov ax,@data
mov ds,ax

mov ah,1
int 21h
mov bl,al

mov ah,1
int 21h

cmp bl,al
jge ll
mov dx,offset ms1
mov ah,9
int 21h

mov ah,4ch
int 21h

ll:
mov dx,offset ms2
mov ah,9
int 21h

mov ah,4ch
int 21h

main endp
end main

