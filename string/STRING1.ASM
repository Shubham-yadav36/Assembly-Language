dosseg
.model small
.stack 100h
.data
str1 db 50 dup('$')
.code
main proc

mov ax,@data
mov ds,ax

mov si,offset str1
li:
mov ah,1
int 21h
cmp al,13
je pend
mov [si],al
inc si
jmp li

pend:
mov dx,offset str1
mov ah,9
int 21h

mov ah,4ch
int 21h

main endp
end main
