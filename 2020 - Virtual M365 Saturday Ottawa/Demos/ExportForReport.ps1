# Generated with Microsoft365DSC version 1.0.5.127
# For additional information on how to use Microsoft365DSC, please visit https://aka.ms/M365DSC
param (
    [parameter()]
    [System.Management.Automation.PSCredential]
    $GlobalAdminAccount
)

Configuration M365TenantConfig
{
    param (
        [parameter()]
        [System.Management.Automation.PSCredential]
        $GlobalAdminAccount
    )

    if ($null -eq $GlobalAdminAccount)
    {
        <# Credentials #>
        $Credsglobaladmin = Get-Credential -Message "Global Admin credentials"
    }
    else
    {
        $Credsglobaladmin = $GlobalAdminAccount
    }

    $OrganizationName = $Credsglobaladmin.UserName.Split('@')[1]
    Import-DscResource -ModuleName Microsoft365DSC

    Node localhost
    {
        EXOAcceptedDomain aa1d0235-e1aa-4c52-a496-f96c81f7d2f4
        {
            DomainType           = "Authoritative";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Identity             = "$OrganizationName";
            MatchSubDomains      = $False;
            OutboundOnly         = $False;
        }
        EXOAntiPhishPolicy 620fa23a-51a2-44d1-ac53-ad0663e1fe7e
        {
            AdminDisplayName                    = "";
            AuthenticationFailAction            = "MoveToJmf";
            EnableAntispoofEnforcement          = $True;
            Enabled                             = $True;
            EnableMailboxIntelligence           = $True;
            EnableOrganizationDomainsProtection = $False;
            EnableSimilarDomainsSafetyTips      = $False;
            EnableSimilarUsersSafetyTips        = $False;
            EnableTargetedDomainsProtection     = $False;
            EnableTargetedUserProtection        = $False;
            EnableUnusualCharactersSafetyTips   = $False;
            Ensure                              = "Present";
            ExcludedDomains                     = @();
            ExcludedSenders                     = @();
            GlobalAdminAccount                  = $Credsglobaladmin;
            Identity                            = "Office365 AntiPhish Default";
            PhishThresholdLevel                 = 1;
            TargetedDomainActionRecipients      = @();
            TargetedDomainProtectionAction      = "NoAction";
            TargetedDomainsToProtect            = @();
            TargetedUserActionRecipients        = @();
            TargetedUserProtectionAction        = "NoAction";
            TargetedUsersToProtect              = @();
        }
        ODSettings 74e83552-9cbd-4f99-8819-1d12506724b3
        {
            BlockMacSync                              = $False;
            DisableReportProblemDialog                = $False;
            DomainGuids                               = @();
            Ensure                                    = "Present";
            ExcludedFileExtensions                    = @();
            GlobalAdminAccount                        = $Credsglobaladmin;
            IsSingleInstance                          = "Yes";
            NotificationsInOneDriveForBusinessEnabled = $True;
            NotifyOwnersWhenInvitationsAccepted       = $True;
            ODBAccessRequests                         = "Unspecified";
            ODBMembersCanShare                        = "Unspecified";
            OneDriveForGuestsEnabled                  = $False;
            OneDriveStorageQuota                      = 1048576;
            OrphanedPersonalSitesRetentionPeriod      = 30;
        }
        SCFilePlanPropertyDepartment e0a9641e-0955-475a-ac87-6e5ccacc30b5
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Services";
        }
        SPOAccessControlSettings eb67b81a-5702-45cf-b0f2-e117cc64746c
        {
            CommentsOnSitePagesDisabled  = $False;
            DisallowInfectedFileDownload = $False;
            DisplayStartASiteOption      = $True;
            EmailAttestationReAuthDays   = 30;
            EmailAttestationRequired     = $False;
            ExternalServicesEnabled      = $True;
            GlobalAdminAccount           = $Credsglobaladmin;
            IPAddressAllowList           = "";
            IPAddressEnforcement         = $False;
            IPAddressWACTokenLifetime    = 15;
            IsSingleInstance             = "Yes";
            SocialBarOnSitePagesDisabled = $False;
        }
        SPOSharingSettings c9085484-8dab-4a5e-bc0d-c232926fa382
        {
            BccExternalSharingInvitations              = $False;
            DefaultLinkPermission                      = "None";
            DefaultSharingLinkType                     = "Internal";
            EnableGuestSignInAcceleration              = $False;
            FileAnonymousLinkType                      = "Edit";
            FolderAnonymousLinkType                    = "Edit";
            GlobalAdminAccount                         = $Credsglobaladmin;
            IsSingleInstance                           = "Yes";
            NotifyOwnersWhenItemsReshared              = $True;
            PreventExternalUsersFromResharing          = $False;
            ProvisionSharedWithEveryoneFolder          = $False;
            RequireAcceptingAccountMatchInvitedAccount = $True;
            SharingCapability                          = "ExistingExternalUserSharingOnly";
            SharingDomainRestrictionMode               = "None";
            ShowAllUsersClaim                          = $False;
            ShowEveryoneClaim                          = $False;
            ShowEveryoneExceptExternalUsersClaim       = $True;
            ShowPeoplePickerSuggestionsForGuestUsers   = $False;
        }
        TeamsCallingPolicy ca95ca39-8d99-4711-90f6-502bd67fef87
        {
            AllowCallForwardingToPhone = $False;
            AllowCallForwardingToUser  = $True;
            AllowCallGroups            = $True;
            AllowDelegation            = $True;
            AllowPrivateCalling        = $True;
            AllowVoicemail             = "UserOverride";
            BusyOnBusyEnabledType      = "Disabled";
            Ensure                     = "Present";
            GlobalAdminAccount         = $Credsglobaladmin;
            Identity                   = "Tag:AllowCallingPreventForwardingtoPhone";
            PreventTollBypass          = $False;
        }
        TeamsChannelsPolicy 9cb53439-89da-428f-9772-787c7db6689a
        {
            AllowOrgWideTeamCreation    = $True;
            AllowPrivateChannelCreation = $True;
            AllowPrivateTeamDiscovery   = $True;
            Ensure                      = "Present";
            GlobalAdminAccount          = $Credsglobaladmin;
            Identity                    = "Global";
        }
        TeamsClientConfiguration 34766fd7-1d71-4847-bc99-b7be7f5be58f
        {
            AllowBox                         = $True;
            AllowDropBox                     = $True;
            AllowEmailIntoChannel            = $True;
            AllowGoogleDrive                 = $True;
            AllowGuestUser                   = $False;
            AllowOrganizationTab             = $True;
            AllowResourceAccountSendMessage  = $True;
            AllowScopedPeopleSearchandAccess = $False;
            AllowShareFile                   = $True;
            AllowSkypeBusinessInterop        = $True;
            ContentPin                       = "RequiredOutsideScheduleMeeting";
            GlobalAdminAccount               = $Credsglobaladmin;
            Identity                         = "Global";
            ResourceAccountContentAccess     = "NoAccess";
        } 
    }
}
M365TenantConfig -ConfigurationData .\ConfigurationData.psd1 -GlobalAdminAccount $GlobalAdminAccount
