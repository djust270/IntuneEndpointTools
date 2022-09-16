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
	PowerShellVersion	   = '3.0'
	
	CompatiblePSEditions   = @('Desktop', 'Core')
	
	# Name of the Windows PowerShell host required by this module
	PowerShellHostName = ''
	
	# Minimum version of the Windows PowerShell host required by this module
	PowerShellHostVersion = ''
	
	# Minimum version of the .NET Framework required by this module
	DotNetFrameworkVersion = '2.0'
	
	# Minimum version of the common language runtime (CLR) required by this module
	CLRVersion = '2.0.50727'
	
	# Processor architecture (None, X86, Amd64, IA64) required by this module
	ProcessorArchitecture = 'None'
	
	# Modules that must be imported into the global environment prior to importing
	# this module
	RequiredModules = @()
	
	# Assemblies that must be loaded prior to importing this module
	RequiredAssemblies = @()
	
	# Script files (.ps1) that are run in the caller's environment prior to
	# importing this module
	ScriptsToProcess = @()
	
	# Type files (.ps1xml) to be loaded when importing this module
	TypesToProcess = @()
	
	# Format files (.ps1xml) to be loaded when importing this module
	FormatsToProcess = @()
	
	# Modules to import as nested modules of the module specified in
	# ModuleToProcess
	NestedModules = @()
	
	# Functions to export from this module
	FunctionsToExport = @(),'Get-IntuneMDMDiagReport','Get-IntuneEventLogs','Invoke-IntuneSync','Invoke-IntuneAppAssignmentReprocess','Disable-IntuneESP'#For performance, list functions explicitly
	
	# Cmdlets to export from this module
	CmdletsToExport = '*' 
	
	# Variables to export from this module
	VariablesToExport = '*'
	
	# Aliases to export from this module
	AliasesToExport = '*' #For performance, list alias explicitly
	
	# DSC class resources to export from this module.
	#DSCResourcesToExport = ''
	
	# List of all modules packaged with this module
	ModuleList = @()
	
	# List of all files packaged with this module
	FileList = @()
	
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








