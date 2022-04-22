@echo off
rem Compiles the Yuri's Revenge Redux client for debugging.

echo Compiling Yuri's Revenge Redux client for debugging.

call Build AresDebug SharpDX "Any CPU"
call Build AresDebug WindowsGL "Any CPU"
call Build AresDebug XNAFramework "Any CPU"

if errorlevel 1 goto error

call CopyCompiled

echo Compiling Yuri's Revenge Redux debug client complete.
pause

goto end

:argfail
echo Syntax: %0% (configuration) (example: %0% DTARelease)
goto error

:error
endlocal
exit /B 1

:end
endlocal
