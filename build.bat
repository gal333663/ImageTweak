@ECHO OFF
echo Cleaning working directory...
del ImageTweak.xpi >nul 2>nul
echo Creating XPI...
"%PROGRAMFILES%\7-Zip\7z" a -xr!bitcons -xr!newicon -x!skin\favicon.ico -x!.git* -x!build.bat -x!desktop.ini -mx9 -tzip ImageTweak.xpi * >nul 2>nul
echo All done!