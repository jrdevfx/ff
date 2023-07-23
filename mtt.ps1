$agentsInstallerUrl = 'https://download.mql5.com/cdn/web/metaquotes.software.corp/mt5/mt5tester.setup.exe'
$agentsInstallerOutFile = 'C:\Temp\mt5tester.setup.exe'
$agentsInstallerPath = 'C:\Program Files\MetaTrader 5 Strategy Tester\MetaTester64.exe'
$password = 'MetaTester'
$startingPort = 2000
$numberOfAgents = 96

Invoke-WebRequest -Uri $agentsInstallerUrl -OutFile $agentsInstallerOutfile -UseBasicParsing
Start-Process -FilePath $agentsInstallerOutFile /silent -Wait

Start-Sleep -Seconds 15

for ($i = 1; $i -le $numberOfAgents; $i++) {
    $port = $startingPort + $i - 1
    Start-Process -FilePath $agentsInstallerPath -ArgumentList "/install", "/silent", "/password:$password", "/address:0.0.0.0:$port" -Wait
    Start-Process -FilePath $agentsInstallerPath -ArgumentList "/start", "/silent", "/address:0.0.0.0:$port"
    
    #Start-Process -FilePath $agentsInstallerPath -ArgumentList "/uninstall", "/silent", "/address:0.0.0.0:$port"
}
