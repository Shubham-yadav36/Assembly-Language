dosseg;a single character
.model small
.stack 100h
.data
.code
main prog
mov dl,'a'
mov ah,2
int 21h
mov ah,4ch
int 21h
main endp
end main

