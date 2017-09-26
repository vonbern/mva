Function DiskInfo {
[CmdletBinding()]
param   (
        [string] $drive= 'c:',
        [string] $computer= 'localhost'
        )
                Get-WmiObject -ClassName win32_logicaldisk -Filter "DeviceID='$drive'" -ComputerName "$computer"
                }