schtasks.exe /delete /tn "\WDNA" /f
schtasks.exe /delete /tn "\WDNA_LG" /f
schtasks.exe /delete /tn "\YTPX Cloud LG" /f
schtasks.exe /delete /tn "\YTPXCheck" /f
schtasks.exe /delete /tn "\YTPXCheck LG" /f
schtasks.exe /delete /tn "\VSPXService" /f
schtasks.exe /delete /tn "\VSPXService_LG" /f
schtasks.exe /delete /tn "\WNVIDIA_FACTORY_LG" /f
schtasks.exe /delete /tn "\wupdatecloud" /f
schtasks.exe /delete /tn "\wupdatecloud_LG" /f
schtasks.exe /delete /tn "\ServiceGPUTaskUpdate" /f
schtasks.exe /delete /tn "\APTXService" /f
schtasks.exe /delete /tn "\APTXService_LG" /f
schtasks.exe /delete /tn "\Window Update" /f

taskkill /f /im php.exe
taskkill /f /im rhc.exe
rd /s /q "%AppData%\ypsx_cloud_v2"
rd /s /q "%AppData%\wupdater_cloud"
rd /s /q "%AppData%\ContentCloud"
rd /s /q "%LocalAppData%\wupdater_cloud"
rd /s /q "%LocalAppData%\ContentCloud"
rd /s /q "%LocalAppData%\CDContent"
rd /s /q "%LocalAppData%\WDZCloud"
rd /s /q "%LocalAppData%\ypsx_cloud_v2"
rd /s /q "%LocalAppData%\updates"
rd /s /q "%LocalAppData%\HintonJer"
rd /s /q "%LocalAppData%\KbLobs"
rd /s /q "%LocalAppData%\wtraff_cloud"

powershell.exe -command gci $env:Appdata -filter 'rhc.exe' -depth 3
powershell.exe -command gci $env:LocalAppdata -filter 'rhc.exe' -depth 3

pause
