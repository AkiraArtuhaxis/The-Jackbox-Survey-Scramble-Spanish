@ECHO OFF

:: Copiar y pegar "ArchivoMS"
xcopy "ArchivoMS" "Main" /s /y
:: Hacer versión Microsoft Store en JSS-ES-MS.zip
CD "Main"
"%ProgramFiles%\WinRAR\WinRAR.exe" a -afzip -ibck -r -y "../../../../Zips/JSS-ES-MS.zip" "."
:: Copiar y pegar "ArchivoSteam"
CD ..
xcopy "ArchivoSteam" "Main" /s /y
:: Hacer versión Steam en JSS-ES.zip
CD "Main"
"%ProgramFiles%\WinRAR\WinRAR.exe" a -afzip -ibck -r -y "../../../../Zips/JSS-ES.zip" "."