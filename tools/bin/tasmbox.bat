@echo off
del tasm.dosbox.conf 2>nul
copy %~dp0dosbox.tmpl.conf tasm.dosbox.conf
echo [autoexec] >>tasm.dosbox.conf
echo MOUNT S S:\ >>tasm.dosbox.conf
echo S: >>tasm.dosbox.conf
echo SET PATH=%%PATH%%;s:\tools\bin >>tasm.dosbox.conf
echo cd %CD% >>tasm.dosbox.conf
echo tasmx %1 %2 %3 %4 %5 %6 %7 %8 %9 ^>tasmbox.out >>tasm.dosbox.conf
echo if ERRORLEVEL 0 goto noerror >>tasm.dosbox.conf
echo pause >>tasm.dosbox.conf
echo :noerror >>tasm.dosbox.conf
echo exit >>tasm.dosbox.conf
dosbox -conf tasm.dosbox.conf
del tasm.dosbox.conf 2>nul
type tasmbox.out
del tasmbox.out 2>nul
