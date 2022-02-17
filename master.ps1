Install-ADDSForest -DomainName "cdwtest.bro" -CreateDNSDelegation -DomainMode Win2012R2 -ForestMode Win2012R2 -DatabasePath "C:\Windows\NTDS" -SysvolPath "C:\Windows\SYSVOL" -LogPath "C:\Windows\NTDS"

Install-WindowsFeature -Name AD-Domain-Services,GPMC -computerName ContosoDC1 -IncludeManagementTools -Restart
