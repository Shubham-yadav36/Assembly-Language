dosseg
.model small
.stack 100h
.data
str db 100 dup('$')
.code
main proc
mov ax,@data
mov ds,ax

mov si,offset str
li:
mov ah,1
int 21h
cmp al,13
je pend 
mov [si],al
inc si
jmp li

pend:
mov dx,offset str
mov ah,9
int 21h

mov ah,4ch
int 21h

main endp
end main


mov [si],al

