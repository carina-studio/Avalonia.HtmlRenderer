@echo off

IF exist Packages (
	rmdir Packages /s /q
)
mkdir Packages
IF %ERRORLEVEL% neq 0 ( 
   exit
)

dotnet build Source/Avalonia.HtmlRenderer -c Release
IF %ERRORLEVEL% NEQ 0 ( 
   exit
)

dotnet pack Source/Avalonia.HtmlRenderer -c Release -o Packages