$agentsInstallerUrl = 'https://download.mql5.com/cdn/web/metaquotes.software.corp/mt5/mt5setup.exe'
$agentsInstallerOutFile = 'C:\Temp\mt5setup.exe'

Invoke-WebRequest -Uri $agentsInstallerUrl -OutFile $agentsInstallerOutfile -UseBasicParsing
Start-Process -FilePath $agentsInstallerOutFile /auto -Wait

Start-Process -FilePath C:\Temp\windowsdesktop-runtime-6.0.14-win-x64.exe /silent -Wait
Start-Process -FilePath C:\Temp\windowsdesktop-runtime-6.0.14-win-x64.exe -Wait
