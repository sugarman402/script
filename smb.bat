::Enable SMBv1 and SMBv2/v3 in Windows 10
::Command-line
sc.exe config lanmanworkstation depend= bowser/mrxsmb10/mrxsmb20/nsi
sc.exe config mrxsmb10 start= auto
sc.exe config mrxsmb20 start= auto
::registry
reg add HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters /v SMB1 /t REG_DWORD /d 1 /f
reg add HKLM\SYSTEM\CurrentControlSet\Services\LanmanServer\Parameters /v SMB2 /t REG_DWORD /d 1 /f
::PowerShell
powershell set-smbserverconfiguration -enablesmb1protocol $true -force
powershell set-smbserverconfiguration -enablesmb2protocol $true -force