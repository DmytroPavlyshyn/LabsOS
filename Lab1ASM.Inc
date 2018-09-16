include WINDOWS.inc

include user32.inc
include kernel32.inc

includelib user32.lib
includelib kernel32.lib

include advapi32.inc
includelib advapi32.lib

.data
	GCN db 200 Dup(0)
	bufsize dd 200
	GCD db 200 Dup(0)
	GDT dd 0
	
	GSD db 200 Dup(0)
	
	GTP db 200 Dup(0)
	
	GUN db 200 Dup(0)
	
	GWD db 200 Dup(0)
	
	Res db 1000 Dup(0)
	format 	db "ComputerName:%s",13,10
		  	db "CurrentDirectory:%s",13,10
		  	db "DriveType: %d",13,10
		  	db "SystemDirectory: %s", 13,10
		  	db "TempPath: %s", 13,10
		  	db "UserName: %s", 13,10
		  	db "WindowsDirectory:%s",0
	format2 	db "ComputerName:%d",0