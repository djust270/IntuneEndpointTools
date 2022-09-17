function Get-IntuneMDMDiagReport
{
	param (
		[string]$OutputFolder = "$env:SystemDrive\IntuneDiagnostics"
	)
	$command = "$env:SystemRoot\system32\MdmDiagnosticsTool.exe"
	$arglist = "-out $OutputFolder"
	Start-Process $command -ArgumentList $arglist -Wait
	"Diagnostics collect to {0}" -f $OutputFolder
	& "$OutputFolder\MDMDiagReport.html"	
}