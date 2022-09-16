---
external help file: IntuneEndpointTools-help.xml
Module Name: IntuneEndpointTools
online version:
schema: 2.0.0
---

# Disable-IntuneESP

## SYNOPSIS
Disables the enrollment status page

## SYNTAX

```
Disable-IntuneESP
```

## DESCRIPTION
Disables the enrollment status page by setting the Enrollment registry key values to Skip ESP. 
Kills the WinLogon process to all the user to proceed with login. 

## EXAMPLES

### Example 1
```powershell
SHIFT+F10 from OOBE to open cmd
PowerShell.exe
Install-Module IntuneEndpointTools
PS C:\> Disable-IntuneESP
```

From the OOBE, open a cmd prompt, launch PowerShell, install the IntuneEndpointTools module, then run Disable-IntuneESP

## PARAMETERS

## INPUTS

### None

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
