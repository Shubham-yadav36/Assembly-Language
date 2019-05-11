;program to cmp two number
dosseg
.model small
.stack 100h
.data
mg1 db 'number is equal$'
mg2 db 'number is not equal$'
.code
main proc
mov ax,@data
mov ds,ax

mov ah,1
int 21h

mov dl,'4'
cmp al,dl
je l1
mov dx,offset mg2
mov ah,9
int 21h

mov ah,4ch
int 21h

l1:
mov dx,offset mg1
int ah,9
int 21h

int al,4ch
int 21h



main endp
end main

