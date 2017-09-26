Function Get-DiskInfo   {
[CmdletBinding()]
param   (
        [Parameter(Mandatory=$true)]
        [string] $drive= 'c:',
        [string] $computer= 'localhost'
        )
Get-WmiObject -ClassName win32_logicaldisk -Filter "DeviceID='$drive'" -ComputerName "$computer" | 
Select-Object PSComutername, DeviceID @{n='Size(GB)';e={$_.Size / 1gb -as [int]}} @{n='Free(GB)';e={$_.Freespace / 1gb -as [int]}}
}