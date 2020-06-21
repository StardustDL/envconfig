Task default -depends Install, Configure

Task Install {
    Install-Module posh-git -Scope CurrentUser
    Install-Module oh-my-posh -Scope CurrentUser
}

Task Configure -depends Install {
    $psProfile = "Import-Module oh-my-posh; Set-Theme Agnoster"

    $psProfile | Out-File -Append -FilePath $profile
}