;program to print a sigle char
dosseg
.model small
.stack 100h
.data
.code

main proc
mov dl,'a'
mov ah,2
INT 21h
miv ah,4ch
INT 21h
main endp
end main
