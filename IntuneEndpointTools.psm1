Get-ChildItem -Path $PSScriptroot\Functions\*.ps1 |
ForEach-Object { . $_.Fullname } # Dot Source Functions