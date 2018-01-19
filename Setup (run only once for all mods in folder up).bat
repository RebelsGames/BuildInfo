:: This script creates a symlink to the SpaceEngineers to account for different installation directories on different systems.

@echo off
set /p path="Please enter the location of your SpaceEngineers game directory (Example: C:\Program Files (x86)\Steam\steamapps\common\SpaceEngineers)"
cd %~dp0
cd .

mklink /J ..\SpaceEngineers "%path%"

if errorlevel 1 goto Error
echo Done! You can now open the SE-RG-System solution without issue.
goto End
:Error
echo An error occured creating the symlink.
:End

timeout 10