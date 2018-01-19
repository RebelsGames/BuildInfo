@echo off

for %%a in (.) do set currentfolder=%%~na

cd "..\SpaceEngineers\"

if exist "bin" rd /q /s "bin"

if exist "obj" rd /q /s "obj"

cd "..\SpaceEngineers\"

".\SEWorkshopTool.exe" --upload --compile --mods "%currentfolder%" --exclude .csproj .sln .user .gitignore .bat
@echo off

echo upload finished

timeout 10