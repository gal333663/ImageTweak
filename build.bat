@ECHO OFF
echo Cleaning working directory...
del ImageTweak.xpi >nul 2>nul
del ImageTweak.zip >nul 2>nul
echo Creating ZIP...
"%PROGRAMFILES%\7-Zip\7z" a -x!.git* -x!*.bat ImageTweak.zip * >nul 2>nul
echo Creating XPI...
rename ImageTweak.zip ImageTweak.xpi >nul 2>nul
echo Cleaning up...
echo All done!