# Create APplication Tenant in instance
New-CsOnlineApplicationInstance -UserPrincipalName maik@mail.com -DisplayName ComplianceRecordingBotInstance -ApplicationId appid

# Sync
Sync-CsOnlineApplicationInstance -ObjectId 5069aae5-c451-4983-9e57-9455ced220b7

#Recording policy
New-CsTeamsComplianceRecordingPolicy -Identity TestComplianceRecordingPolicy -Enabled $true -Description "Test policy"
Set-CsTeamsComplianceRecordingPolicy -Identity TestComplianceRecordingPolicy -ComplianceRecordingApplications @(New-CsTeamsComplianceRecordingApplication -Id 5069aae5-c451-4983-9e57-9455ced220b7 -Parent TestComplianceRecordingPolicy)
Grant-CsTeamsComplianceRecordingPolicy -Identity mail@mail.com -PolicyName TestComplianceRecordingPolicy


Get-CsOnlineUser mail@mail.com | select SipAddress, TenantId, TeamsComplianceRecordingPolicy | fl
