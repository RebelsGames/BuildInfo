@echo off

for %%a in (.) do set currentfolder=%%~na

cd "..\SpaceEngineers\Bin64\"

".\SEWorkshopTool.exe" --upload --dry-run --compile --mods "%currentfolder%" --exclude .csproj .sln .user .gitignore .bat

@echo off

echo verify finished

timeout 10