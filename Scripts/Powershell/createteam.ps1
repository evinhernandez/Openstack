New-NetLbfoTeam -Name "team0" -TeamMembers "Ethernet", "Ethernet 2" -TeamingMode SwitchIndependent -LoadBalancingAlgorithm HyperVPort -Confirm:$false
