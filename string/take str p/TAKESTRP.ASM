dosseg
.model small
.stack 100h
.data
var1 db 'hello$'
var2 db ?
.code
main proc
mov dx,offset var1
mov ah,9
int 21h

mov dx,10
mov ah,2
int 21h

mov ah,10
mov var2,al
mov dx,offset var2
mov ah,10
int 21h

mov ah,4ch
int 21h

mov ah,4ch
int 21h

main endp
end main
