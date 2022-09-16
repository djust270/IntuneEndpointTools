function Get-IntuneMDMDiagReport
{
	param (
		[string]$OutputFolder = "$env:SystemDrive\IntuneDiagnostics"
	)
	$identity = [System.Security.Principal.WindowsIdentity]::GetCurrent()
	$principal = New-Object System.Security.Principal.WindowsPrincipal($identity)
	if (-Not $principal.IsInRole([System.Security.Principal.WindowsBuiltInRole]::Administrator))
	{
		$command = @"
Start-Process "$env:SystemRoot\system32\MdmDiagnosticsTool.exe" -argumentlist "-out $OutputFolder" -Wait -NoNewWindow
"@
		$bytes = [System.Text.Encoding]::Unicode.GetBytes($command)
		$encodedCommand = [Convert]::ToBase64String($bytes)
		Start-Process "Powershell.exe" -ArgumentList "-EncodedCommand $encodedCommand" -Verb runas -Wait		
	}
	else
	{
		$command = "$env:SystemRoot\system32\MdmDiagnosticsTool.exe"
		$arglist = "-out $OutputFolder"
		Start-Process $command -ArgumentList $arglist -Wait
	}
	"Diagnostics collect to {0}" -f $OutputFolder
	& "$OutputFolder\MDMDiagReport.html"
	
}