<#	
	===========================================================================
	 Created with: 	SAPIEN Technologies, Inc., PowerShell Studio 2021 v5.8.195
	 Created on:   	9/15/2022 10:56 AM
	 Created by:   	David Just
	 Organization: 	
	 Filename:     	IntuneEndpointTools.psd1
	 -------------------------------------------------------------------------
	 Module Manifest
	-------------------------------------------------------------------------
	 Module Name: IntuneEndpointTools
	===========================================================================
#>


@{
	
	# Script module or binary module file associated with this manifest
	RootModule = 'IntuneEndpointTools.psm1'
	
	# Version number of this module.
	ModuleVersion = '1.0'
	
	# ID used to uniquely identify this module
	GUID = '078b865d-6313-4a52-b910-86f32bd24f85'
	
	# Author of this module
	Author = 'David Just'
	
	# Company or vendor of this module
	CompanyName = ''
	
	# Copyright statement for this module
	Copyright = '(c) 2022. All rights reserved.'
	
	# Description of the functionality provided by this module
	Description = 'Module description'
	
	# Minimum version of the Windows PowerShell engine required by this module
	PowerShellVersion	   = '5.1'

	# Format files (.ps1xml) to be loaded when importing this module
	FormatsToProcess = @()

	# Functions to export from this module
	FunctionsToExport = @(),'Get-IntuneMDMDiagReport','Get-IntuneEventLogs','Invoke-IntuneSync','Invoke-IntuneAppAssignmentReprocess','Disable-IntuneESP'#For performance, list functions explicitly
		
	# Private data to pass to the module specified in ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
	PrivateData          = @{
        PSData = @{
            Tags         = @('Intune', 'MDM')
            LicenseUri   = 'https://github.com/djust270/IntuneEndpointTools/blob/main/LICENSE'
            ProjectUri   = 'https://github.com/djust270/IntuneEndpointTools'
            # IconUri = ''
            ReleaseNotes = 'https://github.com/djust270/IntuneEndpointTools/blob/main/README.md'
        }
}
}








