Write-Output "Install oh-my-posh"

Install-Module posh-git -Scope CurrentUser

Install-Module oh-my-posh -Scope CurrentUser

Write-Output "Configure profile"

$psProfile = @"
Import-Module oh-my-posh
Set-Theme Agnoster
"@

$psProfile | Out-File -Append -FilePath $profile