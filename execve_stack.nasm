; Filename: execve_stack.nasm
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
	; push ////bin/bash (12)
	push 0x68736162
	push 0x2f6e6962
	push 0x2f2f2f2f

	mov ebx, esp
	push eax
	mov edx, esp

	push ebx
	mov ecx, esp

	mov al, 11
	int 0x80
