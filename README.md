# IntuneEndpointTools
A PowerShell module containing a set of tools for managing and diagnosing Intune MDM on Windows endpoints designed with Intune support staff in mind. 

[PowerShell Gallery Page](https://www.powershellgallery.com/packages/IntuneEndpointTools/1.1)

To install:
```powershell
Install-Module IntuneEndpointTools
```
## [Invoke-IntuneSync](docs/Invoke-IntuneSync.md)
This function will force an immediate check-in to Intune by running the associated scheduled tasks for the OMADMClient and the DeviceEnroller. This will also restart the Intune Management Extension (IME)/
**NOTE:** This command requires administrative privilege. 

## [Get-IntuneEventLogs](docs/Get-IntuneEventLogs.md)
This function will display all event logs listed under the log file DeviceManagement-Enterprise-Diagnostics. Use the paramater ```-ErrorOnline``` to display error, warning, and critical level events. 

## [Get-IntuneMDMDiagReport](docs/Get-IntuneMDMDiagReport.md)
This command will invoke the MDMDiagnosticsTool and open the MDM Diagnostics HTML report. This report details device info, MDM Policy CSPSettings, certificates, configuration sources, and resource information. Default location is C:\IntuneDiagnostics. Use ```-OutputFolder``` to specify another location. 

## [Invoke-IntuneAppAssignmentReprocess](docs/Invoke-IntuneAppAssignmentReprocess.md)
This command will force the reprocessing of all assigned Win32 applications. Useful if you want to force an application to re-attempt installation after failing 3 times. 

## [Export-IntuneDiagnosticsPackage](docs/Export-IntuneDiagnosticPackage.md)
This is equivalent to the "Collect Diagnostics" action in Endpoint Manager and will save the diagnostic package locally to a zipfolder. Default location is C:\IntuneDiagnostics. Use ```-OutputFolder``` to specify another location. 
**NOTE:** This command requires administrative privilege. 

## [Disable-IntuneESP.ps1](docs/Disable-IntuneESP.md)
This command will disable the Enrollment Status Page (ESP). Useful if a device gets stuck in the ESP phase and cant proceed to the desktop due to errors or timeout. 
See help file for details on using this during OOBE.