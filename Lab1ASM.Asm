.386
.model flat,STDCALL
option casemap :none  ;case sensitive

include Lab1ASM.Inc

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


invoke GetComputerName,addr GCN, addr bufsize

invoke GetCurrentDirectory, 200, addr GCD

invoke GetDriveType,NULL
mov  GDT, eax
;
mov bufsize, 200
invoke GetSystemDirectory,addr GSD, addr bufsize 

invoke GetTempPath,200,addr GTP

mov bufsize, 200
invoke GetUserName,addr GUN, addr bufsize

mov bufsize, 200
invoke GetWindowsDirectory,addr GWD, addr bufsize

invoke wsprintf,addr Res, addr format, addr GCN, addr GCD, GDT, addr GSD, addr GTP, addr GUN, addr GWD
invoke toUpper,addr Res
invoke MessageBox,0,addr Res,0,MB_OK
	
main endp

end Begin
