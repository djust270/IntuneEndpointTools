---
external help file: IntuneEndpointTools-help.xml
Module Name: IntuneEndpointTools
online version:
schema: 2.0.0
---

# Invoke-IntuneAppAssignmentReprocess

## SYNOPSIS
Force the Intune Management Extension to reprocess all application policy assigments. 

## SYNTAX

```
Invoke-IntuneSync
```

## DESCRIPTION
This command will stop the Intune Management Extension service, remove all Win32App and Win32AppSettings registry keys, and restart the Intune Management Extension Service. All assigned application policies will then be processed again by the IME. 

## EXAMPLES

### Example 1
```powershell
PS C:\> Invoke-IntuneAppAssignmentReprocess
```
## PARAMETERS

## INPUTS

### None

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
