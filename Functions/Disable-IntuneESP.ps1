function Disable-IntuneESP
{
	$identity = [System.Security.Principal.WindowsIdentity]::GetCurrent()
	$principal = New-Object System.Security.Principal.WindowsPrincipal($identity)
	if (-Not $principal.IsInRole([System.Security.Principal.WindowsBuiltInRole]::Administrator))
	{
		Write-Error -Message "You must run this cmdlet with Administrator Privelages"
		return
	}
	$EnrollmentKey = Get-ChildItem HKLM:\Software\Microsoft\Enrollments -recurse | Where-Object { $_.name -like "*firstsync*" }
	$EnrollmentKey | Set-Itemproperty -name SkipDeviceStatusPage -value 1 -Force
	$EnrollmentKey | Set-Itemproperty -name SkipUserStatusPage -value 1 -Force
	Get-Process "winlogon" | stop-process -Force
}
