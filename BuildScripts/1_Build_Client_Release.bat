@echo off
rem Compiles the Yuri's Revenge Redux client for release.

echo Compiling Yuri's Revenge Redux client for release.

call Build AresRelease SharpDX "Any CPU"
call Build AresRelease WindowsGL "Any CPU"
call Build AresRelease XNAFramework "Any CPU"

if errorlevel 1 goto error

call CopyCompiled

echo Compiling Yuri's Revenge Redux release client complete.
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
