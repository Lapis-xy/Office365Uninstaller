
$OfficeUninstallStrings = ((Get-ItemProperty "HKLM:\Software\Wow6432Node\Microsoft\Windows\CurrentVersion\Uninstall\*") `
    + (Get-ItemProperty "HKLM:\Software\Microsoft\Windows\CurrentVersion\Uninstall\*") | 
    Where {$_.DisplayName -like "*Microsoft 365*"} | 
    Select-Object -ExpandProperty UninstallString)

ForEach ($UninstallString in $OfficeUninstallStrings) {
    $UninstallEXE = ($UninstallString -split '"')[1]
    $UninstallArg = ($UninstallString -split '"')[2] + " DisplayLevel=False"
    Write-Host "Going to Run $UninstallEXE with $UninstallArg"
    Start-Process -FilePath $UninstallEXE -ArgumentList $UninstallArg -Wait
}


$OfficeTempPath = "C:\Windows\Temp\OfficeInstall"
if (Test-Path $OfficeTempPath) {
    Write-Host "Cleaning up leftover Office installer files..."
    Remove-Item -Path $OfficeTempPath -Recurse -Force
    Write-Host "Cleanup completed."
}

Write-Host "Uninstall and cleanup completed!"
