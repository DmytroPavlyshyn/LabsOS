.386
.model flat,STDCALL
option casemap :none  ;case sensitive

include Lab1ASM.inc

.code
Begin:
	call main
	
invoke ExitProcess,NULL


main proc
	
	
	ret

main endp

end Begin
