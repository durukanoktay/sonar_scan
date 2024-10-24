IF EXIST bw_output (rmdir /s /q bw_output)

SET BUILD_WRAPPER_EXE_DIRECTORY=C:\build-wrapper-win-x86
SET BUILD_WRAPPER_OUTPUT_DIRECTORY=%WORKSPACE%\bw_output
SET MINGW_DIR=C:\MinGW\bin

:: Run the build-wrapper and make commands
echo "Running build-wrapper and make commands"
%BUILD_WRAPPER_EXE_DIRECTORY%\build-wrapper-win-x86-64.exe --out-dir %BUILD_WRAPPER_OUTPUT_DIRECTORY% %MINGW_DIR%\mingw32-make all 