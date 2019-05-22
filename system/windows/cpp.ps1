Write-Output "Install Mingw"

choco install mingw -y

Write-Output "Configure profile"

"Set-Alias -Name make -Value mingw32-make" | Out-File -Append -FilePath $profile

gcc --version
g++ --version
gdb --version
make --version