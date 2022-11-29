@echo off
title Menu
cls

:menu1
title --Menu--
cls
ECHO _______________________
ECHO Welcome to my Menu!
ECHO Please Select a Program
ECHO 1. Edge
ECHO 2. Chrome
ECHO 3. Control Panel
ECHO 4. Registry Edit (Admin only)
ECHO 5. Command Prompt
ECHO 6. Calculator
ECHO 7. Microsoft Teams
ECHO 8. Microsoft Settings
ECHO 9. Tools
ECHO 0. Menu Settings
ECHO A. Exit Menu
::Where Changelog use to be.
ECHO _______________________

SET /P program=1-9:
IF "%program%" =="1" start msedge && goto menu1
IF "%program%" =="2" start chrome && goto menu1
IF "%program%" =="3" start control && goto menu1
IF "%program%" =="4" start regedit && goto menu1
IF "%program%" =="5" start cmd && goto menu1
IF "%program%" =="6" start calc && goto menu1
IF "%program%" =="7" start msteams: && goto menu1
IF "%program%" =="8" goto microsoftsettings
IF "%program%" =="9" goto tools
IF "%program%" =="0" goto menu2
IF "%program%" =="A" exit
IF "%program%" =="a" exit
::CL
IF %program% GTR 9 ECHO Not a valid input! && pause && goto menu1
IF %program% GEQ ! ECHO Not a valid input! && pause && goto menu1
IF %program% GEQ & < nul

:microsoftsettings
title --Microsoft Settings--
cls
ECHO _______________________
ECHO --Microsoft Settings--
ECHO Please select what part of the microsoft settings you wish to access.
ECHO 1. Settings Home Page
ECHO 2. Windows Update Settings
ECHO 3. Check for Updates
ECHO 4. View Update advanced options
ECHO 5. View Windows Update History
ECHO 6. View Optional updates
ECHO 7. Schedule restart
ECHO 8. Open Delivery Optimization settings
ECHO 9. Join the Windows Insider Program
ECHO 10. Display
ECHO A. Network Settings
ECHO 0. Back
ECHO _______________________

SET /P MSsettings=1-10:
IF "%MSsettings%" =="1" start ms-settings: && goto microsoftsettings
IF "%MSsettings%" =="2" start ms-settings:windowsupdate && goto microsoftsettings
IF "%MSsettings%" =="3" start ms-settings:windowsupdate-action && goto microsoftsettings
IF "%MSsettings%" =="4" start ms-settings:windowsupdate-options && goto microsoftsettings
IF "%MSsettings%" =="5" start ms-settings:windowsupdate-history && goto microsoftsettings
IF "%MSsettings%" =="6" start ms-settings:windowsupdate-optionalupdates && goto microsoftsettings
IF "%MSsettings%" =="7" start ms-settings:windowsupdate-restartoptions && goto microsoftsettings
IF "%MSsettings%" =="8" start ms-settings:delivery-optimization && goto microsoftsettings
IF "%MSsettings%" =="9" start ms-settings:windowsinsider && goto microsoftsettings
IF "%MSsettings%" =="10" start ms-settings:display && goto microsoftsettings
IF "%MSsettings%" =="A" goto MSNetworkSettings 
IF "%MSsettings%" =="0" goto menu1
IF %MSsettings% GTR 10 ECHO Not a valid input! && pause && goto microsoftsettings
IF %MSsettings% GEQ ! ECHO Not a valid input! && pause && goto microsoftsettings

:MSNetworkSettings
title --Windows Network Settings--
cls
ECHO _______________________
ECHO --Windows Network Settings--
ECHO 1. Network and Internet
ECHO 2. Status
ECHO 3. Celluar and SIM
ECHO 4. Wi-Fi
ECHO 5. Show available networks
ECHO 6. Manage known networks
ECHO 7. Wi-Fi Calling
ECHO 8. Ethernet
ECHO 9. Dial-up
ECHO 10. Direct Access
ECHO 11. VPN
ECHO 12. Airplane Mode
ECHO 13. Mobile hotspot
ECHO 14. NFC
ECHO 15. Data usage
ECHO 16. Proxy
ECHO 0. Back
ECHO _______________________

SET /P networksettings=1-15:
IF "%networksettings%" =="1" start ms-settings:network && goto MSNetworkSettings
IF "%networksettings%" =="2" start ms-settings:network-status && goto MSNetworkSettings
IF "%networksettings%" =="3" start ms-settings:network-cellular && goto MSNetworkSettings
IF "%networksettings%" =="4" start ms-settings:network-wifi && goto MSNetworkSettings
IF "%networksettings%" =="5" start ms-availablenetworks: && goto MSNetworkSettings
IF "%networksettings%" =="6" start ms-settings:network-wifisettings && goto MSNetworkSettings
IF "%networksettings%" =="7" start ms-settings:network-wificalling && goto MSNetworkSettings
IF "%networksettings%" =="8" start ms-settings:network-ethernet && goto MSNetworkSettings
IF "%networksettings%" =="9" start ms-settings:network-dialup && goto MSNetworkSettings
IF "%networksettings%" =="10" start ms-settings:network-directaccess && goto MSNetworkSettings
IF "%networksettings%" =="11" start ms-settings:network-vpn && goto MSNetworkSettings
IF "%networksettings%" =="12" start ms-settings:network-airplanemode && goto MSNetworkSettings
IF "%networksettings%" =="13" start ms-settings:network-mobilehotspot && goto MSNetworkSettings
IF "%networksettings%" =="14" start ms-settings:nfctransactions && goto MSNetworkSettings
IF "%networksettings%" =="15" start ms-settings:datausage && goto MSNetworkSettings
IF "%networksettings%" =="16" start ms-settings:network-proxy && goto MSNetworkSettings
IF "%networksettings%" =="0" goto microsoftsettings
IF %networksettings% GTR 16 ECHO Not a valid input! && pause && goto MSNetworkSettings
IF %networksettings% GEQ ! ECHO Not a valid input! && pause && goto MSNetworkSettings

:tools
title --Tools Menu--
cls
ECHO _______________________
ECHO --Tools--
ECHO 1. See the IP of this workstation
ECHO 2. Display all connections and listening ports
ECHO 3. Test network connectivity
ECHO 4. Shutdown Computer
ECHO 5. Scan files (Admin only)
ECHO 6. Show the version of Windows you are using
ECHO 7. Run an elevated Command Prompt (Admin Only)
ECHO 8. Check and fix errors on the C: Drive (Admin Only)
::Do not forget to add Adv. Tools back
ECHO 0. Back
ECHO _______________________

SET /P tools=1-9:
IF "%tools%" =="1" ipconfig && pause && goto tools
IF "%tools%" =="2" netstat /a && pause && goto tools
IF "%tools%" =="3" ping 8.8.8.8 && pause && goto tools
IF "%tools%" =="4" shutdown /s /t 0 && goto tools
IF "%tools%" =="5" sfc /scannow && pause && goto tools
IF "%tools%" =="6" ver && pause && goto tools
IF "%tools%" =="7" powershell -Command "Start-Process cmd -Verb RunAs" && pause && goto tools
IF "%tools%" =="8" chkdsk C: /F && pause && goto tools
::Number 9
IF "%tools%" =="0" goto menu1
IF %tools% GTR 9 ECHO Not a valid input! && pause && goto tools
IF %tools% GEQ ! ECHO Not a valid input! && pause && goto tools

:menu2
title --Menu Settings--
cls
ECHO _______________________
ECHO --Menu Settings--
ECHO 1. Color settings
ECHO 0. Back
ECHO _______________________

SET /P settingoptions=1:
IF "%settingoptions%" =="1" goto coloroptions
IF "%settingoptions%" =="0" goto menu1
IF %settingoptions% GTR 1 ECHO Not a valid input! && pause && goto menu2
IF %settingoptions% GEQ ! ECHO Not a valid input! && pause && goto menu2

:coloroptions
title --Color Options--
cls
ECHO --Color Options--
ECHO 1. Blue
ECHO 2. Green
ECHO 3. Aqua
ECHO 4. Red
ECHO 5. Purple
ECHO 6. Yellow
ECHO 7. White
ECHO 8. Gray
ECHO 9. Light Blue
ECHO 0. Back

SET /P color=1-9:
IF "%color%" =="1" color 01 && goto :coloroptions
IF "%color%" =="2" color 02 && goto :coloroptions
IF "%color%" =="3" color 03 && goto :coloroptions
IF "%color%" =="4" color 04 && goto :coloroptions
IF "%color%" =="5" color 05 && goto :coloroptions
IF "%color%" =="6" color 06 && goto :coloroptions
IF "%color%" =="7" color 07 && goto :coloroptions
IF "%color%" =="8" color 08 && goto :coloroptions
IF "%color%" =="9" color 09 && goto :coloroptions
IF "%color%" =="0" goto menu2
IF %color% GTR 9 ECHO Not a valid input! && pause && goto menu1
IF %color% GTR ! ECHO Not a valid input! && pause && goto menu1

:advancedtools
title --Advanced Tools--
cls
ECHO _______________________
ECHO --Advanced Tools--
ECHO (Work In Progress)
ECHO 1.
ECHO 2.
ECHO 3.
ECHO 0. Back
ECHO _______________________

SET /P advancetools=1-3:
IF "%advancetools%" =="0" goto tools
