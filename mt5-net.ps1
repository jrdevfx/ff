$agentsInstallerUrl = 'https://download.mql5.com/cdn/web/metaquotes.software.corp/mt5/mt5setup.exe'
$agentsInstallerOutFile = 'C:\Temp\mt5setup.exe'

Invoke-WebRequest -Uri $agentsInstallerUrl -OutFile $agentsInstallerOutfile -UseBasicParsing
Start-Process -FilePath $agentsInstallerOutFile /auto -Wait


Invoke-WebRequest -Uri https://download.visualstudio.microsoft.com/download/pr/035efed3-6386-4e1d-bcbc-384a20ebf47e/abfbea2303e0ce9cb15d430314e5858f/windowsdesktop-runtime-6.0.14-win-x64.exe -OutFile C:\Temp\windowsdesktop-runtime-6.0.14-win-x64.exe -UseBasicParsing
Start-Process -FilePath C:\Temp\windowsdesktop-runtime-6.0.14-win-x64.exe /silent -Wait
