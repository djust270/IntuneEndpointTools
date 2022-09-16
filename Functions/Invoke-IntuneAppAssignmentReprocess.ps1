function Invoke-IntuneAppAssignmentReprocess
{
	[CmdletBinding()]
	param ()
	BEGIN
	{
		#Check if running with administrative privelage 
		$identity = [System.Security.Principal.WindowsIdentity]::GetCurrent()
		$principal = New-Object System.Security.Principal.WindowsPrincipal($identity)
		if (-Not $principal.IsInRole([System.Security.Principal.WindowsBuiltInRole]::Administrator))
		{
			Write-Error -Message "You must run this cmdlet with Administrator Privelages"
			return
		}
		$ApplicationRegistryLocation = @(
			'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\IntuneManagementExtension\Win32Apps'
			'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\IntuneManagementExtension\Win32AppSettings'
		)		
	}
	PROCESS
	{
		try
		{
			Stop-Service -Name "IntuneManagementExtension" -Force -PassThru
		}
		Catch
		{
			$_
			"Error stopping the Intune Management Extension Service"
			break
		}
		try
		{
			$ApplicationRegistryLocation | ForEach-Object { Get-ChildItem registry::$_  | Remove-Item -Recurse -Force -Confirm:$false -Verbose -ErrorAction 'Stop' }
		}
		catch
		{
			"Error removing registry key"
			$_
			break
		}
		try
		{
			Start-Service -Name "IntuneManagementExtension" -ErrorAction 'Stop' -PassThru
		}
		catch
		{
			"Unable to start the IntuneManagmentExtensionService"
			$_
			break
		}
	}
	END
	{
		"Application Reprocessing Done!"
	}
}