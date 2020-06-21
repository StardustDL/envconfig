$ErrorActionPreference = "Stop"

if (-not (Test-Path "temp")) {
    New-Item "temp" -ItemType Directory
}

where.exe dotnet

if (-not $?) {
    Invoke-WebRequest https://dot.net/v1/dotnet-install.ps1 -OutFile temp/dotnet-install.ps1

    ./temp/dotnet-install.ps1 -Channel LTS

    if (-not $?) {
        Write-Error "Unable to install dotnet."
    }
}

dotnet --version

where.exe pwsh

if (-not $?) {
    dotnet tool install --global PowerShell

    if (-not $?) {
        Write-Error "Unable to install pwsh."
    }
}

pwsh --version

pwsh -c "Set-PSRepository -Name PSGallery -InstallationPolicy Trusted; Install-Module -Name psake"

if (-not $?) {
    Write-Error "Unable to install psake."
}

pwsh -c "Get-Help Invoke-psake"