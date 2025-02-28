call clean.bat
set bin=%~dp0\..\..\tools\bin
%bin%\tasm32 /zi my_exe.asm
%bin%\tasm32 /zi my_lib.asm
%bin%\bcc /c /ms /v my_lib_c.c
%bin%\wlink format dos option NOCASEEXACT file my_exe.OBJ,my_lib.OBJ,my_lib_c.obj
%bin%\dosbox -conf dosbox.conf

pause