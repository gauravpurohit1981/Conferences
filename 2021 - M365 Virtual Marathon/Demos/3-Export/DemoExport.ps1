# Generated with Microsoft365DSC version 1.21.421.2
# For additional information on how to use Microsoft365DSC, please visit https://aka.ms/M365DSC
param (
    [parameter()]
    [System.Management.Automation.PSCredential]
    $GlobalAdminAccount
)

Configuration DemoExport
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
    Import-DscResource -ModuleName 'Microsoft365DSC' -ModuleVersion '1.21.421.2'

    Node localhost
    {
        AADGroupsNamingPolicy 33ac47ef-7b5f-4938-b079-7639b281389d
        {
            CustomBlockedWordsList        = @("CEO","President");
            Ensure                        = "Present";
            GlobalAdminAccount            = $Credsglobaladmin;
            IsSingleInstance              = "Yes";
            PrefixSuffixNamingRequirement = "[Title]Test[Company][GroupName][Office]Redmond";
        }
        SPOSharingSettings 09601dca-f188-4193-ae06-0bde29413fb0
        {
            BccExternalSharingInvitations              = $True;
            DefaultLinkPermission                      = "View";
            DefaultSharingLinkType                     = "AnonymousAccess";
            EnableGuestSignInAcceleration              = $False;
            FileAnonymousLinkType                      = "Edit";
            FolderAnonymousLinkType                    = "Edit";
            GlobalAdminAccount                         = $Credsglobaladmin;
            IsSingleInstance                           = "Yes";
            NotifyOwnersWhenItemsReshared              = $True;
            PreventExternalUsersFromResharing          = $True;
            ProvisionSharedWithEveryoneFolder          = $False;
            RequireAcceptingAccountMatchInvitedAccount = $True;
            SharingCapability                          = "ExternalUserAndGuestSharing";
            SharingDomainRestrictionMode               = "None";
            ShowAllUsersClaim                          = $False;
            ShowEveryoneClaim                          = $False;
            ShowEveryoneExceptExternalUsersClaim       = $True;
            ShowPeoplePickerSuggestionsForGuestUsers   = $False;
        }
    }
}
DemoExport -ConfigurationData .\ConfigurationData.psd1 -GlobalAdminAccount $GlobalAdminAccount
