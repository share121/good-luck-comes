dart compile exe .\bin\%1.dart -o .\build\%1_temp.exe
.\enigmavbconsole.exe .\pack.evb -input .\build\%1_temp.exe -output .\build\%1.exe
del .\build\%1_temp.exe