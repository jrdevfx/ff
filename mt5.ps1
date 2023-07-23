$agentsInstallerUrl = 'https://download.mql5.com/cdn/web/metaquotes.software.corp/mt5/mt5setup.exe'
$agentsInstallerOutFile = 'C:\Temp\mt5setup.exe'

Invoke-WebRequest -Uri $agentsInstallerUrl -OutFile $agentsInstallerOutfile -UseBasicParsing
Start-Process -FilePath $agentsInstallerOutFile /auto -Wait
