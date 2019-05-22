Write-Output "Install chocolatey..."

Set-ExecutionPolicy Bypass -Scope Process -Force; Invoke-Expression ((New-Object System.Net.WebClient).DownloadString('https://chocolatey.org/install.ps1'))

Write-Output "Install Git"

choco install git -y

Write-Output "Install WinRAR"

choco install winrar -y

Write-Output "Install VLC"

choco install vlc -y

Write-Output "Install VSCode"

choco install vscode -y

code --version