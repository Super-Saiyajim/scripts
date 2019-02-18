## this script gives out the Available space in GB

function get-freespace{


[CmdletBinding()]
param(
    [Parameter(Mandatory=$True)]
    [String[]]$Computername
    )


Get-WmiObject -ComputerName $Computername win32_logicaldisk -Filter "DeviceID='c:'" | select @{n='freegb';e={$_.freespace / 1gb -as [int]}}

} 
