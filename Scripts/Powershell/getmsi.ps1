$src = "https://www.cloudbase.it/downloads/HyperVNovaCompute_Havana_2013_2_2.msi"
$dest = "$env:temp\HyperVNovaCompute_Havana.msi"
Invoke-WebRequest -uri $src -OutFile $dest
Unblock-File $dest
Start-Process $dest
