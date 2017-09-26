Function Get-Noun {

    [CmdletBinding()]
    Param(
        [parameter()][String]$MyString
                )   
            Begin {"Begin $MyString"}
            Process {"Process $MyString"}
            End {"End $MyString"}
                    }