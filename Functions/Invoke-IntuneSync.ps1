function Invoke-IntuneSync
{
$ScriptBlock = @'
$ErrorActionPreference = 'Inquire'
"Starting OMADMClient task"
Get-ScheduledTask "Schedule to run OMADMClient by client" | Start-ScheduledTask
"Starting Enrollment Client Schedule"
Get-ScheduledTask "Schedule #3 created by enrollment client" | Start-ScheduledTask
"Restarting Intune Management Extension"
Get-Service "IntuneManagementExtension" | Restart-Service
'@
$bytes = [System.Text.Encoding]::Unicode.GetBytes($scriptblock)
$encodedCommand = [Convert]::ToBase64String($bytes)
"Invoking Sync with Intune..."
Start-Process "Powershell.exe" -ArgumentList "-EncodedCommand $encodedCommand" -Verb runas -PassThru	
}

