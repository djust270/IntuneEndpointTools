function Export-IntuneDiagnosticPackage
{
	param (
		[string]$OutputFolder = "$env:SystemDrive\IntuneDiagnostics"
	)
	$identity = [System.Security.Principal.WindowsIdentity]::GetCurrent()
	$principal = New-Object System.Security.Principal.WindowsPrincipal($identity)
	if (-Not $principal.IsInRole([System.Security.Principal.WindowsBuiltInRole]::Administrator))
	{
		$command = @"
Start-Process "$env:SystemRoot\system32\MdmDiagnosticsTool.exe" -argumentlist "-area Autopilot;DeviceProvisioning;Tpm -zip $OutputFolder\IntuneDiagnostics.zip" -Wait -NoNewWindow
"@
		$bytes = [System.Text.Encoding]::Unicode.GetBytes($command)
		$encodedCommand = [Convert]::ToBase64String($bytes)
		Start-Process "Powershell.exe" -ArgumentList "-EncodedCommand $encodedCommand" -Verb runas -Wait
	}
	else
	{
		$command = "$env:SystemRoot\system32\MdmDiagnosticsTool.exe"
		$arglist = "-area Autopilot;DeviceProvisioning;Tpm -zip $OutputFolder\IntuneDiagnostics.zip"
		Start-Process $command -ArgumentList $arglist -Wait
	}
	"Diagnostics collect to {0}" -f "$OutputFolder\IntuneDiagnostics.zip"
	explorer $OutputFolder
	
}