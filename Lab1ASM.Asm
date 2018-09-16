.386
.model flat,STDCALL
option casemap :none  ;case sensitive

include test.inc

.code
Begin:
	call main
	
invoke ExitProcess,NULL

toUpper proc _p:DWORD
	mov esi, _p
@@:
	lodsb
	test al, al
	jz @F
	cmp al,'a'
	jb @B
	cmp al, 'z'
	ja @B
	sub byte ptr [esi-1],32
	jmp @B
@@:
	ret

toUpper endp

main proc


	
main endp

end Begin
