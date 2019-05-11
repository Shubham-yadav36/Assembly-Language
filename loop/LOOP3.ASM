dosseg
.model small
.stack 100h
.data
.code
main proc
mov cx,26
mov dx,91

loop1:
mov ah,2
inc dx

loop loop1
mov ah,4ch
int 21h

main endp
end main
