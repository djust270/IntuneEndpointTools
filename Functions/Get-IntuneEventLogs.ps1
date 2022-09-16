function Get-IntuneEventLogs
{
	param(	
		[int]$Id,
		[Switch]$ErrorOnly
		)
	
	begin
	{
		$LogName = 'Microsoft-Windows-DeviceManagement-Enterprise-Diagnostics-Provider/Admin'
		if ($ErrorOnly) { $LogLevel = 1, 2, 3 }
		else { $LogLevel = 1, 2, 3, 4 }
		$Hash = @{
			LogName = $LogName
			Level = $LogLevel
		}
		if ($Id) { $Hash.Add('ID',$Id) }
	}


process
	{
		$Events = Get-WinEvent -FilterHashtable $Hash
}
end
{
	return $Events
}	
}


