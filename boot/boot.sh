set -e

mkdir temp

flag="S"

which dotnet || flag="Fd"

if [ $flag -eq "Fd" ]; then
    curl -o temp/dotnet-install.sh https://dot.net/v1/dotnet-install.sh
    chmod +x ./temp/dotnet-install.sh

    ./temp/dotnet-install.sh --channel LTS
fi

dotnet --version

which dotnet || flag="Fp"

if [ $flag -eq "Fp" ]; then
    dotnet tool install --global PowerShell
fi

pwsh --version

pwsh -c "Set-PSRepository -Name PSGallery -InstallationPolicy Trusted; Install-Module -Name psake"

pwsh -c "Get-Help Invoke-psake"