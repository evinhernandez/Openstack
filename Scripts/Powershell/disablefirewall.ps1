# turn off firewall
set-service -name "SharedAccess" -ComputerName -Status stopped -startuptype disabled

Set-NetFirewallProfile -Profile Domain,Public,Private -Enabled False
