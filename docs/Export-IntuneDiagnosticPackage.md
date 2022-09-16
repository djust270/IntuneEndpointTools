---
external help file: IntuneEndpointTools-help.xml
Module Name: IntuneEndpointTools
online version:
schema: 2.0.0
---

# Get-IntuneMDMDiagReport

## SYNOPSIS
Export and open the MDM Diagnostic HTML report file

## SYNTAX

```
Get-IntuneMDMDiagReport [[-OutputFolder] <String>]
```

## DESCRIPTION
Export and open the MDM Diagnostic HTML report file by calling the MDMDiagnosticsTool. Exported report will include device and policy details. 

## EXAMPLES

### Example 1
```powershell
PS C:\> Get-IntuneMDMDiagReport
```
## PARAMETERS

### -OutputFolder
Folder path where diagnostic report should be saved. Default location is C:\IntuneDiagnostics
```yaml
Type: String
Parameter Sets: (All)
Aliases:

Required: False
Position: 0
Default value: None
Accept pipeline input: False
Accept wildcard characters: False
```

## INPUTS

### None

## OUTPUTS

### System.Object
## NOTES

## RELATED LINKS
