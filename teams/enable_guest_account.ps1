Set-CsTeamsClientConfiguration -AllowGuestUser $True -Identity Global

# Guest settings
Set-CsTeamsGuestCallingConfiguration
Set-CsTeamsGuestMeetingConfiguration
Set-CsTeamsGuestMessagingConfiguration
