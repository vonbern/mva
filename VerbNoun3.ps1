Function Get-Noun {

    [CmdletBinding()]
    Param(
            [Parameter(ValueFromPipeline=$true)]
            [String]$MyString
                )   
            Begin {"Begin $MyString"}
            Process {"Process $MyString"}
            End {"End $MyString"}
                    }