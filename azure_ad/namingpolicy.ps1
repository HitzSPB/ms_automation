# See current naming policy
$Setting = Get-AzureADDirectorySetting -Id (Get-AzureADDirectorySetting | where -Property DisplayName -Value "Group.Unified" -EQ).id
$Setting.Values

# Set new naming policies
$Setting = Get-AzureADDirectorySetting -Id (Get-AzureADDirectorySetting | where -Property DisplayName -Value "Group.Unified" -EQ).id

$Setting["PrefixSuffixNamingRequirement"] ="policy_[GroupName]"

#Block words
$Setting["CustomBlockedWordsList"]="Payroll,CEO"

#Update the settings
Set-AzureADDirectorySetting -Id (Get-AzureADDirectorySetting | where -Property DisplayName -Value "Group.Unified" -EQ).id -DirectorySetting $Setting
