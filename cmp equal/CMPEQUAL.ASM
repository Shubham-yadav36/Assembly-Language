dosseg 
.model small
.stack 100h
.data
ms1 db 'num is equal'
ms2 db 'num is not equal'
.code
main proc
mov ax,@data
mov ds,ax

mov ah,1
int 21h
mov dl,'3'
cmp al,dl
je eql
mov dx,offset ms2
mov ah,9
int 21h

mov ah,4ch
int 21h

eql:
mov dx,offset ms1
mov ah,9
int 21h

mov ah,4ch
int 21h 

main endp
end main

