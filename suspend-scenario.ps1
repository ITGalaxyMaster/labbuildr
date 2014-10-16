﻿[CmdletBinding(DefaultParametersetName = "1")]
	param (
	[Parameter(ParameterSetName = "1", Mandatory = $true,Position = 0)][ValidateSet('Exchange','SQL','DPAD','EMCVSA','hyper-V','ScaleIO')]$Scenario

	
	)
begin
	{
	}
process
	{
	get-vmx | where scenario -match $Scenario | sort-object ActivationPreference -Descending | suspend-vmx
	}
end {}