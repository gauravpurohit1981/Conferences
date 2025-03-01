# Generated with Microsoft365DSC version 1.21.421.2
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
    Import-DscResource -ModuleName 'Microsoft365DSC' -ModuleVersion '1.21.421.2'

    Node localhost
    {
        AADApplication 0ff70120-01aa-4477-b66a-19400dc2064a
        {
            AppId                      = "1e8f0058-a680-4a29-ab6d-65e1377898ca";
            AvailableToOtherTenants    = $False;
            DisplayName                = "Nikdsdf";
            Ensure                     = "Present";
            GlobalAdminAccount         = $Credsglobaladmin;
            IdentifierUris             = @();
            KnownClientApplications    = @();
            Oauth2AllowImplicitFlow    = $False;
            Oauth2AllowUrlPathMatching = $False;
            Oauth2RequirePostResponse  = $False;
            ObjectId                   = "0bbefbc2-6965-4846-9a1c-1a8eddafa892";
            PublicClient               = $False;
            ReplyURLs                  = @();
        }
        AADApplication 395ff7b8-9a4d-4a82-8063-b4bd2c205fc6
        {
            AppId                      = "8a7baf04-5f67-4e0b-a4e1-fb22a7193a23";
            AvailableToOtherTenants    = $True;
            DisplayName                = "ebaySP365appsGraphGroups-Prod";
            Ensure                     = "Present";
            GlobalAdminAccount         = $Credsglobaladmin;
            IdentifierUris             = @();
            KnownClientApplications    = @();
            Oauth2AllowImplicitFlow    = $True;
            Oauth2AllowUrlPathMatching = $False;
            Oauth2RequirePostResponse  = $False;
            ObjectId                   = "417fa861-a3ee-496a-bdeb-e59dcfb0f653";
            PublicClient               = $False;
            ReplyURLs                  = @("https://localhost","https://login.microsoftonline.com");
        }
        AADApplication 62d61d4f-0f77-402e-96f9-172e04950d3d
        {
            AppId                      = "e97f35bd-1b58-4dbc-9864-ced83c638e52";
            AvailableToOtherTenants    = $False;
            DisplayName                = "GraphMailbag";
            Ensure                     = "Present";
            GlobalAdminAccount         = $Credsglobaladmin;
            IdentifierUris             = @();
            KnownClientApplications    = @();
            Oauth2AllowImplicitFlow    = $False;
            Oauth2AllowUrlPathMatching = $False;
            Oauth2RequirePostResponse  = $False;
            ObjectId                   = "43bd9735-e318-44c1-8c33-22de35ab6ab4";
            Permissions                = @(MSFT_AADApplicationPermission { 
                Name                = 'User.Read'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'User.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $True
            }
            );
            PublicClient               = $False;
            ReplyURLs                  = @();
        }
        AADApplication b6a109b3-bcd9-4dab-bfbc-3e0f764c71c1
        {
            AppId                      = "5a7371ac-0b1d-4f37-b058-d93f688451d0";
            AvailableToOtherTenants    = $False;
            DisplayName                = "azure-cli-2018-01-17-05-04-22";
            Ensure                     = "Present";
            GlobalAdminAccount         = $Credsglobaladmin;
            Homepage                   = "http://azure-cli-2018-01-17-05-04-22";
            IdentifierUris             = @("http://azure-cli-2018-01-17-05-04-22");
            KnownClientApplications    = @();
            Oauth2AllowImplicitFlow    = $False;
            Oauth2AllowUrlPathMatching = $False;
            Oauth2RequirePostResponse  = $False;
            ObjectId                   = "4c31d43d-c7bc-4ce8-a0f6-5dc98394a37c";
            PublicClient               = $False;
            ReplyURLs                  = @();
        }
        AADApplication b3eed132-7ca6-4dc4-a9b0-ad3143627821
        {
            AppId                      = "70c38447-34ac-4103-b13f-8744d26e2591";
            AvailableToOtherTenants    = $False;
            DisplayName                = "SharePoint Online Client Extensibility Web Application Principal";
            Ensure                     = "Present";
            GlobalAdminAccount         = $Credsglobaladmin;
            IdentifierUris             = @("https://microsoft.spfx3rdparty.com");
            KnownClientApplications    = @();
            Oauth2AllowImplicitFlow    = $True;
            Oauth2AllowUrlPathMatching = $False;
            Oauth2RequirePostResponse  = $False;
            ObjectId                   = "517b1b78-b8bf-4f99-bbe8-fd7520187b33";
            PublicClient               = $False;
            ReplyURLs                  = @("https://o365dsc-admin.sharepoint.com/_forms/spfxsinglesignon.aspx","https://o365dsc.sharepoint.com/_forms/spfxsinglesignon.aspx?redirect","https://o365dsc.sharepoint.com/_forms/spfxsinglesignon.aspx","https://o365dsc.sharepoint.com/");
        }
        AADApplication 11d2855c-8503-470a-8c32-e24742c0b897
        {
            AppId                      = "e1958d04-15ca-4a07-b317-0daa16438913";
            AvailableToOtherTenants    = $False;
            DisplayName                = "GraphToolkit";
            Ensure                     = "Present";
            GlobalAdminAccount         = $Credsglobaladmin;
            IdentifierUris             = @();
            KnownClientApplications    = @();
            Oauth2AllowImplicitFlow    = $True;
            Oauth2AllowUrlPathMatching = $False;
            Oauth2RequirePostResponse  = $False;
            ObjectId                   = "6392a1ab-93a3-4303-b87c-268e3dd7f815";
            Permissions                = @(MSFT_AADApplicationPermission { 
                Name                = 'User.Read'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'User.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'openid'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'profile'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'Calendars.Read'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'People.Read'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'User.ReadBasic.All'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'People.Read.All'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'Mail.ReadBasic'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'Sites.Read.All'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'Mail.Read'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $True
            }
            );
            PublicClient               = $False;
            ReplyURLs                  = @("http://localhost:60922/Default.aspx");
        }
        AADApplication d3cf6af3-b50e-4961-ac9e-244184a21f07
        {
            AppId                      = "2944b3f7-9c5c-4b22-93e3-18e48f0e17f6";
            AvailableToOtherTenants    = $False;
            DisplayName                = "CiscoISE-Lab";
            Ensure                     = "Present";
            GlobalAdminAccount         = $Credsglobaladmin;
            IdentifierUris             = @();
            KnownClientApplications    = @();
            Oauth2AllowImplicitFlow    = $False;
            Oauth2AllowUrlPathMatching = $False;
            Oauth2RequirePostResponse  = $False;
            ObjectId                   = "7116730a-cafb-4bc0-a135-e28ee411aec7";
            PublicClient               = $False;
            ReplyURLs                  = @("https://CiscoISE-Lab.ebayinc.onmicrosoft.com");
        }
        AADApplication 5cb40f96-b7c5-4b51-bb65-8a19c57af397
        {
            AppId                      = "46dc333e-6f5e-4bdd-8f7f-aa0c1fa68acc";
            AvailableToOtherTenants    = $False;
            DisplayName                = "Microsoft365DSC";
            Ensure                     = "Present";
            GlobalAdminAccount         = $Credsglobaladmin;
            IdentifierUris             = @();
            KnownClientApplications    = @();
            Oauth2AllowImplicitFlow    = $True;
            Oauth2AllowUrlPathMatching = $False;
            Oauth2RequirePostResponse  = $False;
            ObjectId                   = "754e6e9f-6497-4ef0-b361-b9aead0c3ae2";
            Permissions                = @(MSFT_AADApplicationPermission { 
                Name                = 'Mail.ReadBasic'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Mail.Read'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Mail.Send.Shared'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Mail.ReadWrite.Shared'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Mail.Read.Shared'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'User.Read.All'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'Group.Read.All'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'Group.ReadWrite.All'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'Mail.ReadWrite'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Mail.Send'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Mail.ReadBasic.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'User.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'User.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'ChannelMessage.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Application.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Mail.ReadWrite'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Group.Read.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Group.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'TeamsTab.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'ChannelSettings.ReadWrite.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Channel.ReadBasic.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $False
            }
MSFT_AADApplicationPermission { 
                Name                = 'Contacts.Read'
                Type                = 'Delegated'
                SourceAPI           = 'Office 365 Exchange Online'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'Exchange.ManageAsApp'
                Type                = 'AppOnly'
                SourceAPI           = 'Office 365 Exchange Online'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'Sites.FullControl.All'
                Type                = 'AppOnly'
                SourceAPI           = 'Office 365 SharePoint Online'
                AdminConsentGranted = $True
            }
            );
            PublicClient               = $True;
            ReplyURLs                  = @("https://app.getpostman.com/oauth2/callback");
        }
        AADApplication f68d8ac8-f442-4989-8f6c-b6454093759e
        {
            AppId                      = "fbf2aa61-d428-4363-b74f-a0be011299a4";
            AvailableToOtherTenants    = $False;
            DisplayName                = "M365DSCReader";
            Ensure                     = "Present";
            GlobalAdminAccount         = $Credsglobaladmin;
            IdentifierUris             = @();
            KnownClientApplications    = @();
            Oauth2AllowImplicitFlow    = $False;
            Oauth2AllowUrlPathMatching = $False;
            Oauth2RequirePostResponse  = $False;
            ObjectId                   = "76eaab87-9cdc-49d2-ada6-921487faa28c";
            Permissions                = @(MSFT_AADApplicationPermission { 
                Name                = 'User.Read'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $True
            }
            );
            PublicClient               = $False;
            ReplyURLs                  = @();
        }
        AADApplication 18fd5f29-306a-4823-8a3a-d9b50dd1dd31
        {
            AppId                      = "ce6880f8-eb7a-4198-a6f8-ced6548d9716";
            AvailableToOtherTenants    = $False;
            DisplayName                = "App1";
            Ensure                     = "Present";
            GlobalAdminAccount         = $Credsglobaladmin;
            GroupMembershipClaims      = "None";
            Homepage                   = "https://app.contoso.com";
            IdentifierUris             = @("https://app.contoso.com");
            KnownClientApplications    = @();
            LogoutURL                  = "https://app.contoso.com/logout";
            Oauth2AllowImplicitFlow    = $False;
            Oauth2AllowUrlPathMatching = $False;
            Oauth2RequirePostResponse  = $False;
            ObjectId                   = "9ad09872-9cd4-4ff4-9962-e5c86e634b48";
            PublicClient               = $False;
            ReplyURLs                  = @("https://app.contoso.com");
        }
        AADApplication 8819ffa7-9cb1-4267-b744-9b743fd78af5
        {
            AppId                      = "0f80342e-520f-4737-9b21-4f5efb276a20";
            AvailableToOtherTenants    = $True;
            DisplayName                = "Office365DSC";
            Ensure                     = "Present";
            GlobalAdminAccount         = $Credsglobaladmin;
            Homepage                   = "https://GitHub.com/Microsoft/Office365DSC";
            IdentifierUris             = @();
            KnownClientApplications    = @();
            LogoutURL                  = "https://login.microsoftonline.com/common";
            Oauth2AllowImplicitFlow    = $False;
            Oauth2AllowUrlPathMatching = $False;
            Oauth2RequirePostResponse  = $False;
            ObjectId                   = "a5c59604-30dd-4dc5-a6f0-9919be37b275";
            Permissions                = @(MSFT_AADApplicationPermission { 
                Name                = 'AllSites.FullControl'
                Type                = 'Delegated'
                SourceAPI           = 'Office 365 SharePoint Online'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'MyFiles.Read'
                Type                = 'Delegated'
                SourceAPI           = 'Office 365 SharePoint Online'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'MyFiles.Write'
                Type                = 'Delegated'
                SourceAPI           = 'Office 365 SharePoint Online'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'Sites.Search.All'
                Type                = 'Delegated'
                SourceAPI           = 'Office 365 SharePoint Online'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'TermStore.Read.All'
                Type                = 'Delegated'
                SourceAPI           = 'Office 365 SharePoint Online'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'TermStore.ReadWrite.All'
                Type                = 'Delegated'
                SourceAPI           = 'Office 365 SharePoint Online'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'User.Read.All'
                Type                = 'Delegated'
                SourceAPI           = 'Office 365 SharePoint Online'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'User.ReadWrite.All'
                Type                = 'Delegated'
                SourceAPI           = 'Office 365 SharePoint Online'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'Group.Read.All'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'Group.ReadWrite.All'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'User.Read'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $True
            }
MSFT_AADApplicationPermission { 
                Name                = 'User.ReadWrite.All'
                Type                = 'Delegated'
                SourceAPI           = 'Microsoft Graph'
                AdminConsentGranted = $True
            }
            );
            PublicClient               = $False;
            ReplyURLs                  = @("https://login.microsoftonline.com/common/oauth2/nativeclient");
        }
        AADApplication 3e049460-828d-4c4a-a1e7-2a3732845d08
        {
            AppId                      = "6af8c1c4-e508-4f5a-8e9f-352c21ba7b49";
            AvailableToOtherTenants    = $False;
            DisplayName                = "SplunkPaaSData";
            Ensure                     = "Present";
            GlobalAdminAccount         = $Credsglobaladmin;
            Homepage                   = "https://azwusspkfw01.msc.its.ebay.com:8000";
            IdentifierUris             = @("https://ebayinc.onmicrosoft.com/e15b579a-7cfd-49c2-adb0-1a35965d0c43");
            KnownClientApplications    = @();
            Oauth2AllowImplicitFlow    = $False;
            Oauth2AllowUrlPathMatching = $False;
            Oauth2RequirePostResponse  = $False;
            ObjectId                   = "ab91e87c-5a7b-454e-9c0e-44fd3092ea18";
            PublicClient               = $False;
            ReplyURLs                  = @("https://azwusspkfw01.msc.its.ebay.com:8000");
        }
        AADApplication 881ea5ce-7860-4bac-8e4c-9228452f33d5
        {
            AppId                      = "1a1acbfe-6641-4396-9ed7-767b9f64d999";
            AvailableToOtherTenants    = $False;
            DisplayName                = "SharePoint Online Client Extensibility Web Application Principal Helper";
            Ensure                     = "Present";
            GlobalAdminAccount         = $Credsglobaladmin;
            IdentifierUris             = @("https://microsoft.spfx3rdpartyadmin.com");
            KnownClientApplications    = @();
            Oauth2AllowImplicitFlow    = $True;
            Oauth2AllowUrlPathMatching = $False;
            Oauth2RequirePostResponse  = $False;
            ObjectId                   = "bbc05d57-cd0b-4a41-9cfe-a16306f7a25a";
            PublicClient               = $False;
            ReplyURLs                  = @("https://o365dsc-admin.sharepoint.com/_forms/spfxsinglesignon.aspx");
        }
        AADApplication ba0c8309-cc97-473d-ae88-32e1c5c7da6c
        {
            AppId                      = "e325ad76-68bd-4058-858b-f955f5ba763c";
            AvailableToOtherTenants    = $False;
            DisplayName                = "ociossacrapp-nonprod";
            Ensure                     = "Present";
            GlobalAdminAccount         = $Credsglobaladmin;
            Homepage                   = "https://portal.azure.com";
            IdentifierUris             = @("https://ebayinc.onmicrosoft.com/f332c42a-928c-4fcc-a173-53252e423f0b");
            KnownClientApplications    = @();
            Oauth2AllowImplicitFlow    = $False;
            Oauth2AllowUrlPathMatching = $False;
            Oauth2RequirePostResponse  = $False;
            ObjectId                   = "cd2aee7c-b2f5-45b5-9068-a2a42c438a80";
            PublicClient               = $False;
            ReplyURLs                  = @("https://portal.azure.com");
        }
        AADApplication e95d541f-62e0-4ed9-a811-0ddea383e045
        {
            AppId                      = "6b91a19d-08dc-4256-97a9-a3892899aaae";
            AvailableToOtherTenants    = $False;
            DisplayName                = "InvalidApp";
            Ensure                     = "Present";
            GlobalAdminAccount         = $Credsglobaladmin;
            IdentifierUris             = @("https://NikCharlebois.com");
            KnownClientApplications    = @();
            Oauth2AllowImplicitFlow    = $False;
            Oauth2AllowUrlPathMatching = $False;
            Oauth2RequirePostResponse  = $False;
            ObjectId                   = "cd6bbaba-db0b-4ebe-b5ae-3f0bfd4ccb65";
            Permissions                = @(MSFT_AADApplicationPermission { 
                Name                = ''
                Type                = 'Delegated'
                SourceAPI           = ''
                AdminConsentGranted = $False
            }
            );
            PublicClient               = $True;
            ReplyURLs                  = @("https://Microsoft365dsc.com");
        }
        AADApplication 1489511d-2905-40e9-80f5-469bb89006cd
        {
            AppId                      = "b911f08d-ed52-4173-a61e-b0fd97c211da";
            AvailableToOtherTenants    = $False;
            DisplayName                = "Palo Alto Networks-GlobalProtect-cation ";
            Ensure                     = "Present";
            GlobalAdminAccount         = $Credsglobaladmin;
            Homepage                   = "https://*.globalprotect.paloaltonetworks.com/SAML20/SP/ACS?metadata=paloaltoglobalprotect|ISV9.2|primary|z";
            IdentifierUris             = @("https://cation.corp.ebay.com:443/SAML20/SP","https://us-west-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP","https://us-east-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP","https://us-northwest-g-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP","https://us-southwest-g-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP","https://us-southeast-g-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP","https://us-central-g-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP","https://us-south-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP","https://canada-west-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP","https://mexico-central-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP","https://canada-east-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP","https://kr-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP","https://australia-southeast-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP","https://india-west-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP","https://japan-central-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP","https://hong-kong-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP","https://singapore-g-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP","https://india-north-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP","https://india-south-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP","https://ie-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP","https://uk-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP","https://germany-central-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP","https://netherlands-central-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP","https://belgium-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP","https://denmark-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP","https://israel-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP","https://italy-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP","https://russia-central-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP","https://spain-central-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP","https://switzerland-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP","https://turkey-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP","https://costa-rica-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP","https://us-east-g-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP","https://us-west-g-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP","https://gpgateway-pvg.corp.ebay.com:443/SAML20/SP","https://australia-east-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP","https://australia-south-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP");
            KnownClientApplications    = @();
            Oauth2AllowImplicitFlow    = $False;
            Oauth2AllowUrlPathMatching = $False;
            Oauth2RequirePostResponse  = $False;
            ObjectId                   = "d5aa6abb-5ad2-4a5e-b1a1-a82255613066";
            PublicClient               = $False;
            ReplyURLs                  = @("https://cation.corp.ebay.com:443/SAML20/SP/ACS","https://turkey-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP/ACS","https://switzerland-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP/ACS","https://spain-central-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP/ACS","https://russia-central-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP/ACS","https://italy-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP/ACS","https://israel-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP/ACS","https://denmark-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP/ACS","https://belgium-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP/ACS","https://netherlands-central-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP/ACS","https://germany-central-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP/ACS","https://uk-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP/ACS","https://ie-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP/ACS","https://india-south-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP/ACS","https://india-north-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP/ACS","https://singapore-g-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP/ACS","https://hong-kong-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP/ACS","https://japan-central-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP/ACS","https://india-west-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP/ACS","https://australia-southeast-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP/ACS","https://kr-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP/ACS","https://canada-east-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP/ACS","https://mexico-central-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP/ACS","https://canada-west-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP/ACS","https://us-west-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP/ACS","https://us-south-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP/ACS","https://us-east-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP/ACS","https://us-northwest-g-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP/ACS","https://us-southwest-g-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP/ACS","https://us-central-g-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP/ACS","https://us-southeast-g-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP/ACS","https://us-south-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com.com:443/SAML20/SP/ACS","https://costa-rica-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP/ACS","https://us-east-g-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP/ACS","https://us-west-g-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP/ACS","https://gpgateway-pvg.corp.ebay.com:443/SAML20/SP/ACS","https://australia-east-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP/ACS","https://australia-south-ebayinc.5gx1jyombbbboyogycsgyjdlijzoby94.gw.gpcloudservice.com:443/SAML20/SP/ACS");
        }
        AADGroupsNamingPolicy 1ba6cc48-2c5c-43bb-8eb5-c3ad23fa02f3
        {
            CustomBlockedWordsList        = @("CEO","President");
            Ensure                        = "Present";
            GlobalAdminAccount            = $Credsglobaladmin;
            IsSingleInstance              = "Yes";
            PrefixSuffixNamingRequirement = "[Title]Test[Company][GroupName][Office]Redmond";
        }
        AADGroupsSettings 8aee88a7-9173-4e9b-a0a1-887d7ba30dcf
        {
            AllowGuestsToAccessGroups     = $True;
            AllowGuestsToBeGroupOwner     = $True;
            AllowToAddGuests              = $True;
            EnableGroupCreation           = $True;
            Ensure                        = "Present";
            GlobalAdminAccount            = $Credsglobaladmin;
            GroupCreationAllowedGroupName = "Office365DSC Core Team";
            GuestUsageGuidelinesUrl       = "";
            IsSingleInstance              = "Yes";
            UsageGuidelinesUrl            = "";
        }
        AADNamedLocationPolicy fe09bb7c-ceef-4b9a-9b86-4fe938b06109
        {
            DisplayName          = "Nik's Laptop";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "065739e8-108c-4515-b835-91b58e6c8833";
            IpRanges             = "192.226.137.109/12";
            IsTrusted            = $True;
            OdataType            = "#microsoft.graph.ipNamedLocation";
        }
        AADPolicy 1024886c-5e09-45d3-8c87-98b22caaedb8
        {
            Definition            = @("{`"AuthenticatorAppSignInPolicy`":{`"Enabled`":true}}");
            DisplayName           = "AuthenticatorAppSignIn";
            Ensure                = "Present";
            GlobalAdminAccount    = $Credsglobaladmin;
            Id                    = "46da156e-98fc-4388-a367-310ba4786931";
            IsOrganizationDefault = $False;
            Type                  = "AuthenticatorAppSignInPolicy";
        }
        AADRoleDefinition 9dc32ecd-336a-43b9-9d34-474321c74be4
        {
            Description          = "Can manage all aspects of Azure AD and Microsoft services that use Azure AD identities.";
            DisplayName          = "Global Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "62e90394-69f5-4237-9190-012177145e10";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/accessReviews/allProperties/allTasks","microsoft.directory/administrativeUnits/allProperties/allTasks","microsoft.directory/applications/allProperties/allTasks","microsoft.directory/applications/synchronization/standard/read","microsoft.directory/applicationTemplates/instantiate","microsoft.directory/appRoleAssignments/allProperties/allTasks","microsoft.directory/auditLogs/allProperties/read","microsoft.directory/authorizationPolicy/allProperties/allTasks","microsoft.directory/bitlockerKeys/key/read","microsoft.directory/cloudAppSecurity/allProperties/allTasks","microsoft.directory/connectors/create","microsoft.directory/connectors/allProperties/read","microsoft.directory/connectorGroups/create","microsoft.directory/connectorGroups/delete","microsoft.directory/connectorGroups/allProperties/read","microsoft.directory/connectorGroups/allProperties/update","microsoft.directory/contacts/allProperties/allTasks","microsoft.directory/contracts/allProperties/allTasks","microsoft.directory/devices/allProperties/allTasks","microsoft.directory/deviceManagementPolicies/standard/read","microsoft.directory/deviceManagementPolicies/basic/update","microsoft.directory/deviceRegistrationPolicy/standard/read","microsoft.directory/deviceRegistrationPolicy/basic/update","microsoft.directory/directoryRoles/allProperties/allTasks","microsoft.directory/directoryRoleTemplates/allProperties/allTasks","microsoft.directory/domains/allProperties/allTasks","microsoft.directory/entitlementManagement/allProperties/allTasks","microsoft.directory/groups/allProperties/allTasks","microsoft.directory/groupsAssignableToRoles/create","microsoft.directory/groupsAssignableToRoles/delete","microsoft.directory/groupsAssignableToRoles/restore","microsoft.directory/groupsAssignableToRoles/allProperties/update","microsoft.directory/groupSettings/allProperties/allTasks","microsoft.directory/groupSettingTemplates/allProperties/allTasks","microsoft.directory/identityProtection/allProperties/allTasks","microsoft.directory/loginOrganizationBranding/allProperties/allTasks","microsoft.directory/oAuth2PermissionGrants/allProperties/allTasks","microsoft.directory/organization/allProperties/allTasks","microsoft.directory/policies/allProperties/allTasks","microsoft.directory/conditionalAccessPolicies/allProperties/allTasks","microsoft.directory/crossTenantAccessPolicies/allProperties/allTasks","microsoft.directory/privilegedIdentityManagement/allProperties/read","microsoft.directory/provisioningLogs/allProperties/read","microsoft.directory/roleAssignments/allProperties/allTasks","microsoft.directory/roleDefinitions/allProperties/allTasks","microsoft.directory/scopedRoleMemberships/allProperties/allTasks","microsoft.directory/serviceAction/activateService","microsoft.directory/serviceAction/disableDirectoryFeature","microsoft.directory/serviceAction/enableDirectoryFeature","microsoft.directory/serviceAction/getAvailableExtentionProperties","microsoft.directory/servicePrincipals/allProperties/allTasks","microsoft.directory/servicePrincipals/managePermissionGrantsForAll.microsoft-company-admin","microsoft.directory/servicePrincipals/managePermissionGrantsForGroup.microsoft-all-application-permissions","microsoft.directory/servicePrincipals/synchronization/standard/read","microsoft.directory/signInReports/allProperties/read","microsoft.directory/subscribedSkus/allProperties/allTasks","microsoft.directory/users/allProperties/allTasks","microsoft.directory/permissionGrantPolicies/create","microsoft.directory/permissionGrantPolicies/delete","microsoft.directory/permissionGrantPolicies/standard/read","microsoft.directory/permissionGrantPolicies/basic/update","microsoft.directory/servicePrincipalCreationPolicies/create","microsoft.directory/servicePrincipalCreationPolicies/delete","microsoft.directory/servicePrincipalCreationPolicies/standard/read","microsoft.directory/servicePrincipalCreationPolicies/basic/update","microsoft.directory/verifiableCredentials/configuration/contracts/cards/allProperties/read","microsoft.directory/verifiableCredentials/configuration/contracts/cards/revoke","microsoft.directory/verifiableCredentials/configuration/contracts/create","microsoft.directory/verifiableCredentials/configuration/contracts/allProperties/read","microsoft.directory/verifiableCredentials/configuration/contracts/allProperties/update","microsoft.directory/verifiableCredentials/configuration/create","microsoft.directory/verifiableCredentials/configuration/delete","microsoft.directory/verifiableCredentials/configuration/allProperties/read","microsoft.directory/verifiableCredentials/configuration/allProperties/update","microsoft.azure.advancedThreatProtection/allEntities/allTasks","microsoft.azure.informationProtection/allEntities/allTasks","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.commerce.billing/allEntities/allTasks","microsoft.dynamics365/allEntities/allTasks","microsoft.flow/allEntities/allTasks","microsoft.intune/allEntities/allTasks","microsoft.office365.complianceManager/allEntities/allTasks","microsoft.office365.desktopAnalytics/allEntities/allTasks","microsoft.office365.exchange/allEntities/basic/allTasks","microsoft.office365.knowledge/contentUnderstanding/allProperties/allTasks","microsoft.office365.knowledge/contentUnderstanding/analytics/allProperties/read","microsoft.office365.knowledge/knowledgeNetwork/allProperties/allTasks","microsoft.office365.knowledge/knowledgeNetwork/topicVisibility/allProperties/allTasks","microsoft.office365.knowledge/learningSources/allProperties/allTasks","microsoft.office365.lockbox/allEntities/allTasks","microsoft.office365.messageCenter/messages/read","microsoft.office365.messageCenter/securityMessages/read","microsoft.office365.network/performance/allProperties/read","microsoft.office365.protectionCenter/allEntities/allProperties/allTasks","microsoft.office365.search/content/manage","microsoft.office365.securityComplianceCenter/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.sharePoint/allEntities/allTasks","microsoft.office365.skypeForBusiness/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.usageReports/allEntities/allProperties/read","microsoft.office365.userCommunication/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read","microsoft.powerApps/allEntities/allTasks","microsoft.powerApps.powerBI/allEntities/allTasks","microsoft.windows.defenderAdvancedThreatProtection/allEntities/allTasks");
            TemplateId           = "62e90394-69f5-4237-9190-012177145e10";
            Version              = "1";
        }
        AADRoleDefinition 08948127-d168-4453-b443-2532983586db
        {
            Description          = "Default role for guest users. Can read a limited set of directory information.";
            DisplayName          = "Guest User";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "10dae51f-b6af-4016-8d66-8c2a99b929b3";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/applications/standard/limitedRead","microsoft.directory/applications/owners/limitedRead","microsoft.directory/applications/policies/limitedRead","microsoft.directory/domains/standard/read","microsoft.directory/groups/standard/limitedRead","microsoft.directory/groups/appRoleAssignments/limitedRead","microsoft.directory/groups/memberOf/limitedRead","microsoft.directory/groups/members/limitedRead","microsoft.directory/groups/owners/limitedRead","microsoft.directory/groups/settings/limitedRead","microsoft.directory/organization/basicProfile/read","microsoft.directory/servicePrincipals/appRoleAssignedTo/limitedRead","microsoft.directory/servicePrincipals/appRoleAssignments/limitedRead","microsoft.directory/servicePrincipals/standard/limitedRead","microsoft.directory/servicePrincipals/memberOf/limitedRead","microsoft.directory/servicePrincipals/oAuth2PermissionGrants/limitedRead","microsoft.directory/servicePrincipals/owners/limitedRead","microsoft.directory/servicePrincipals/ownedObjects/limitedRead","microsoft.directory/servicePrincipals/policies/limitedRead","microsoft.directory/users/inviteGuest","microsoft.directory/users/guestBasicProfile/limitedRead","microsoft.directory/users/standard/read","microsoft.directory/users/appRoleAssignments/read","microsoft.directory/users/directReports/read","microsoft.directory/users/eligibleMemberOf/read","microsoft.directory/users/manager/read","microsoft.directory/users/memberOf/read","microsoft.directory/users/oAuth2PermissionGrants/read","microsoft.directory/users/ownedDevices/read","microsoft.directory/users/ownedObjects/read","microsoft.directory/users/pendingMemberOf/read","microsoft.directory/users/registeredDevices/read","microsoft.directory/users/scopedRoleMemberOf/read","microsoft.directory/users/password/update");
            TemplateId           = "10dae51f-b6af-4016-8d66-8c2a99b929b3";
            Version              = "1";
        }
        AADRoleDefinition c895054e-b3fc-42a5-8e71-476fb0391ad0
        {
            Description          = "Restricted role for guest users. Can read a limited set of directory information.";
            DisplayName          = "Restricted Guest User";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "2af84b1e-32c8-42b7-82bc-daa82404023b";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/applications/standard/limitedRead","microsoft.directory/applications/owners/limitedRead","microsoft.directory/applications/policies/limitedRead","microsoft.directory/domains/standard/read","microsoft.directory/organization/basicProfile/read","microsoft.directory/servicePrincipals/appRoleAssignedTo/limitedRead","microsoft.directory/servicePrincipals/appRoleAssignments/limitedRead","microsoft.directory/servicePrincipals/standard/limitedRead","microsoft.directory/servicePrincipals/memberOf/limitedRead","microsoft.directory/servicePrincipals/oAuth2PermissionGrants/limitedRead","microsoft.directory/servicePrincipals/owners/limitedRead","microsoft.directory/servicePrincipals/ownedObjects/limitedRead","microsoft.directory/servicePrincipals/policies/limitedRead","microsoft.directory/users/standard/read","microsoft.directory/users/appRoleAssignments/read","microsoft.directory/users/directReports/read","microsoft.directory/users/eligibleMemberOf/read","microsoft.directory/users/manager/read","microsoft.directory/users/memberOf/read","microsoft.directory/users/oAuth2PermissionGrants/read","microsoft.directory/users/ownedDevices/read","microsoft.directory/users/ownedObjects/read","microsoft.directory/users/pendingMemberOf/read","microsoft.directory/users/registeredDevices/read","microsoft.directory/users/scopedRoleMemberOf/read","microsoft.directory/users/password/update");
            TemplateId           = "2af84b1e-32c8-42b7-82bc-daa82404023b";
            Version              = "1";
        }
        AADRoleDefinition 767c4d54-72ba-495c-a398-921e791285ee
        {
            Description          = "Can invite guest users independent of the 'members can invite guests' setting.";
            DisplayName          = "Guest Inviter";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "95e79109-95c0-4d8e-aee3-d01accf2d47b";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/users/inviteGuest","microsoft.directory/users/standard/read","microsoft.directory/users/appRoleAssignments/read","microsoft.directory/users/directReports/read","microsoft.directory/users/manager/read","microsoft.directory/users/memberOf/read","microsoft.directory/users/oAuth2PermissionGrants/read","microsoft.directory/users/ownedDevices/read","microsoft.directory/users/ownedObjects/read","microsoft.directory/users/registeredDevices/read");
            TemplateId           = "95e79109-95c0-4d8e-aee3-d01accf2d47b";
            Version              = "1";
        }
        AADRoleDefinition 2a6df4c1-a58e-405c-a2d3-a95c010db883
        {
            Description          = "Can manage all aspects of users and groups, including resetting passwords for limited admins.";
            DisplayName          = "User Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "fe930be7-5e62-47db-91af-98c3a49a38b1";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/appRoleAssignments/create","microsoft.directory/appRoleAssignments/delete","microsoft.directory/appRoleAssignments/basic/update","microsoft.directory/contacts/create","microsoft.directory/contacts/delete","microsoft.directory/contacts/basic/update","microsoft.directory/entitlementManagement/allProperties/allTasks","microsoft.directory/groups/assignLicense","microsoft.directory/groups/create","microsoft.directory/groups/delete","microsoft.directory/groups/hiddenMembers/read","microsoft.directory/groups/reprocessLicenseAssignment","microsoft.directory/groups/restore","microsoft.directory/groups/basic/update","microsoft.directory/groups/classification/update","microsoft.directory/groups/dynamicMembershipRule/update","microsoft.directory/groups/groupType/update","microsoft.directory/groups/members/update","microsoft.directory/groups/onPremWriteBack/update","microsoft.directory/groups/owners/update","microsoft.directory/groups/settings/update","microsoft.directory/groups/visibility/update","microsoft.directory/oAuth2PermissionGrants/allProperties/allTasks","microsoft.directory/servicePrincipals/appRoleAssignedTo/update","microsoft.directory/users/assignLicense","microsoft.directory/users/create","microsoft.directory/users/delete","microsoft.directory/users/disable","microsoft.directory/users/enable","microsoft.directory/users/inviteGuest","microsoft.directory/users/invalidateAllRefreshTokens","microsoft.directory/users/reprocessLicenseAssignment","microsoft.directory/users/restore","microsoft.directory/users/basic/update","microsoft.directory/users/manager/update","microsoft.directory/users/password/update","microsoft.directory/users/userPrincipalName/update","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "fe930be7-5e62-47db-91af-98c3a49a38b1";
            Version              = "1";
        }
        AADRoleDefinition c6842403-575d-4c1f-a2c2-94aee1443546
        {
            Description          = "Can reset passwords for non-administrators and Helpdesk Administrators.";
            DisplayName          = "Helpdesk Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "729827e3-9c14-49f7-bb1b-9608f156bbb8";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/bitlockerKeys/key/read","microsoft.directory/users/invalidateAllRefreshTokens","microsoft.directory/users/password/update","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "729827e3-9c14-49f7-bb1b-9608f156bbb8";
            Version              = "1";
        }
        AADRoleDefinition 9f06a158-9481-4eb1-ae3d-47a93442894c
        {
            Description          = "Can read service health information and manage support tickets.";
            DisplayName          = "Service Support Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "f023fd81-a637-4b56-95fd-791ac0226033";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.network/performance/allProperties/read","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "f023fd81-a637-4b56-95fd-791ac0226033";
            Version              = "1";
        }
        AADRoleDefinition 90da7be2-b27b-4f4b-830e-6cfc4570b1f8
        {
            Description          = "Can perform common billing related tasks like updating payment information.";
            DisplayName          = "Billing Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "b0f54661-2d74-4c50-afa3-1ec803f12efe";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/organization/basic/update","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.commerce.billing/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "b0f54661-2d74-4c50-afa3-1ec803f12efe";
            Version              = "1";
        }
        AADRoleDefinition 1825e78a-67ae-40b1-ae7d-a96f08ee3f29
        {
            Description          = "Default role for member users. Can read all and write a limited set of directory information.";
            DisplayName          = "User";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "a0b1b346-4d3e-4e8b-98f8-753987be4970";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/applications/createAsOwner","microsoft.directory/groups/createAsOwner","microsoft.directory/policies/standard/read","microsoft.directory/policies/owners/read","microsoft.directory/policies/policyAppliedTo/read","microsoft.directory/applicationPolicies/createAsOwner","microsoft.directory/servicePrincipals/createAsOwner","microsoft.directory/servicePrincipals/authentication/read","microsoft.directory/users/activateServicePlan","microsoft.directory/users/inviteGuest","microsoft.directory/applications/delete","microsoft.directory/applications/restore","microsoft.directory/applications/appRoles/update","microsoft.directory/applications/audience/update","microsoft.directory/applications/authentication/update","microsoft.directory/applications/basic/update","microsoft.directory/applications/credentials/update","microsoft.directory/applications/owners/update","microsoft.directory/applications/permissions/update","microsoft.directory/applications/policies/update","microsoft.directory/applications/verification/update","microsoft.directory/auditLogs/allProperties/read","microsoft.directory/devices/disable","microsoft.directory/groups/delete","microsoft.directory/groups/restore","microsoft.directory/groups/basic/update","microsoft.directory/groups/classification/update","microsoft.directory/groups/groupType/update","microsoft.directory/groups/members/update","microsoft.directory/groups/owners/update","microsoft.directory/groups/settings/update","microsoft.directory/groups/visibility/update","microsoft.directory/groupsAssignableToRoles/delete","microsoft.directory/groupsAssignableToRoles/restore","microsoft.directory/groupsAssignableToRoles/allProperties/update","microsoft.directory/policies/delete","microsoft.directory/policies/basic/update","microsoft.directory/policies/owners/update","microsoft.directory/provisioningLogs/allProperties/read","microsoft.directory/servicePrincipals/delete","microsoft.directory/servicePrincipals/disable","microsoft.directory/servicePrincipals/enable","microsoft.directory/servicePrincipals/getPasswordSingleSignOnCredentials","microsoft.directory/servicePrincipals/managePasswordSingleSignOnCredentials","microsoft.directory/servicePrincipals/appRoleAssignedTo/update","microsoft.directory/servicePrincipals/audience/update","microsoft.directory/servicePrincipals/authentication/update","microsoft.directory/servicePrincipals/basic/update","microsoft.directory/servicePrincipals/credentials/update","microsoft.directory/servicePrincipals/owners/update","microsoft.directory/servicePrincipals/permissions/update","microsoft.directory/servicePrincipals/policies/update","microsoft.directory/servicePrincipals/tag/update","microsoft.directory/signInReports/allProperties/read","microsoft.directory/users/changePassword","microsoft.directory/users/invalidateAllRefreshTokens","microsoft.directory/users/basicProfile/update","microsoft.directory/users/identities/update","microsoft.directory/users/mobile/update","microsoft.directory/users/searchableDeviceKey/update","microsoft.directory/userInfos/address/read","microsoft.directory/userInfos/email/read","microsoft.directory/userInfos/openId/read","microsoft.directory/userInfos/phone/read","microsoft.directory/userInfos/profile/read");
            TemplateId           = "a0b1b346-4d3e-4e8b-98f8-753987be4970";
            Version              = "1";
        }
        AADRoleDefinition 21100932-78bd-4e3b-82d5-61cd2b9db6f5
        {
            Description          = "Do not use - not intended for general use.";
            DisplayName          = "Partner Tier1 Support";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "4ba39ca4-527c-499a-b93d-d9b492c50246";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/applications/appRoles/update","microsoft.directory/applications/audience/update","microsoft.directory/applications/authentication/update","microsoft.directory/applications/basic/update","microsoft.directory/applications/credentials/update","microsoft.directory/applications/owners/update","microsoft.directory/applications/permissions/update","microsoft.directory/applications/policies/update","microsoft.directory/contacts/create","microsoft.directory/contacts/delete","microsoft.directory/contacts/basic/update","microsoft.directory/groups/create","microsoft.directory/groups/delete","microsoft.directory/groups/restore","microsoft.directory/groups/members/update","microsoft.directory/groups/owners/update","microsoft.directory/oAuth2PermissionGrants/allProperties/allTasks","microsoft.directory/servicePrincipals/appRoleAssignedTo/update","microsoft.directory/users/assignLicense","microsoft.directory/users/create","microsoft.directory/users/delete","microsoft.directory/users/disable","microsoft.directory/users/enable","microsoft.directory/users/invalidateAllRefreshTokens","microsoft.directory/users/restore","microsoft.directory/users/basic/update","microsoft.directory/users/manager/update","microsoft.directory/users/password/update","microsoft.directory/users/userPrincipalName/update","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "4ba39ca4-527c-499a-b93d-d9b492c50246";
            Version              = "1";
        }
        AADRoleDefinition e1f56156-2615-492f-989e-977b43543a60
        {
            Description          = "Do not use - not intended for general use.";
            DisplayName          = "Partner Tier2 Support";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "e00e864a-17c5-4a4b-9c06-f5b95a8d5bd8";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/applications/appRoles/update","microsoft.directory/applications/audience/update","microsoft.directory/applications/authentication/update","microsoft.directory/applications/basic/update","microsoft.directory/applications/credentials/update","microsoft.directory/applications/owners/update","microsoft.directory/applications/permissions/update","microsoft.directory/applications/policies/update","microsoft.directory/contacts/create","microsoft.directory/contacts/delete","microsoft.directory/contacts/basic/update","microsoft.directory/domains/allProperties/allTasks","microsoft.directory/groups/create","microsoft.directory/groups/delete","microsoft.directory/groups/restore","microsoft.directory/groups/members/update","microsoft.directory/groups/owners/update","microsoft.directory/oAuth2PermissionGrants/allProperties/allTasks","microsoft.directory/organization/basic/update","microsoft.directory/roleAssignments/allProperties/allTasks","microsoft.directory/roleDefinitions/allProperties/allTasks","microsoft.directory/scopedRoleMemberships/allProperties/allTasks","microsoft.directory/servicePrincipals/appRoleAssignedTo/update","microsoft.directory/subscribedSkus/standard/read","microsoft.directory/users/assignLicense","microsoft.directory/users/create","microsoft.directory/users/delete","microsoft.directory/users/disable","microsoft.directory/users/enable","microsoft.directory/users/invalidateAllRefreshTokens","microsoft.directory/users/restore","microsoft.directory/users/basic/update","microsoft.directory/users/manager/update","microsoft.directory/users/password/update","microsoft.directory/users/userPrincipalName/update","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "e00e864a-17c5-4a4b-9c06-f5b95a8d5bd8";
            Version              = "1";
        }
        AADRoleDefinition 2e404e2e-7403-40b5-8e5b-a715cfe6cece
        {
            Description          = "Can read basic directory information. Commonly used to grant directory read access to applications and guests.";
            DisplayName          = "Directory Readers";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "88d8e3e3-8f55-4a1e-953a-9b9898b8876b";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/administrativeUnits/standard/read","microsoft.directory/administrativeUnits/members/read","microsoft.directory/applications/standard/read","microsoft.directory/applications/owners/read","microsoft.directory/applications/policies/read","microsoft.directory/contacts/standard/read","microsoft.directory/contacts/memberOf/read","microsoft.directory/contracts/standard/read","microsoft.directory/devices/standard/read","microsoft.directory/devices/memberOf/read","microsoft.directory/devices/registeredOwners/read","microsoft.directory/devices/registeredUsers/read","microsoft.directory/directoryRoles/standard/read","microsoft.directory/directoryRoles/eligibleMembers/read","microsoft.directory/directoryRoles/members/read","microsoft.directory/domains/standard/read","microsoft.directory/groups/standard/read","microsoft.directory/groups/appRoleAssignments/read","microsoft.directory/groups/memberOf/read","microsoft.directory/groups/members/read","microsoft.directory/groups/owners/read","microsoft.directory/groups/settings/read","microsoft.directory/groupSettings/standard/read","microsoft.directory/groupSettingTemplates/standard/read","microsoft.directory/oAuth2PermissionGrants/standard/read","microsoft.directory/organization/standard/read","microsoft.directory/organization/trustedCAsForPasswordlessAuth/read","microsoft.directory/applicationPolicies/standard/read","microsoft.directory/roleAssignments/standard/read","microsoft.directory/roleDefinitions/standard/read","microsoft.directory/servicePrincipals/appRoleAssignedTo/read","microsoft.directory/servicePrincipals/appRoleAssignments/read","microsoft.directory/servicePrincipals/standard/read","microsoft.directory/servicePrincipals/memberOf/read","microsoft.directory/servicePrincipals/oAuth2PermissionGrants/read","microsoft.directory/servicePrincipals/owners/read","microsoft.directory/servicePrincipals/ownedObjects/read","microsoft.directory/servicePrincipals/policies/read","microsoft.directory/subscribedSkus/standard/read","microsoft.directory/users/standard/read","microsoft.directory/users/appRoleAssignments/read","microsoft.directory/users/directReports/read","microsoft.directory/users/manager/read","microsoft.directory/users/memberOf/read","microsoft.directory/users/oAuth2PermissionGrants/read","microsoft.directory/users/ownedDevices/read","microsoft.directory/users/ownedObjects/read","microsoft.directory/users/registeredDevices/read");
            TemplateId           = "88d8e3e3-8f55-4a1e-953a-9b9898b8876b";
            Version              = "1";
        }
        AADRoleDefinition 64731b71-5e01-4f62-b37d-8c55eda19e68
        {
            Description          = "Can read and write basic directory information. For granting access to applications, not intended for users.";
            DisplayName          = "Directory Writers";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "9360feb5-f418-4baa-8175-e2a00bac4301";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/groups/assignLicense","microsoft.directory/groups/create","microsoft.directory/groups/reprocessLicenseAssignment","microsoft.directory/groups/basic/update","microsoft.directory/groups/classification/update","microsoft.directory/groups/dynamicMembershipRule/update","microsoft.directory/groups/groupType/update","microsoft.directory/groups/members/update","microsoft.directory/groups/onPremWriteBack/update","microsoft.directory/groups/owners/update","microsoft.directory/groups/settings/update","microsoft.directory/groups/visibility/update","microsoft.directory/groupSettings/create","microsoft.directory/groupSettings/delete","microsoft.directory/groupSettings/basic/update","microsoft.directory/oAuth2PermissionGrants/create","microsoft.directory/oAuth2PermissionGrants/basic/update","microsoft.directory/servicePrincipals/synchronizationCredentials/manage","microsoft.directory/servicePrincipals/synchronizationJobs/manage","microsoft.directory/servicePrincipals/synchronizationSchema/manage","microsoft.directory/servicePrincipals/managePermissionGrantsForGroup.microsoft-all-application-permissions","microsoft.directory/servicePrincipals/appRoleAssignedTo/update","microsoft.directory/users/assignLicense","microsoft.directory/users/create","microsoft.directory/users/disable","microsoft.directory/users/enable","microsoft.directory/users/invalidateAllRefreshTokens","microsoft.directory/users/reprocessLicenseAssignment","microsoft.directory/users/basic/update","microsoft.directory/users/manager/update","microsoft.directory/users/userPrincipalName/update");
            TemplateId           = "9360feb5-f418-4baa-8175-e2a00bac4301";
            Version              = "1";
        }
        AADRoleDefinition 756a1199-af31-4ca8-a224-f1110de98006
        {
            Description          = "Can manage all aspects of the Exchange product.";
            DisplayName          = "Exchange Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "29232cdf-9323-42fd-ade2-1d097af3e4de";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/groups/hiddenMembers/read","microsoft.directory/groups.unified/create","microsoft.directory/groups.unified/delete","microsoft.directory/groups.unified/restore","microsoft.directory/groups.unified/basic/update","microsoft.directory/groups.unified/members/update","microsoft.directory/groups.unified/owners/update","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.exchange/allEntities/basic/allTasks","microsoft.office365.network/performance/allProperties/read","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.usageReports/allEntities/allProperties/read","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "29232cdf-9323-42fd-ade2-1d097af3e4de";
            Version              = "1";
        }
        AADRoleDefinition 4c902e48-259b-420e-a8ce-82bd17d9acb3
        {
            Description          = "Can manage all aspects of the SharePoint service.";
            DisplayName          = "SharePoint Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "f28a1f50-f6e7-4571-818b-6a12f2af6b6c";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/groups.unified/create","microsoft.directory/groups.unified/delete","microsoft.directory/groups.unified/restore","microsoft.directory/groups.unified/basic/update","microsoft.directory/groups.unified/members/update","microsoft.directory/groups.unified/owners/update","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.network/performance/allProperties/read","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.sharePoint/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.usageReports/allEntities/allProperties/read","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "f28a1f50-f6e7-4571-818b-6a12f2af6b6c";
            Version              = "1";
        }
        AADRoleDefinition dbb715ee-3b98-4b68-a3e5-6fed7e6d2482
        {
            Description          = "Can manage all aspects of the Skype for Business product.";
            DisplayName          = "Skype for Business Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "75941009-915a-4869-abe7-691bff18279e";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.skypeForBusiness/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.usageReports/allEntities/allProperties/read","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "75941009-915a-4869-abe7-691bff18279e";
            Version              = "1";
        }
        AADRoleDefinition 7f6c0c1b-2754-46be-918f-11b846570e67
        {
            Description          = "Device Administrators.";
            DisplayName          = "Azure AD Joined Device Local Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "9f06204d-73c1-4d4c-880a-6edb90606fd8";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/groupSettings/standard/read","microsoft.directory/groupSettingTemplates/standard/read");
            TemplateId           = "9f06204d-73c1-4d4c-880a-6edb90606fd8";
            Version              = "1";
        }
        AADRoleDefinition 795d262a-2733-4d15-9ae9-906bda00310a
        {
            Description          = "Can read and manage compliance configuration and reports in Azure AD and Office 365.";
            DisplayName          = "Compliance Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "17315797-102d-40b4-93e0-432062caca18";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.directory/entitlementManagement/allProperties/read","microsoft.office365.complianceManager/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "17315797-102d-40b4-93e0-432062caca18";
            Version              = "1";
        }
        AADRoleDefinition 82d8a8ac-c2ce-4a50-8f10-9c0bd286a61d
        {
            Description          = "Only used by Azure AD Connect service.";
            DisplayName          = "Directory Synchronization Accounts";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "d29b2b05-8046-44ba-8758-1e26182fcf32";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/applications/create","microsoft.directory/applications/delete","microsoft.directory/applications/appRoles/update","microsoft.directory/applications/audience/update","microsoft.directory/applications/authentication/update","microsoft.directory/applications/basic/update","microsoft.directory/applications/credentials/update","microsoft.directory/applications/owners/update","microsoft.directory/applications/permissions/update","microsoft.directory/applications/policies/update","microsoft.directory/organization/dirSync/update","microsoft.directory/policies/create","microsoft.directory/policies/delete","microsoft.directory/policies/standard/read","microsoft.directory/policies/owners/read","microsoft.directory/policies/policyAppliedTo/read","microsoft.directory/policies/basic/update","microsoft.directory/policies/owners/update","microsoft.directory/policies/tenantDefault/update","microsoft.directory/servicePrincipals/create","microsoft.directory/servicePrincipals/delete","microsoft.directory/servicePrincipals/enable","microsoft.directory/servicePrincipals/disable","microsoft.directory/servicePrincipals/getPasswordSingleSignOnCredentials","microsoft.directory/servicePrincipals/managePasswordSingleSignOnCredentials","microsoft.directory/servicePrincipals/appRoleAssignedTo/read","microsoft.directory/servicePrincipals/appRoleAssignments/read","microsoft.directory/servicePrincipals/standard/read","microsoft.directory/servicePrincipals/memberOf/read","microsoft.directory/servicePrincipals/oAuth2PermissionGrants/read","microsoft.directory/servicePrincipals/owners/read","microsoft.directory/servicePrincipals/ownedObjects/read","microsoft.directory/servicePrincipals/policies/read","microsoft.directory/servicePrincipals/appRoleAssignedTo/update","microsoft.directory/servicePrincipals/audience/update","microsoft.directory/servicePrincipals/authentication/update","microsoft.directory/servicePrincipals/basic/update","microsoft.directory/servicePrincipals/credentials/update","microsoft.directory/servicePrincipals/owners/update","microsoft.directory/servicePrincipals/permissions/update","microsoft.directory/servicePrincipals/policies/update","microsoft.directory/servicePrincipals/tag/update");
            TemplateId           = "d29b2b05-8046-44ba-8758-1e26182fcf32";
            Version              = "1";
        }
        AADRoleDefinition 5954d98b-d133-4a7f-8166-b7b9247db4df
        {
            Description          = "Deprecated - Do Not Use.";
            DisplayName          = "Device Managers";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "2b499bcd-da44-4968-8aec-78e1674fa64d";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/devices/standard/read","microsoft.directory/devices/memberOf/read","microsoft.directory/devices/registeredOwners/read","microsoft.directory/devices/registeredUsers/read","microsoft.directory/devices/basic/update","microsoft.directory/devices/registeredOwners/update","microsoft.directory/devices/registeredUsers/update");
            TemplateId           = "2b499bcd-da44-4968-8aec-78e1674fa64d";
            Version              = "1";
        }
        AADRoleDefinition 4a62e2d1-0710-4ddb-bab1-89dadde01558
        {
            Description          = "Can create and manage all aspects of app registrations and enterprise apps.";
            DisplayName          = "Application Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/applications/create","microsoft.directory/applications/delete","microsoft.directory/applications/applicationProxy/read","microsoft.directory/applications/applicationProxy/update","microsoft.directory/applications/applicationProxyAuthentication/update","microsoft.directory/applications/applicationProxySslCertificate/update","microsoft.directory/applications/applicationProxyUrlSettings/update","microsoft.directory/applications/appRoles/update","microsoft.directory/applications/audience/update","microsoft.directory/applications/authentication/update","microsoft.directory/applications/basic/update","microsoft.directory/applications/credentials/update","microsoft.directory/applications/owners/update","microsoft.directory/applications/permissions/update","microsoft.directory/applications/policies/update","microsoft.directory/applications/verification/update","microsoft.directory/applications/synchronization/standard/read","microsoft.directory/applicationTemplates/instantiate","microsoft.directory/auditLogs/allProperties/read","microsoft.directory/connectors/create","microsoft.directory/connectors/allProperties/read","microsoft.directory/connectorGroups/create","microsoft.directory/connectorGroups/delete","microsoft.directory/connectorGroups/allProperties/read","microsoft.directory/connectorGroups/allProperties/update","microsoft.directory/oAuth2PermissionGrants/allProperties/allTasks","microsoft.directory/applicationPolicies/create","microsoft.directory/applicationPolicies/delete","microsoft.directory/applicationPolicies/standard/read","microsoft.directory/applicationPolicies/owners/read","microsoft.directory/applicationPolicies/policyAppliedTo/read","microsoft.directory/applicationPolicies/basic/update","microsoft.directory/applicationPolicies/owners/update","microsoft.directory/provisioningLogs/allProperties/read","microsoft.directory/servicePrincipals/create","microsoft.directory/servicePrincipals/delete","microsoft.directory/servicePrincipals/disable","microsoft.directory/servicePrincipals/enable","microsoft.directory/servicePrincipals/getPasswordSingleSignOnCredentials","microsoft.directory/servicePrincipals/synchronizationCredentials/manage","microsoft.directory/servicePrincipals/synchronizationJobs/manage","microsoft.directory/servicePrincipals/synchronizationSchema/manage","microsoft.directory/servicePrincipals/managePasswordSingleSignOnCredentials","microsoft.directory/servicePrincipals/managePermissionGrantsForAll.microsoft-application-admin","microsoft.directory/servicePrincipals/appRoleAssignedTo/update","microsoft.directory/servicePrincipals/audience/update","microsoft.directory/servicePrincipals/authentication/update","microsoft.directory/servicePrincipals/basic/update","microsoft.directory/servicePrincipals/credentials/update","microsoft.directory/servicePrincipals/owners/update","microsoft.directory/servicePrincipals/permissions/update","microsoft.directory/servicePrincipals/policies/update","microsoft.directory/servicePrincipals/tag/update","microsoft.directory/servicePrincipals/synchronization/standard/read","microsoft.directory/signInReports/allProperties/read","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3";
            Version              = "1";
        }
        AADRoleDefinition 3d55e5b7-af46-400b-ad7c-53cbcfa8c47f
        {
            Description          = "Can create application registrations independent of the 'Users can register applications' setting.";
            DisplayName          = "Application Developer";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "cf1c38e5-3621-4004-a7cb-879624dced7c";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/applications/createAsOwner","microsoft.directory/appRoleAssignments/createAsOwner","microsoft.directory/oAuth2PermissionGrants/createAsOwner","microsoft.directory/servicePrincipals/createAsOwner");
            TemplateId           = "cf1c38e5-3621-4004-a7cb-879624dced7c";
            Version              = "1";
        }
        AADRoleDefinition 88ed29eb-4a0a-4f0c-a44c-b88ac211fd6c
        {
            Description          = "Can read security information and reports in Azure AD and Office 365.";
            DisplayName          = "Security Reader";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "5d6b6bb7-de71-4623-b4af-96380a352509";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/auditLogs/allProperties/read","microsoft.directory/bitlockerKeys/key/read","microsoft.directory/entitlementManagement/allProperties/read","microsoft.directory/identityProtection/allProperties/read","microsoft.directory/policies/standard/read","microsoft.directory/policies/owners/read","microsoft.directory/policies/policyAppliedTo/read","microsoft.directory/conditionalAccessPolicies/standard/read","microsoft.directory/conditionalAccessPolicies/owners/read","microsoft.directory/conditionalAccessPolicies/policyAppliedTo/read","microsoft.directory/privilegedIdentityManagement/allProperties/read","microsoft.directory/provisioningLogs/allProperties/read","microsoft.directory/signInReports/allProperties/read","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.office365.protectionCenter/allEntities/standard/read","microsoft.office365.protectionCenter/attackSimulator/payload/allProperties/read","microsoft.office365.protectionCenter/attackSimulator/reports/allProperties/read","microsoft.office365.protectionCenter/attackSimulator/simulation/allProperties/read","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "5d6b6bb7-de71-4623-b4af-96380a352509";
            Version              = "1";
        }
        AADRoleDefinition c8200efd-e12a-479a-a22a-4df141092c89
        {
            Description          = "Can read security information and reports, and manage configuration in Azure AD and Office 365.";
            DisplayName          = "Security Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "194ae4cb-b126-40b2-bd5b-6091b380977d";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/applications/policies/update","microsoft.directory/auditLogs/allProperties/read","microsoft.directory/bitlockerKeys/key/read","microsoft.directory/entitlementManagement/allProperties/read","microsoft.directory/identityProtection/allProperties/read","microsoft.directory/identityProtection/allProperties/update","microsoft.directory/policies/create","microsoft.directory/policies/delete","microsoft.directory/policies/basic/update","microsoft.directory/policies/owners/update","microsoft.directory/policies/tenantDefault/update","microsoft.directory/conditionalAccessPolicies/create","microsoft.directory/conditionalAccessPolicies/delete","microsoft.directory/conditionalAccessPolicies/standard/read","microsoft.directory/conditionalAccessPolicies/owners/read","microsoft.directory/conditionalAccessPolicies/policyAppliedTo/read","microsoft.directory/conditionalAccessPolicies/basic/update","microsoft.directory/conditionalAccessPolicies/owners/update","microsoft.directory/conditionalAccessPolicies/tenantDefault/update","microsoft.directory/crossTenantAccessPolicies/create","microsoft.directory/crossTenantAccessPolicies/delete","microsoft.directory/crossTenantAccessPolicies/standard/read","microsoft.directory/crossTenantAccessPolicies/owners/read","microsoft.directory/crossTenantAccessPolicies/policyAppliedTo/read","microsoft.directory/crossTenantAccessPolicies/basic/update","microsoft.directory/crossTenantAccessPolicies/owners/update","microsoft.directory/crossTenantAccessPolicies/tenantDefault/update","microsoft.directory/privilegedIdentityManagement/allProperties/read","microsoft.directory/provisioningLogs/allProperties/read","microsoft.directory/servicePrincipals/policies/update","microsoft.directory/signInReports/allProperties/read","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.protectionCenter/allEntities/standard/read","microsoft.office365.protectionCenter/allEntities/basic/update","microsoft.office365.protectionCenter/attackSimulator/payload/allProperties/allTasks","microsoft.office365.protectionCenter/attackSimulator/reports/allProperties/read","microsoft.office365.protectionCenter/attackSimulator/simulation/allProperties/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "194ae4cb-b126-40b2-bd5b-6091b380977d";
            Version              = "1";
        }
        AADRoleDefinition bbb7ce90-5ece-483a-864f-8988c7872bdb
        {
            Description          = "Can manage role assignments in Azure AD, and all aspects of Privileged Identity Management.";
            DisplayName          = "Privileged Role Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "e8611ab8-c189-46e8-94e1-60213ab1f814";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/administrativeUnits/allProperties/allTasks","microsoft.directory/appRoleAssignments/allProperties/allTasks","microsoft.directory/authorizationPolicy/allProperties/allTasks","microsoft.directory/directoryRoles/allProperties/allTasks","microsoft.directory/groupsAssignableToRoles/create","microsoft.directory/groupsAssignableToRoles/delete","microsoft.directory/groupsAssignableToRoles/restore","microsoft.directory/groupsAssignableToRoles/allProperties/update","microsoft.directory/oAuth2PermissionGrants/allProperties/allTasks","microsoft.directory/privilegedIdentityManagement/allProperties/allTasks","microsoft.directory/roleAssignments/allProperties/allTasks","microsoft.directory/roleDefinitions/allProperties/allTasks","microsoft.directory/scopedRoleMemberships/allProperties/allTasks","microsoft.directory/servicePrincipals/appRoleAssignedTo/update","microsoft.directory/servicePrincipals/permissions/update","microsoft.directory/servicePrincipals/managePermissionGrantsForAll.microsoft-company-admin","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "e8611ab8-c189-46e8-94e1-60213ab1f814";
            Version              = "1";
        }
        AADRoleDefinition 44030160-64ce-4a1d-814b-b5ac203e5beb
        {
            Description          = "Can manage all aspects of the Intune product.";
            DisplayName          = "Intune Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "3a2c62db-5318-420d-8d74-23affee5d9d5";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/bitlockerKeys/key/read","microsoft.directory/contacts/create","microsoft.directory/contacts/delete","microsoft.directory/contacts/basic/update","microsoft.directory/devices/create","microsoft.directory/devices/delete","microsoft.directory/devices/disable","microsoft.directory/devices/enable","microsoft.directory/devices/basic/update","microsoft.directory/devices/extensionAttributes/update","microsoft.directory/devices/registeredOwners/update","microsoft.directory/devices/registeredUsers/update","microsoft.directory/deviceManagementPolicies/standard/read","microsoft.directory/deviceRegistrationPolicy/standard/read","microsoft.directory/groups/hiddenMembers/read","microsoft.directory/groups.security/create","microsoft.directory/groups.security/delete","microsoft.directory/groups.security/basic/update","microsoft.directory/groups.security/classification/update","microsoft.directory/groups.security/dynamicMembershipRule/update","microsoft.directory/groups.security/members/update","microsoft.directory/groups.security/owners/update","microsoft.directory/groups.security/visibility/update","microsoft.directory/users/basic/update","microsoft.directory/users/manager/update","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.intune/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "3a2c62db-5318-420d-8d74-23affee5d9d5";
            Version              = "1";
        }
        AADRoleDefinition b083476c-aa92-456f-a9a4-ebd3e5a59e33
        {
            Description          = "Can create and manage all aspects of app registrations and enterprise apps except App Proxy.";
            DisplayName          = "Cloud Application Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "158c047a-c907-4556-b7ef-446551a6b5f7";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/applications/create","microsoft.directory/applications/delete","microsoft.directory/applications/appRoles/update","microsoft.directory/applications/audience/update","microsoft.directory/applications/authentication/update","microsoft.directory/applications/basic/update","microsoft.directory/applications/credentials/update","microsoft.directory/applications/owners/update","microsoft.directory/applications/permissions/update","microsoft.directory/applications/policies/update","microsoft.directory/applications/verification/update","microsoft.directory/applications/synchronization/standard/read","microsoft.directory/applicationTemplates/instantiate","microsoft.directory/auditLogs/allProperties/read","microsoft.directory/oAuth2PermissionGrants/allProperties/allTasks","microsoft.directory/applicationPolicies/create","microsoft.directory/applicationPolicies/delete","microsoft.directory/applicationPolicies/standard/read","microsoft.directory/applicationPolicies/owners/read","microsoft.directory/applicationPolicies/policyAppliedTo/read","microsoft.directory/applicationPolicies/basic/update","microsoft.directory/applicationPolicies/owners/update","microsoft.directory/provisioningLogs/allProperties/read","microsoft.directory/servicePrincipals/create","microsoft.directory/servicePrincipals/delete","microsoft.directory/servicePrincipals/disable","microsoft.directory/servicePrincipals/enable","microsoft.directory/servicePrincipals/getPasswordSingleSignOnCredentials","microsoft.directory/servicePrincipals/synchronizationCredentials/manage","microsoft.directory/servicePrincipals/synchronizationJobs/manage","microsoft.directory/servicePrincipals/synchronizationSchema/manage","microsoft.directory/servicePrincipals/managePasswordSingleSignOnCredentials","microsoft.directory/servicePrincipals/managePermissionGrantsForAll.microsoft-application-admin","microsoft.directory/servicePrincipals/appRoleAssignedTo/update","microsoft.directory/servicePrincipals/audience/update","microsoft.directory/servicePrincipals/authentication/update","microsoft.directory/servicePrincipals/basic/update","microsoft.directory/servicePrincipals/credentials/update","microsoft.directory/servicePrincipals/owners/update","microsoft.directory/servicePrincipals/permissions/update","microsoft.directory/servicePrincipals/policies/update","microsoft.directory/servicePrincipals/tag/update","microsoft.directory/servicePrincipals/synchronization/standard/read","microsoft.directory/signInReports/allProperties/read","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "158c047a-c907-4556-b7ef-446551a6b5f7";
            Version              = "1";
        }
        AADRoleDefinition 20b8a445-2dd4-4ca5-8a0e-35463e42d1fd
        {
            Description          = "Can approve Microsoft support requests to access customer organizational data.";
            DisplayName          = "Customer LockBox Access Approver";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "5c4f9dcd-47dc-4cf7-8c9a-9e4207cbfc91";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.office365.lockbox/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "5c4f9dcd-47dc-4cf7-8c9a-9e4207cbfc91";
            Version              = "1";
        }
        AADRoleDefinition a46bba75-db7b-46a2-b126-0b2c9c6d3361
        {
            Description          = "Can manage all aspects of the Dynamics 365 product.";
            DisplayName          = "Dynamics 365 Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "44367163-eba1-44c3-98af-f5787879f96a";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.dynamics365/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "44367163-eba1-44c3-98af-f5787879f96a";
            Version              = "1";
        }
        AADRoleDefinition 71b4341b-5f0c-456a-b14a-91942f448791
        {
            Description          = "Can manage all aspects of the Power BI product.";
            DisplayName          = "Power BI Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "a9ea8996-122f-4c74-9520-8edcd192826c";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read","microsoft.powerApps.powerBI/allEntities/allTasks");
            TemplateId           = "a9ea8996-122f-4c74-9520-8edcd192826c";
            Version              = "1";
        }
        AADRoleDefinition dc2de4f2-46e7-4744-820a-6d6401070383
        {
            Description          = "Can manage conditional access capabilities.";
            DisplayName          = "Conditional Access Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "b1be1c3e-b65d-4f19-8427-f6fa0d97feb9";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/conditionalAccessPolicies/create","microsoft.directory/conditionalAccessPolicies/delete","microsoft.directory/conditionalAccessPolicies/standard/read","microsoft.directory/conditionalAccessPolicies/owners/read","microsoft.directory/conditionalAccessPolicies/policyAppliedTo/read","microsoft.directory/conditionalAccessPolicies/basic/update","microsoft.directory/conditionalAccessPolicies/owners/update","microsoft.directory/conditionalAccessPolicies/tenantDefault/update","microsoft.directory/crossTenantAccessPolicies/create","microsoft.directory/crossTenantAccessPolicies/delete","microsoft.directory/crossTenantAccessPolicies/standard/read","microsoft.directory/crossTenantAccessPolicies/owners/read","microsoft.directory/crossTenantAccessPolicies/policyAppliedTo/read","microsoft.directory/crossTenantAccessPolicies/basic/update","microsoft.directory/crossTenantAccessPolicies/owners/update","microsoft.directory/crossTenantAccessPolicies/tenantDefault/update");
            TemplateId           = "b1be1c3e-b65d-4f19-8427-f6fa0d97feb9";
            Version              = "1";
        }
        AADRoleDefinition b6772fd0-115a-4cdc-8112-e2b792771803
        {
            Description          = "Can read sign-in and audit reports.";
            DisplayName          = "Reports Reader";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "4a5d8f65-41da-4de4-8968-e035b65339cf";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/auditLogs/allProperties/read","microsoft.directory/provisioningLogs/allProperties/read","microsoft.directory/signInReports/allProperties/read","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.office365.network/performance/allProperties/read","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.usageReports/allEntities/allProperties/read","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "4a5d8f65-41da-4de4-8968-e035b65339cf";
            Version              = "1";
        }
        AADRoleDefinition 1fd71e2c-3a90-429e-9022-3687d9436692
        {
            Description          = "Can read messages and updates for their organization in Office 365 Message Center only.";
            DisplayName          = "Message Center Reader";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "790c1fb9-7f7d-4f88-86a1-ef1f95c05c1b";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.office365.messageCenter/messages/read","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "790c1fb9-7f7d-4f88-86a1-ef1f95c05c1b";
            Version              = "1";
        }
        AADRoleDefinition 4ff37c30-7c89-48c4-a57a-20b4052b9fbb
        {
            Description          = "Can manage all aspects of the Azure Information Protection product.";
            DisplayName          = "Azure Information Protection Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "7495fdc4-34c4-4d15-a289-98788ce399fd";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.azure.informationProtection/allEntities/allTasks","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "7495fdc4-34c4-4d15-a289-98788ce399fd";
            Version              = "1";
        }
        AADRoleDefinition 641431e0-55a7-47a5-911b-8379279403ae
        {
            Description          = "Can access and manage Desktop management tools and services.";
            DisplayName          = "Desktop Analytics Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "38a96431-2bdf-4b4c-8b6e-5d3d8abac1a4";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.desktopAnalytics/allEntities/allTasks");
            TemplateId           = "38a96431-2bdf-4b4c-8b6e-5d3d8abac1a4";
            Version              = "1";
        }
        AADRoleDefinition 60e8746c-facf-41bf-8906-08ec599f0e8a
        {
            Description          = "Can manage product licenses on users and groups.";
            DisplayName          = "License Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "4d6ac14f-3453-41d0-bef9-a3e0c569773a";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/groups/assignLicense","microsoft.directory/groups/reprocessLicenseAssignment","microsoft.directory/users/assignLicense","microsoft.directory/users/reprocessLicenseAssignment","microsoft.directory/users/usageLocation/update","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "4d6ac14f-3453-41d0-bef9-a3e0c569773a";
            Version              = "1";
        }
        AADRoleDefinition d4928bff-d97a-49bb-a91f-03f46cbaadba
        {
            Description          = "Limited access to manage devices in Azure AD.";
            DisplayName          = "Cloud Device Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "7698a772-787b-4ac8-901f-60d6b08affd2";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/auditLogs/allProperties/read","microsoft.directory/bitlockerKeys/key/read","microsoft.directory/devices/delete","microsoft.directory/devices/disable","microsoft.directory/devices/enable","microsoft.directory/devices/extensionAttributes/update","microsoft.directory/deviceManagementPolicies/standard/read","microsoft.directory/deviceManagementPolicies/basic/update","microsoft.directory/deviceRegistrationPolicy/standard/read","microsoft.directory/deviceRegistrationPolicy/basic/update","microsoft.directory/signInReports/allProperties/read","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks");
            TemplateId           = "7698a772-787b-4ac8-901f-60d6b08affd2";
            Version              = "1";
        }
        AADRoleDefinition 99ca06c5-f3f2-4ed9-8b0f-6af49c68a2c1
        {
            Description          = "Can access to view, set and reset authentication method information for any non-admin user.";
            DisplayName          = "Authentication Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "c4e39bd9-1100-46d3-8c65-fb160da0071f";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/users/invalidateAllRefreshTokens","microsoft.directory/users/strongAuthentication/update","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "c4e39bd9-1100-46d3-8c65-fb160da0071f";
            Version              = "1";
        }
        AADRoleDefinition fabc3bd8-4baa-42cf-b0ff-16c34c093369
        {
            Description          = "Can access to view, set and reset authentication method information for any user (admin or non-admin).";
            DisplayName          = "Privileged Authentication Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "7be44c8a-adaf-4e2a-84d6-ab2649e08a13";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/users/invalidateAllRefreshTokens","microsoft.directory/users/strongAuthentication/update","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "7be44c8a-adaf-4e2a-84d6-ab2649e08a13";
            Version              = "1";
        }
        AADRoleDefinition 5a5bf7f1-96c9-4ef4-b7d5-958e31191458
        {
            Description          = "Can manage calling and meetings features within the Microsoft Teams service.";
            DisplayName          = "Teams Communications Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "baf37b3a-610e-45da-9e62-d9d1e5e8914b";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.skypeForBusiness/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.usageReports/allEntities/allProperties/read","microsoft.office365.webPortal/allEntities/standard/read","microsoft.teams/callQuality/allProperties/read","microsoft.teams/meetings/allProperties/allTasks","microsoft.teams/voice/allProperties/allTasks");
            TemplateId           = "baf37b3a-610e-45da-9e62-d9d1e5e8914b";
            Version              = "1";
        }
        AADRoleDefinition 1e74b404-e2e0-4833-a7fe-d8067a8230cc
        {
            Description          = "Can troubleshoot communications issues within Teams using advanced tools.";
            DisplayName          = "Teams Communications Support Engineer";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "f70938a0-fc10-4177-9e90-2178f8765737";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.skypeForBusiness/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read","microsoft.teams/callQuality/allProperties/read");
            TemplateId           = "f70938a0-fc10-4177-9e90-2178f8765737";
            Version              = "1";
        }
        AADRoleDefinition 40560bac-0bbe-4d05-bc61-92ed92638216
        {
            Description          = "Can troubleshoot communications issues within Teams using basic tools.";
            DisplayName          = "Teams Communications Support Specialist";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "fcf91098-03e3-41a9-b5ba-6f0ec8188a12";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.skypeForBusiness/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read","microsoft.teams/callQuality/standard/read");
            TemplateId           = "fcf91098-03e3-41a9-b5ba-6f0ec8188a12";
            Version              = "1";
        }
        AADRoleDefinition ddb7c848-f65e-4844-8952-ffdcfc901cf3
        {
            Description          = "Can manage the Microsoft Teams service.";
            DisplayName          = "Teams Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "69091246-20e8-4a56-aa4d-066075b2a7a8";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/groups/hiddenMembers/read","microsoft.directory/groups.unified/create","microsoft.directory/groups.unified/delete","microsoft.directory/groups.unified/restore","microsoft.directory/groups.unified/basic/update","microsoft.directory/groups.unified/members/update","microsoft.directory/groups.unified/owners/update","microsoft.directory/servicePrincipals/managePermissionGrantsForGroup.microsoft-all-application-permissions","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.network/performance/allProperties/read","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.skypeForBusiness/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.usageReports/allEntities/allProperties/read","microsoft.office365.webPortal/allEntities/standard/read","microsoft.teams/allEntities/allProperties/allTasks");
            TemplateId           = "69091246-20e8-4a56-aa4d-066075b2a7a8";
            Version              = "1";
        }
        AADRoleDefinition 518acc41-5d86-4158-a9b5-04f954dbbc5a
        {
            Description          = "Has administrative access in the M365 Insights App.";
            DisplayName          = "Insights Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "eb1f4a8d-243a-41f0-9fbd-c7cdf6c5ef7c";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.insights/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "eb1f4a8d-243a-41f0-9fbd-c7cdf6c5ef7c";
            Version              = "1";
        }
        AADRoleDefinition d1d5f681-7d3d-45bd-ae03-a5be74e986d5
        {
            Description          = "Can read security messages and updates in Office 365 Message Center only.";
            DisplayName          = "Message Center Privacy Reader";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "ac16e43d-7b2d-40e0-ac05-243ff356ab5b";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.office365.messageCenter/messages/read","microsoft.office365.messageCenter/securityMessages/read","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "ac16e43d-7b2d-40e0-ac05-243ff356ab5b";
            Version              = "1";
        }
        AADRoleDefinition 888b6fa0-c593-43ca-a831-22902fb989c9
        {
            Description          = "Can create and manage all aspects of user flows.";
            DisplayName          = "External ID User Flow Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "6e591065-9bad-43ed-90f3-e9424366d2f0";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = "microsoft.directory/b2cUserFlow/allProperties/allTasks";
            TemplateId           = "6e591065-9bad-43ed-90f3-e9424366d2f0";
            Version              = "1";
        }
        AADRoleDefinition b6751496-96c9-4ad7-b2bd-6133a932b25d
        {
            Description          = "Can create and manage the attribute schema available to all user flows.";
            DisplayName          = "External ID User Flow Attribute Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "0f971eea-41eb-4569-a71e-57bb8a3eff1e";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = "microsoft.directory/b2cUserAttribute/allProperties/allTasks";
            TemplateId           = "0f971eea-41eb-4569-a71e-57bb8a3eff1e";
            Version              = "1";
        }
        AADRoleDefinition 0f1deb90-43d9-4794-881b-1dbb5d1e6e3e
        {
            Description          = "Can manage secrets for federation and encryption in the Identity Experience Framework (IEF).";
            DisplayName          = "B2C IEF Keyset Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "aaf43236-0c0d-4d5f-883a-6955382ac081";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = "microsoft.directory/b2cTrustFrameworkKeySet/allProperties/allTasks";
            TemplateId           = "aaf43236-0c0d-4d5f-883a-6955382ac081";
            Version              = "1";
        }
        AADRoleDefinition 74ea65c9-ce5d-4590-818f-3d1d89a31426
        {
            Description          = "Can create and manage trust framework policies in the Identity Experience Framework (IEF).";
            DisplayName          = "B2C IEF Policy Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "3edaf663-341e-4475-9f94-5c398ef6c070";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = "microsoft.directory/b2cTrustFrameworkPolicy/allProperties/allTasks";
            TemplateId           = "3edaf663-341e-4475-9f94-5c398ef6c070";
            Version              = "1";
        }
        AADRoleDefinition 28ea4d46-ec40-4b48-b966-d1681f150f59
        {
            Description          = "Can configure identity providers for use in direct federation.";
            DisplayName          = "External Identity Provider Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "be2f45a1-457d-42af-a067-6ec1fa63bc45";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = "microsoft.directory/identityProviders/allProperties/allTasks";
            TemplateId           = "be2f45a1-457d-42af-a067-6ec1fa63bc45";
            Version              = "1";
        }
        AADRoleDefinition 84deb8b5-d1bc-4df6-9a88-253c60f21df5
        {
            Description          = "Creates and manages compliance content.";
            DisplayName          = "Compliance Data Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "e6d1a23a-da11-4be4-9570-befc86d067a7";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/cloudAppSecurity/allProperties/allTasks","microsoft.azure.informationProtection/allEntities/allTasks","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.complianceManager/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "e6d1a23a-da11-4be4-9570-befc86d067a7";
            Version              = "1";
        }
        AADRoleDefinition 0573e46c-c6ac-4b46-ad47-248270013e24
        {
            Description          = "Creates and manages security events.";
            DisplayName          = "Security Operator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "5f2222b1-57c3-48ba-8ad5-d4759f1fde6f";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/auditLogs/allProperties/read","microsoft.directory/cloudAppSecurity/allProperties/allTasks","microsoft.directory/identityProtection/allProperties/allTasks","microsoft.directory/privilegedIdentityManagement/allProperties/read","microsoft.directory/provisioningLogs/allProperties/read","microsoft.directory/signInReports/allProperties/read","microsoft.azure.advancedThreatProtection/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.intune/allEntities/read","microsoft.office365.securityComplianceCenter/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.windows.defenderAdvancedThreatProtection/allEntities/allTasks");
            TemplateId           = "5f2222b1-57c3-48ba-8ad5-d4759f1fde6f";
            Version              = "1";
        }
        AADRoleDefinition 43338e4a-9fd0-4993-836a-db441b7add7d
        {
            Description          = "Can manage settings for Microsoft Kaizala.";
            DisplayName          = "Kaizala Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "74ef975b-6605-40af-a5d2-b9539d836353";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "74ef975b-6605-40af-a5d2-b9539d836353";
            Version              = "1";
        }
        AADRoleDefinition 8ed8d97a-0d1c-489b-bf35-e721cdc6f81c
        {
            Description          = "Can read everything that a global admin can read but not update anything.";
            DisplayName          = "Global Reader";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "f2ef992c-3afb-46b9-b7cf-a126ee74c451";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/applications/applicationProxy/read","microsoft.directory/applications/synchronization/standard/read","microsoft.directory/auditLogs/allProperties/read","microsoft.directory/bitlockerKeys/key/read","microsoft.directory/connectors/allProperties/read","microsoft.directory/connectorGroups/allProperties/read","microsoft.directory/entitlementManagement/allProperties/read","microsoft.directory/deviceManagementPolicies/standard/read","microsoft.directory/deviceRegistrationPolicy/standard/read","microsoft.directory/groups/hiddenMembers/read","microsoft.directory/organization/strongAuthentication/read","microsoft.directory/policies/standard/read","microsoft.directory/policies/owners/read","microsoft.directory/policies/policyAppliedTo/read","microsoft.directory/conditionalAccessPolicies/standard/read","microsoft.directory/conditionalAccessPolicies/owners/read","microsoft.directory/conditionalAccessPolicies/policyAppliedTo/read","microsoft.directory/provisioningLogs/allProperties/read","microsoft.directory/servicePrincipals/authentication/read","microsoft.directory/servicePrincipals/synchronization/standard/read","microsoft.directory/signInReports/allProperties/read","microsoft.directory/users/strongAuthentication/read","microsoft.directory/verifiableCredentials/configuration/contracts/cards/allProperties/read","microsoft.directory/verifiableCredentials/configuration/contracts/allProperties/read","microsoft.directory/verifiableCredentials/configuration/allProperties/read","microsoft.commerce.billing/allEntities/read","microsoft.office365.exchange/allEntities/standard/read","microsoft.office365.messageCenter/messages/read","microsoft.office365.messageCenter/securityMessages/read","microsoft.office365.network/performance/allProperties/read","microsoft.office365.protectionCenter/allEntities/allProperties/read","microsoft.office365.securityComplianceCenter/allEntities/read","microsoft.office365.usageReports/allEntities/allProperties/read","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "f2ef992c-3afb-46b9-b7cf-a126ee74c451";
            Version              = "1";
        }
        AADRoleDefinition 71bb30ed-776c-41be-a448-fa21042b23f5
        {
            Description          = "Can create and manage all aspects of Microsoft Search settings.";
            DisplayName          = "Search Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "0964bb5e-9bdb-4d7b-ac29-58e794862a40";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.office365.messageCenter/messages/read","microsoft.office365.search/content/manage","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "0964bb5e-9bdb-4d7b-ac29-58e794862a40";
            Version              = "1";
        }
        AADRoleDefinition 566e7b9a-b7ce-4db6-aa86-bf4bd3da2d8f
        {
            Description          = "Can create and manage the editorial content such as bookmarks, Q and As, locations, floorplan.";
            DisplayName          = "Search Editor";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "8835291a-918c-4fd7-a9ce-faa49f0cf7d9";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.office365.messageCenter/messages/read","microsoft.office365.search/content/manage","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "8835291a-918c-4fd7-a9ce-faa49f0cf7d9";
            Version              = "1";
        }
        AADRoleDefinition f12c2e24-dc55-4f53-9f2a-22051197043f
        {
            Description          = "Can reset passwords for non-administrators and Password Administrators.";
            DisplayName          = "Password Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "966707d0-3269-4727-9be2-8c3a10f19b9d";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/users/password/update","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "966707d0-3269-4727-9be2-8c3a10f19b9d";
            Version              = "1";
        }
        AADRoleDefinition 04702db8-d979-4561-9e6e-e26469553daa
        {
            Description          = "Can manage all aspects of printers and printer connectors.";
            DisplayName          = "Printer Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "644ef478-e28f-4e28-b9dc-3fdde9aa0b1f";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = "microsoft.azure.print/allEntities/allProperties/allTasks";
            TemplateId           = "644ef478-e28f-4e28-b9dc-3fdde9aa0b1f";
            Version              = "1";
        }
        AADRoleDefinition 3a994a28-cdc8-4236-bf3c-cfe1bb5a6525
        {
            Description          = "Can register and unregister printers and update printer status.";
            DisplayName          = "Printer Technician";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "e8cef6f1-e4bd-4ea8-bc07-4b8d950f4477";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.azure.print/connectors/allProperties/read","microsoft.azure.print/printers/allProperties/read","microsoft.azure.print/printers/register","microsoft.azure.print/printers/unregister","microsoft.azure.print/printers/basic/update");
            TemplateId           = "e8cef6f1-e4bd-4ea8-bc07-4b8d950f4477";
            Version              = "1";
        }
        AADRoleDefinition 4807aff2-f3f5-40dc-9778-3e2b3886b84d
        {
            Description          = "Can create and manage the authentication methods policy, tenant-wide MFA settings, password protection policy, and verifiable credentials.";
            DisplayName          = "Authentication Policy Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "0526716b-113d-4c15-b2c8-68e3c22b9f80";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/organization/strongAuthentication/read","microsoft.directory/organization/strongAuthentication/update","microsoft.directory/userCredentialPolicies/create","microsoft.directory/userCredentialPolicies/delete","microsoft.directory/userCredentialPolicies/standard/read","microsoft.directory/userCredentialPolicies/owners/read","microsoft.directory/userCredentialPolicies/policyAppliedTo/read","microsoft.directory/userCredentialPolicies/basic/update","microsoft.directory/userCredentialPolicies/owners/update","microsoft.directory/userCredentialPolicies/tenantDefault/update","microsoft.directory/verifiableCredentials/configuration/contracts/cards/allProperties/read","microsoft.directory/verifiableCredentials/configuration/contracts/cards/revoke","microsoft.directory/verifiableCredentials/configuration/contracts/create","microsoft.directory/verifiableCredentials/configuration/contracts/allProperties/read","microsoft.directory/verifiableCredentials/configuration/contracts/allProperties/update","microsoft.directory/verifiableCredentials/configuration/create","microsoft.directory/verifiableCredentials/configuration/delete","microsoft.directory/verifiableCredentials/configuration/allProperties/read","microsoft.directory/verifiableCredentials/configuration/allProperties/update","microsoft.azure.supportTickets/allEntities/allTasks");
            TemplateId           = "0526716b-113d-4c15-b2c8-68e3c22b9f80";
            Version              = "1";
        }
        AADRoleDefinition a0ecfccd-7e1f-4f58-9955-0bbfee97241e
        {
            Description          = "Members of this role can create/manage groups, create/manage groups settings like naming and expiration policies, and view groups activity and audit reports.";
            DisplayName          = "Groups Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "fdd7a751-b60b-444a-984c-02652fe8fa1c";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/groups/assignLicense","microsoft.directory/groups/create","microsoft.directory/groups/delete","microsoft.directory/groups/hiddenMembers/read","microsoft.directory/groups/reprocessLicenseAssignment","microsoft.directory/groups/restore","microsoft.directory/groups/basic/update","microsoft.directory/groups/classification/update","microsoft.directory/groups/dynamicMembershipRule/update","microsoft.directory/groups/groupType/update","microsoft.directory/groups/members/update","microsoft.directory/groups/onPremWriteBack/update","microsoft.directory/groups/owners/update","microsoft.directory/groups/settings/update","microsoft.directory/groups/visibility/update","microsoft.directory/servicePrincipals/managePermissionGrantsForGroup.microsoft-all-application-permissions","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "fdd7a751-b60b-444a-984c-02652fe8fa1c";
            Version              = "1";
        }
        AADRoleDefinition 58fedf01-4bd1-402b-85b2-79c11c8a7c82
        {
            Description          = "Can create and manage all aspects of Microsoft Dynamics 365, PowerApps and Microsoft Flow.";
            DisplayName          = "Power Platform Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "11648597-926c-4cf3-9c36-bcebb0ba8dcc";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.dynamics365/allEntities/allTasks","microsoft.flow/allEntities/allTasks","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read","microsoft.powerApps/allEntities/allTasks");
            TemplateId           = "11648597-926c-4cf3-9c36-bcebb0ba8dcc";
            Version              = "1";
        }
        AADRoleDefinition 07e44bec-7a51-47f7-a74f-d84cc766e543
        {
            Description          = "Can manage Azure DevOps organization policy and settings.";
            DisplayName          = "Azure DevOps Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "e3973bdf-4987-49ae-837a-ba8e231c7286";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = "microsoft.azure.devOps/allEntities/allTasks";
            TemplateId           = "e3973bdf-4987-49ae-837a-ba8e231c7286";
            Version              = "1";
        }
        AADRoleDefinition daed7eab-3883-4f90-97c7-8fd2aa758255
        {
            Description          = "Can manage AD to Azure AD cloud provisioning and federation settings.";
            DisplayName          = "Hybrid Identity Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "8ac3fc64-6eca-42ea-9e69-59f4c7b60eb2";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/applications/create","microsoft.directory/applications/delete","microsoft.directory/applications/appRoles/update","microsoft.directory/applications/audience/update","microsoft.directory/applications/authentication/update","microsoft.directory/applications/basic/update","microsoft.directory/applications/credentials/update","microsoft.directory/applications/owners/update","microsoft.directory/applications/permissions/update","microsoft.directory/applications/policies/update","microsoft.directory/applications/synchronization/standard/read","microsoft.directory/applicationTemplates/instantiate","microsoft.directory/auditLogs/allProperties/read","microsoft.directory/cloudProvisioning/allProperties/allTasks","microsoft.directory/domains/allProperties/read","microsoft.directory/domains/federation/update","microsoft.directory/organization/dirSync/update","microsoft.directory/provisioningLogs/allProperties/read","microsoft.directory/servicePrincipals/create","microsoft.directory/servicePrincipals/delete","microsoft.directory/servicePrincipals/disable","microsoft.directory/servicePrincipals/enable","microsoft.directory/servicePrincipals/synchronizationCredentials/manage","microsoft.directory/servicePrincipals/synchronizationJobs/manage","microsoft.directory/servicePrincipals/synchronizationSchema/manage","microsoft.directory/servicePrincipals/audience/update","microsoft.directory/servicePrincipals/authentication/update","microsoft.directory/servicePrincipals/basic/update","microsoft.directory/servicePrincipals/credentials/update","microsoft.directory/servicePrincipals/owners/update","microsoft.directory/servicePrincipals/permissions/update","microsoft.directory/servicePrincipals/policies/update","microsoft.directory/servicePrincipals/tag/update","microsoft.directory/servicePrincipals/synchronization/standard/read","microsoft.directory/signInReports/allProperties/read","microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.messageCenter/messages/read","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "8ac3fc64-6eca-42ea-9e69-59f4c7b60eb2";
            Version              = "1";
        }
        AADRoleDefinition db5c43f1-a7c2-46f0-8bca-008630c05723
        {
            Description          = "Can manage Office apps cloud services, including policy and settings management, and manage the ability to select, unselect and publish 'what's new' feature content to end-user's devices.";
            DisplayName          = "Office Apps Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "2b745bdf-0803-4d80-aa65-822c4493daac";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.azure.serviceHealth/allEntities/allTasks","microsoft.azure.supportTickets/allEntities/allTasks","microsoft.office365.messageCenter/messages/read","microsoft.office365.serviceHealth/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.userCommunication/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "2b745bdf-0803-4d80-aa65-822c4493daac";
            Version              = "1";
        }
        AADRoleDefinition fa33ca3c-f8f1-48dc-9482-54a14f564f37
        {
            Description          = "Can manage network locations and review enterprise network design insights for Microsoft 365 Software as a Service applications.";
            DisplayName          = "Network Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "d37c8bed-0711-4417-ba38-b4abe66ce4c2";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.office365.network/locations/allProperties/allTasks","microsoft.office365.network/performance/allProperties/read","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "d37c8bed-0711-4417-ba38-b4abe66ce4c2";
            Version              = "1";
        }
        AADRoleDefinition 2f17455d-be26-4568-bb53-a7a714956a9a
        {
            Description          = "Can view and share dashboards and insights via the M365 Insights app.";
            DisplayName          = "Insights Business Leader";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "31e939ad-9672-4796-9c2e-873181342d2d";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.insights/reports/read","microsoft.insights/programs/update");
            TemplateId           = "31e939ad-9672-4796-9c2e-873181342d2d";
            Version              = "1";
        }
        AADRoleDefinition 2ec47750-bbbd-447b-b2ae-2128b2eb28bb
        {
            Description          = "Can perform management related tasks on Teams certified devices.";
            DisplayName          = "Teams Devices Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "3d762c5a-1b6c-493f-843e-55a3b42923d4";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.office365.webPortal/allEntities/standard/read","microsoft.teams/devices/standard/read");
            TemplateId           = "3d762c5a-1b6c-493f-843e-55a3b42923d4";
            Version              = "1";
        }
        AADRoleDefinition a24edbc9-2c45-448c-a2d3-0406727550e1
        {
            Description          = "Can create and manage all aspects of attack simulation campaigns.";
            DisplayName          = "Attack Simulation Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "c430b396-e693-46cc-96f3-db01bf8bb62a";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.office365.protectionCenter/attackSimulator/payload/allProperties/allTasks","microsoft.office365.protectionCenter/attackSimulator/reports/allProperties/read","microsoft.office365.protectionCenter/attackSimulator/simulation/allProperties/allTasks");
            TemplateId           = "c430b396-e693-46cc-96f3-db01bf8bb62a";
            Version              = "1";
        }
        AADRoleDefinition 6c274855-0a8c-4531-9c08-d155b6f03e49
        {
            Description          = "Can create attack payloads that an administrator can initiate later.";
            DisplayName          = "Attack Payload Author";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "9c6df0f2-1e7c-4dc3-b195-66dfbd24aa8f";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.office365.protectionCenter/attackSimulator/payload/allProperties/allTasks","microsoft.office365.protectionCenter/attackSimulator/reports/allProperties/read");
            TemplateId           = "9c6df0f2-1e7c-4dc3-b195-66dfbd24aa8f";
            Version              = "1";
        }
        AADRoleDefinition 8c7a142d-86aa-4fa2-b537-439c4730dc89
        {
            Description          = "Can see only tenant level aggregates in Microsoft 365 Usage Analytics and Productivity Score.";
            DisplayName          = "Usage Summary Reports Reader";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "75934031-6c7e-415a-99d7-48dbd49e875e";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.office365.network/performance/allProperties/read","microsoft.office365.usageReports/allEntities/standard/read","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "75934031-6c7e-415a-99d7-48dbd49e875e";
            Version              = "1";
        }
        AADRoleDefinition 55740180-4436-4e6b-8d51-b674dc3a24e6
        {
            Description          = "Can configure knowledge network and content understanding.";
            DisplayName          = "Knowledge Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "b5a8dcf3-09d5-43a9-a639-8e29ef291470";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/groups.security/create","microsoft.directory/groups.security/createAsOwner","microsoft.directory/groups.security/delete","microsoft.directory/groups.security/basic/update","microsoft.directory/groups.security/members/update","microsoft.directory/groups.security/owners/update","microsoft.office365.knowledge/contentUnderstanding/allProperties/allTasks","microsoft.office365.knowledge/knowledgeNetwork/allProperties/allTasks","microsoft.office365.knowledge/learningSources/allProperties/allTasks","microsoft.office365.protectionCenter/sensitivityLabels/allProperties/read","microsoft.office365.sharePoint/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "b5a8dcf3-09d5-43a9-a639-8e29ef291470";
            Version              = "1";
        }
        AADRoleDefinition 206751bc-5eb6-414e-9652-fd327a08a3f1
        {
            Description          = "Has access to topic management dashboard and can manage content.";
            DisplayName          = "Knowledge Manager";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "744ec460-397e-42ad-a462-8b3f9747a02c";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/groups.security/create","microsoft.directory/groups.security/createAsOwner","microsoft.directory/groups.security/delete","microsoft.directory/groups.security/basic/update","microsoft.directory/groups.security/members/update","microsoft.directory/groups.security/owners/update","microsoft.office365.knowledge/contentUnderstanding/analytics/allProperties/read","microsoft.office365.knowledge/knowledgeNetwork/topicVisibility/allProperties/allTasks","microsoft.office365.sharePoint/allEntities/allTasks","microsoft.office365.supportTickets/allEntities/allTasks","microsoft.office365.webPortal/allEntities/standard/read");
            TemplateId           = "744ec460-397e-42ad-a462-8b3f9747a02c";
            Version              = "1";
        }
        AADRoleDefinition 9a2411ae-5263-4cc3-98fc-80017ab8c8e8
        {
            Description          = "Can manage domain names in cloud and on-premises.";
            DisplayName          = "Domain Name Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "8329153b-31d0-4727-b945-745eb3bc5f31";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/domains/allProperties/allTasks","microsoft.office365.supportTickets/allEntities/allTasks");
            TemplateId           = "8329153b-31d0-4727-b945-745eb3bc5f31";
            Version              = "1";
        }
        AADRoleDefinition 7fb3b96a-f7bb-4b37-9255-85cc11aa6e74
        {
            Description          = "Can create or update Exchange Online recipients within the Exchange Online organization.";
            DisplayName          = "Exchange Recipient Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "31392ffb-586c-42d1-9346-e59415a2cc4e";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.office365.exchange/allRecipients/allProperties/allTasks","microsoft.office365.exchange/messageTracking/allProperties/allTasks","microsoft.office365.exchange/migration/allProperties/allTasks");
            TemplateId           = "31392ffb-586c-42d1-9346-e59415a2cc4e";
            Version              = "1";
        }
        AADRoleDefinition ca812a7c-3c72-46c9-98e1-3c4826869572
        {
            Description          = "Manage access using Azure AD for identity governance scenarios.";
            DisplayName          = "Identity Governance Administrator";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Id                   = "45d8d3c5-c802-45c6-b32a-1d70b5e1e86e";
            IsEnabled            = $True;
            ResourceScopes       = @("/");
            RolePermissions      = @("microsoft.directory/accessReviews/allProperties/allTasks","microsoft.directory/entitlementManagement/allProperties/allTasks","microsoft.directory/groups/members/update","microsoft.directory/servicePrincipals/appRoleAssignedTo/update");
            TemplateId           = "45d8d3c5-c802-45c6-b32a-1d70b5e1e86e";
            Version              = "1";
        }
        AADTenantDetails 3eb56109-634c-4596-82e1-26e4bdf9215d
        {
            GlobalAdminAccount                   = $Credsglobaladmin;
            IsSingleInstance                     = "Yes";
            MarketingNotificationEmails          = @();
            SecurityComplianceNotificationMails  = @();
            SecurityComplianceNotificationPhones = @();
            TechnicalNotificationMails           = @("stockpiling@valorem.com");
        }
        EXOAcceptedDomain 32d32ca4-58a0-44c1-ba16-3cda88202e2a
        {
            DomainType           = "Authoritative";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Identity             = "Office365DSC.com";
            MatchSubDomains      = $False;
            OutboundOnly         = $False;
        }
        EXOAcceptedDomain df5d9f11-c301-4f49-8b75-345c62ad8897
        {
            DomainType           = "Authoritative";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Identity             = "$OrganizationName";
            MatchSubDomains      = $False;
            OutboundOnly         = $False;
        }
        EXOAntiPhishPolicy b5684123-970d-4e07-8cdc-728941975248
        {
            AdminDisplayName             = "Default monitoring policy";
            AuthenticationFailAction     = "MoveToJmf";
            EnableSpoofIntelligence      = $True;
            EnableUnauthenticatedSender  = $True;
            Ensure                       = "Present";
            GlobalAdminAccount           = $Credsglobaladmin;
            Identity                     = "Monitor Policy";
            PhishThresholdLevel          = "1";
            TargetedUserProtectionAction = "NoAction";
        }
        EXOAntiPhishPolicy 542cde21-3960-4dbd-9d3c-6a8dcfaf02d0
        {
            AdminDisplayName             = "";
            AuthenticationFailAction     = "MoveToJmf";
            EnableSpoofIntelligence      = $True;
            EnableUnauthenticatedSender  = $True;
            Ensure                       = "Present";
            GlobalAdminAccount           = $Credsglobaladmin;
            Identity                     = "BlahWhatever";
            PhishThresholdLevel          = "1";
            TargetedUserProtectionAction = "NoAction";
        }
        EXOAntiPhishPolicy b48c0407-6810-47fa-8323-529fa35ce18f
        {
            AdminDisplayName             = "";
            AuthenticationFailAction     = "MoveToJmf";
            EnableSpoofIntelligence      = $True;
            EnableUnauthenticatedSender  = $True;
            Ensure                       = "Present";
            GlobalAdminAccount           = $Credsglobaladmin;
            Identity                     = "Office365 AntiPhish Default";
            PhishThresholdLevel          = "1";
            TargetedUserProtectionAction = "NoAction";
        }
        EXOAntiPhishPolicy e9d6d8a0-bdba-41d0-b902-026a7d5a0f9e
        {
            AdminDisplayName             = "Default Monitoring Policy";
            AuthenticationFailAction     = "Quarantine";
            EnableSpoofIntelligence      = $True;
            EnableUnauthenticatedSender  = $True;
            Ensure                       = "Present";
            GlobalAdminAccount           = $Credsglobaladmin;
            Identity                     = "Test AntiPhish Policy";
            PhishThresholdLevel          = "1";
            TargetedUserProtectionAction = "NoAction";
        }
        EXOAntiPhishRule d36aed96-678e-42e4-91eb-e8c2b970f908
        {
            AntiPhishPolicy      = "Test AntiPhish Policy";
            Comments             = "This is a test Rule";
            Enabled              = $True;
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Identity             = "Test AntiPhish Rule";
            Priority             = 0;
            SentToMemberOf       = @("O365DSCCore@$OrganizationName");
        }
        EXOAntiPhishRule 686621ef-961c-4981-875d-5373b64bc3c6
        {
            AntiPhishPolicy      = "Our Rule";
            Enabled              = $True;
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Identity             = "Test Rule";
            Priority             = 1;
            SentToMemberOf       = @("msteams_bb15d4@$OrganizationName");
        }
        EXOApplicationAccessPolicy 0d2fe755-80ad-46aa-a547-0ce902e0a621
        {
            AccessRight          = "DenyAccess";
            AppID                = "3dbc2ae1-7198-45ed-9f9f-d86ba3ec35b5";
            Description          = "Engineering Group Policy";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Identity             = "e7a80bcf-696e-40ca-8775-a7f85fbb3ebc\3dbc2ae1-7198-45ed-9f9f-d86ba3ec35b5:S-1-5-21-902579997-1556480549-349026968-16740603;ae274f0a-9c9c-496a-8dd3-8a57640d93aa";
            PolicyScopeGroupId   = "Nik.Charlebois";
        }
        EXOApplicationAccessPolicy cf792fa9-7d1e-43ae-80a5-2a55f6f48228
        {
            AccessRight          = "DenyAccess";
            AppID                = "6ac794ca-2697-4137-8754-d2a78ae47d93";
            Description          = "Engineering Group Policy";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Identity             = "e7a80bcf-696e-40ca-8775-a7f85fbb3ebc\6ac794ca-2697-4137-8754-d2a78ae47d93:S-1-5-21-902579997-1556480549-349026968-16740603;ae274f0a-9c9c-496a-8dd3-8a57640d93aa";
            PolicyScopeGroupId   = "Nik.Charlebois";
        }
        EXOAvailabilityAddressSpace 9b5bdbbf-80ab-4ff9-bd3c-8aeb56f051ba
        {
            AccessMethod          = "OrgWideFB";
            Ensure                = "Present";
            ForestName            = "example.$OrganizationName";
            GlobalAdminAccount    = $Credsglobaladmin;
            Identity              = "example.$OrganizationName";
            TargetAutodiscoverEpr = "https://contoso.com/autodiscover/autodiscover.xml";
        }
        EXOAvailabilityConfig 9867f707-757b-4270-a1c5-f37e9aee1b2b
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            OrgWideAccount       = "AdminNonMFA";
        }
        EXOCASMailboxPlan 66f5a55c-0683-473b-9e83-e1f0a7d798e7
        {
            ActiveSyncEnabled    = $True;
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Identity             = "ExchangeOnline-c8b87060-79a8-4f43-a862-c4ff7080319e";
            ImapEnabled          = $True;
            OwaMailboxPolicy     = "OwaMailboxPolicy-Default";
            PopEnabled           = $True;
        }
        EXOCASMailboxPlan fa3a00ca-28d7-46db-8fa8-159db909d07a
        {
            ActiveSyncEnabled    = $True;
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Identity             = "ExchangeOnlineEnterprise-bceb4a40-5721-4705-84bd-22fc11c30e46";
            ImapEnabled          = $True;
            OwaMailboxPolicy     = "OwaMailboxPolicy-Default";
            PopEnabled           = $True;
        }
        EXOCASMailboxPlan 643eeda0-7303-4d67-afd7-4dc43c95b477
        {
            ActiveSyncEnabled    = $True;
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Identity             = "ExchangeOnlineDeskless-f97ebb32-f8c4-4542-9e8c-984689631ee7";
            ImapEnabled          = $False;
            OwaMailboxPolicy     = "OwaMailboxPolicy-Default";
            PopEnabled           = $True;
        }
        EXOCASMailboxPlan 4ed40c03-6937-42f2-a60d-f164eb0e2c61
        {
            ActiveSyncEnabled    = $True;
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Identity             = "ExchangeOnlineEssentials-759100cd-4fb6-46db-80ae-bb0ef4bd92b0";
            ImapEnabled          = $True;
            OwaMailboxPolicy     = "OwaMailboxPolicy-Default";
            PopEnabled           = $True;
        }
        EXOClientAccessRule e24a5d81-7ec2-4c38-a14c-0f8209e335f6
        {
            Action                               = "AllowAccess";
            AnyOfAuthenticationTypes             = @();
            AnyOfClientIPAddressesOrRanges       = @();
            AnyOfProtocols                       = @("RemotePowerShell");
            Enabled                              = $True;
            Ensure                               = "Present";
            ExceptAnyOfAuthenticationTypes       = @();
            ExceptAnyOfClientIPAddressesOrRanges = @();
            ExceptAnyOfProtocols                 = @();
            ExceptUsernameMatchesAnyOfPatterns   = @();
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "Always Allow Remote PowerShell";
            Priority                             = 1;
            UsernameMatchesAnyOfPatterns         = @();
        }
        EXODkimSigningConfig ecb7e37b-3aaa-4c46-954c-0b34ad276481
        {
            AdminDisplayName       = "";
            BodyCanonicalization   = "Relaxed";
            Enabled                = $True;
            Ensure                 = "Present";
            GlobalAdminAccount     = $Credsglobaladmin;
            HeaderCanonicalization = "Relaxed";
            Identity               = "$OrganizationName";
            KeySize                = 1024;
        }
        EXOEmailAddressPolicy 12daecb3-eacc-417b-9e26-b3cb30b9cc6f
        {
            EnabledEmailAddressTemplates      = @("SMTP:@$OrganizationName");
            EnabledPrimarySMTPAddressTemplate = "@$OrganizationName";
            Ensure                            = "Present";
            GlobalAdminAccount                = $Credsglobaladmin;
            ManagedByFilter                   = "";
            Name                              = "Default Policy";
            Priority                          = "Lowest";
        }
        EXOHostedConnectionFilterPolicy 1a171e1d-e9c8-44d5-936a-b41c669209e3
        {
            AdminDisplayName     = "";
            EnableSafeList       = $False;
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Identity             = "Default";
            IPAllowList          = @();
            IPBlockList          = @();
            MakeDefault          = $False;
        }
        EXOHostedContentFilterPolicy 16cd4614-f8f2-46f9-9604-8fcb32b96b6b
        {
            AddXHeaderValue                      = "";
            AdminDisplayName                     = "";
            AllowedSenderDomains                 = @();
            AllowedSenders                       = @();
            BlockedSenderDomains                 = @();
            BlockedSenders                       = @();
            BulkSpamAction                       = "MoveToJmf";
            BulkThreshold                        = 7;
            DownloadLink                         = $False;
            EnableEndUserSpamNotifications       = $False;
            EnableLanguageBlockList              = $False;
            EnableRegionBlockList                = $False;
            EndUserSpamNotificationCustomSubject = "";
            EndUserSpamNotificationFrequency     = 3;
            EndUserSpamNotificationLanguage      = "Default";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            HighConfidenceSpamAction             = "MoveToJmf";
            Identity                             = "Integration Filter Policy";
            IncreaseScoreWithBizOrInfoUrls       = "Off";
            IncreaseScoreWithImageLinks          = "Off";
            IncreaseScoreWithNumericIps          = "Off";
            IncreaseScoreWithRedirectToOtherPort = "Off";
            InlineSafetyTipsEnabled              = $True;
            LanguageBlockList                    = @();
            MakeDefault                          = $False;
            MarkAsSpamBulkMail                   = "On";
            MarkAsSpamEmbedTagsInHtml            = "Off";
            MarkAsSpamEmptyMessages              = "Off";
            MarkAsSpamFormTagsInHtml             = "Off";
            MarkAsSpamFramesInHtml               = "Off";
            MarkAsSpamFromAddressAuthFail        = "Off";
            MarkAsSpamJavaScriptInHtml           = "Off";
            MarkAsSpamNdrBackscatter             = "Off";
            MarkAsSpamObjectTagsInHtml           = "Off";
            MarkAsSpamSensitiveWordList          = "Off";
            MarkAsSpamSpfRecordHardFail          = "Off";
            MarkAsSpamWebBugsInHtml              = "Off";
            ModifySubjectValue                   = "";
            PhishSpamAction                      = "MoveToJmf";
            PhishZapEnabled                      = $True;
            QuarantineRetentionPeriod            = 15;
            RedirectToRecipients                 = @();
            RegionBlockList                      = @();
            SpamAction                           = "MoveToJmf";
            SpamZapEnabled                       = $True;
            TestModeAction                       = "None";
            TestModeBccToRecipients              = @();
        }
        EXOHostedContentFilterPolicy 94cde730-933f-4234-bc79-5d28a59f5b2f
        {
            AddXHeaderValue                      = "";
            AdminDisplayName                     = "This is a spam policy for our integration tests";
            AllowedSenderDomains                 = @();
            AllowedSenders                       = @();
            BlockedSenderDomains                 = @();
            BlockedSenders                       = @();
            BulkSpamAction                       = "MoveToJmf";
            BulkThreshold                        = 7;
            DownloadLink                         = $False;
            EnableEndUserSpamNotifications       = $False;
            EnableLanguageBlockList              = $False;
            EnableRegionBlockList                = $False;
            EndUserSpamNotificationCustomSubject = "";
            EndUserSpamNotificationFrequency     = 3;
            EndUserSpamNotificationLanguage      = "Default";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            HighConfidenceSpamAction             = "MoveToJmf";
            Identity                             = "Integration Spam Policy";
            IncreaseScoreWithBizOrInfoUrls       = "Off";
            IncreaseScoreWithImageLinks          = "Off";
            IncreaseScoreWithNumericIps          = "Off";
            IncreaseScoreWithRedirectToOtherPort = "Off";
            InlineSafetyTipsEnabled              = $True;
            LanguageBlockList                    = @();
            MakeDefault                          = $False;
            MarkAsSpamBulkMail                   = "On";
            MarkAsSpamEmbedTagsInHtml            = "Off";
            MarkAsSpamEmptyMessages              = "Off";
            MarkAsSpamFormTagsInHtml             = "Off";
            MarkAsSpamFramesInHtml               = "Off";
            MarkAsSpamFromAddressAuthFail        = "Off";
            MarkAsSpamJavaScriptInHtml           = "Off";
            MarkAsSpamNdrBackscatter             = "Off";
            MarkAsSpamObjectTagsInHtml           = "Off";
            MarkAsSpamSensitiveWordList          = "Off";
            MarkAsSpamSpfRecordHardFail          = "Off";
            MarkAsSpamWebBugsInHtml              = "Off";
            ModifySubjectValue                   = "";
            PhishSpamAction                      = "Quarantine";
            PhishZapEnabled                      = $True;
            QuarantineRetentionPeriod            = 30;
            RedirectToRecipients                 = @();
            RegionBlockList                      = @();
            SpamAction                           = "MoveToJmf";
            SpamZapEnabled                       = $True;
            TestModeAction                       = "None";
            TestModeBccToRecipients              = @();
        }
        EXOHostedContentFilterPolicy 70b89d32-88ed-410e-93dd-a7d8e743dcc8
        {
            AddXHeaderValue                      = "";
            AdminDisplayName                     = "";
            AllowedSenderDomains                 = @();
            AllowedSenders                       = @();
            BlockedSenderDomains                 = @();
            BlockedSenders                       = @();
            BulkSpamAction                       = "MoveToJmf";
            BulkThreshold                        = 7;
            DownloadLink                         = $False;
            EnableEndUserSpamNotifications       = $False;
            EnableLanguageBlockList              = $False;
            EnableRegionBlockList                = $False;
            EndUserSpamNotificationCustomSubject = "";
            EndUserSpamNotificationFrequency     = 3;
            EndUserSpamNotificationLanguage      = "Default";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            HighConfidenceSpamAction             = "MoveToJmf";
            Identity                             = "Default";
            IncreaseScoreWithBizOrInfoUrls       = "Off";
            IncreaseScoreWithImageLinks          = "Off";
            IncreaseScoreWithNumericIps          = "Off";
            IncreaseScoreWithRedirectToOtherPort = "Off";
            InlineSafetyTipsEnabled              = $True;
            LanguageBlockList                    = @();
            MakeDefault                          = $True;
            MarkAsSpamBulkMail                   = "On";
            MarkAsSpamEmbedTagsInHtml            = "Off";
            MarkAsSpamEmptyMessages              = "Off";
            MarkAsSpamFormTagsInHtml             = "Off";
            MarkAsSpamFramesInHtml               = "Off";
            MarkAsSpamFromAddressAuthFail        = "Off";
            MarkAsSpamJavaScriptInHtml           = "Off";
            MarkAsSpamNdrBackscatter             = "Off";
            MarkAsSpamObjectTagsInHtml           = "Off";
            MarkAsSpamSensitiveWordList          = "Off";
            MarkAsSpamSpfRecordHardFail          = "Off";
            MarkAsSpamWebBugsInHtml              = "Off";
            ModifySubjectValue                   = "";
            PhishSpamAction                      = "MoveToJmf";
            PhishZapEnabled                      = $True;
            QuarantineRetentionPeriod            = 15;
            RedirectToRecipients                 = @();
            RegionBlockList                      = @();
            SpamAction                           = "MoveToJmf";
            SpamZapEnabled                       = $True;
            TestModeAction                       = "None";
            TestModeBccToRecipients              = @();
        }
        EXOHostedContentFilterRule be049d4d-e6f9-4c6c-b79a-17c8c170d688
        {
            Enabled                   = $True;
            Ensure                    = "Present";
            GlobalAdminAccount        = $Credsglobaladmin;
            HostedContentFilterPolicy = "Integration Spam Policy";
            Identity                  = "Integration Spam Policy";
            Priority                  = 0;
            RecipientDomainIs         = @("$OrganizationName");
        }
        EXOHostedOutboundSpamFilterPolicy 7d5ac06d-8f84-40b1-9866-a397a74fbe14
        {
            AdminDisplayName                          = "";
            BccSuspiciousOutboundAdditionalRecipients = @();
            BccSuspiciousOutboundMail                 = $False;
            Ensure                                    = "Present";
            GlobalAdminAccount                        = $Credsglobaladmin;
            Identity                                  = "Default";
            NotifyOutboundSpam                        = $False;
            NotifyOutboundSpamRecipients              = @();
        }
        EXOHostedOutboundSpamFilterPolicy 1df2422e-4adf-411d-9f7d-74b00ba1d6aa
        {
            AdminDisplayName                          = "";
            BccSuspiciousOutboundAdditionalRecipients = @("adminnonmfa@$OrganizationName");
            BccSuspiciousOutboundMail                 = $True;
            Ensure                                    = "Present";
            GlobalAdminAccount                        = $Credsglobaladmin;
            Identity                                  = "Our New Outbound Policy";
            NotifyOutboundSpam                        = $False;
            NotifyOutboundSpamRecipients              = @();
        }
        EXOInboundConnector 1bd61d58-b601-41de-87d7-b715d0fd9868
        {
            AssociatedAcceptedDomains    = @();
            CloudServicesMailEnabled     = $False;
            Comment                      = "";
            ConnectorSource              = "Default";
            ConnectorType                = "Partner";
            Enabled                      = $True;
            Ensure                       = "Present";
            GlobalAdminAccount           = $Credsglobaladmin;
            Identity                     = "Nik's Connector";
            RequireTls                   = $False;
            RestrictDomainsToCertificate = $False;
            RestrictDomainsToIPAddresses = $False;
            SenderDomains                = @("smtp:nikcharlebois.com;1");
            SenderIPAddresses            = @();
            TreatMessagesAsInternal      = $False;
        }
        EXOMailTips a9b10929-37cb-43d2-ac8d-990e2f3b5ff9
        {
            Ensure                                = "Present";
            GlobalAdminAccount                    = $Credsglobaladmin;
            MailTipsAllTipsEnabled                = $True;
            MailTipsExternalRecipientsTipsEnabled = $False;
            MailTipsGroupMetricsEnabled           = $True;
            MailTipsLargeAudienceThreshold        = 25;
            MailTipsMailboxSourcedTipsEnabled     = $True;
            Organization                          = "$OrganizationName";
        }
        EXOMalwareFilterPolicy 4bbb5d75-6764-4ccd-ab49-f6a402f99240
        {
            Action                                 = "DeleteMessage";
            CustomNotifications                    = $False;
            EnableExternalSenderAdminNotifications = $False;
            EnableExternalSenderNotifications      = $False;
            EnableFileFilter                       = $False;
            EnableInternalSenderAdminNotifications = $False;
            EnableInternalSenderNotifications      = $False;
            Ensure                                 = "Present";
            FileTypes                              = @("ace","ani","app","docm","exe","jar","reg","scr","vbe","vbs");
            GlobalAdminAccount                     = $Credsglobaladmin;
            Identity                               = "Default";
            ZapEnabled                             = $True;
        }
        EXOMalwareFilterPolicy 8dfa7cab-5bed-44db-aca4-0c677dacd894
        {
            Action                                 = "DeleteAttachmentAndUseCustomAlert";
            CustomAlertText                        = "blba";
            CustomNotifications                    = $False;
            EnableExternalSenderAdminNotifications = $False;
            EnableExternalSenderNotifications      = $False;
            EnableFileFilter                       = $False;
            EnableInternalSenderAdminNotifications = $False;
            EnableInternalSenderNotifications      = $False;
            Ensure                                 = "Present";
            FileTypes                              = @("ace","ani","app","docm","exe","jar","reg","scr","vbe","vbs");
            GlobalAdminAccount                     = $Credsglobaladmin;
            Identity                               = "Nik";
            ZapEnabled                             = $True;
        }
        EXOMalwareFilterPolicy 566df843-7654-4209-b2b0-59dd18b5f712
        {
            Action                                 = "DeleteMessage";
            CustomNotifications                    = $False;
            EnableExternalSenderAdminNotifications = $False;
            EnableExternalSenderNotifications      = $False;
            EnableFileFilter                       = $True;
            EnableInternalSenderAdminNotifications = $False;
            EnableInternalSenderNotifications      = $False;
            Ensure                                 = "Present";
            FileTypes                              = @("ace","ani","app","docm","exe","jar","reg","scr","vbe","vbs");
            GlobalAdminAccount                     = $Credsglobaladmin;
            Identity                               = "Our Malwayre Policy";
            ZapEnabled                             = $True;
        }
        EXOMalwareFilterPolicy 5dce7063-ca37-405d-bc84-c9577373b01c
        {
            Action                                 = "DeleteAttachmentAndUseDefaultAlert";
            CustomNotifications                    = $False;
            EnableExternalSenderAdminNotifications = $False;
            EnableExternalSenderNotifications      = $False;
            EnableFileFilter                       = $False;
            EnableInternalSenderAdminNotifications = $False;
            EnableInternalSenderNotifications      = $False;
            Ensure                                 = "Present";
            FileTypes                              = @("ace","ani","app","docm","exe","jar","reg","scr","vbe","vbs");
            GlobalAdminAccount                     = $Credsglobaladmin;
            Identity                               = "Nik2";
            ZapEnabled                             = $True;
        }
        EXOMalwareFilterPolicy 2e5feffd-18c3-480e-80e6-b5b86bbd4654
        {
            Action                                 = "DeleteAttachmentAndUseDefaultAlert";
            CustomNotifications                    = $False;
            EnableExternalSenderAdminNotifications = $False;
            EnableExternalSenderNotifications      = $False;
            EnableFileFilter                       = $False;
            EnableInternalSenderAdminNotifications = $False;
            EnableInternalSenderNotifications      = $False;
            Ensure                                 = "Present";
            FileTypes                              = @("ace","ani","app","docm","exe","jar","reg","scr","vbe","vbs");
            GlobalAdminAccount                     = $Credsglobaladmin;
            Identity                               = "Nik3";
            ZapEnabled                             = $True;
        }
        EXOMalwareFilterRule 6540920e-89e6-41dd-a70a-982d91f3c61e
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Identity             = "Our Malwayre Policy";
            MalwareFilterPolicy  = "Our Malwayre Policy";
            Priority             = 0;
            SentTo               = @("Bob.Houle@$OrganizationName");
        }
        EXOMobileDeviceMailboxPolicy 7f26bb34-f397-47be-b4b1-d5e889707c71
        {
            AllowApplePushNotifications              = $True;
            AllowBluetooth                           = "Allow";
            AllowBrowser                             = $True;
            AllowCamera                              = $True;
            AllowConsumerEmail                       = $True;
            AllowDesktopSync                         = $True;
            AllowExternalDeviceManagement            = $False;
            AllowGooglePushNotifications             = $True;
            AllowHTMLEmail                           = $True;
            AllowInternetSharing                     = $True;
            AllowIrDA                                = $True;
            AllowMicrosoftPushNotifications          = $True;
            AllowMobileOTAUpdate                     = $True;
            AllowNonProvisionableDevices             = $True;
            AllowPOPIMAPEmail                        = $True;
            AllowRemoteDesktop                       = $True;
            AllowSimplePassword                      = $True;
            AllowSMIMEEncryptionAlgorithmNegotiation = "AllowAnyAlgorithmNegotiation";
            AllowSMIMESoftCerts                      = $True;
            AllowStorageCard                         = $True;
            AllowTextMessaging                       = $True;
            AllowUnsignedApplications                = $True;
            AllowUnsignedInstallationPackages        = $True;
            AllowWiFi                                = $True;
            AlphanumericPasswordRequired             = $False;
            ApprovedApplicationList                  = @();
            AttachmentsEnabled                       = $True;
            DeviceEncryptionEnabled                  = $False;
            DevicePolicyRefreshInterval              = "Unlimited";
            Ensure                                   = "Present";
            GlobalAdminAccount                       = $Credsglobaladmin;
            IrmEnabled                               = $True;
            IsDefault                                = $True;
            MaxAttachmentSize                        = "Unlimited";
            MaxCalendarAgeFilter                     = "All";
            MaxEmailAgeFilter                        = "All";
            MaxEmailBodyTruncationSize               = "Unlimited";
            MaxEmailHTMLBodyTruncationSize           = "Unlimited";
            MaxInactivityTimeLock                    = "Unlimited";
            MaxPasswordFailedAttempts                = "Unlimited";
            MinPasswordComplexCharacters             = 1;
            Name                                     = "Default";
            PasswordEnabled                          = $False;
            PasswordExpiration                       = "Unlimited";
            PasswordHistory                          = 0;
            PasswordRecoveryEnabled                  = $False;
            RequireDeviceEncryption                  = $False;
            RequireEncryptedSMIMEMessages            = $False;
            RequireEncryptionSMIMEAlgorithm          = "TripleDES";
            RequireManualSyncWhenRoaming             = $False;
            RequireSignedSMIMEAlgorithm              = "SHA1";
            RequireSignedSMIMEMessages               = $False;
            RequireStorageCardEncryption             = $False;
            UnapprovedInROMApplicationList           = @();
            UNCAccessEnabled                         = $True;
            WSSAccessEnabled                         = $True;
        }
        EXOMobileDeviceMailboxPolicy fa4ffd6a-1d83-4a19-ae1e-dadf90a6ef0b
        {
            AllowApplePushNotifications              = $True;
            AllowBluetooth                           = "Allow";
            AllowBrowser                             = $True;
            AllowCamera                              = $True;
            AllowConsumerEmail                       = $True;
            AllowDesktopSync                         = $True;
            AllowExternalDeviceManagement            = $False;
            AllowGooglePushNotifications             = $True;
            AllowHTMLEmail                           = $True;
            AllowInternetSharing                     = $True;
            AllowIrDA                                = $True;
            AllowMicrosoftPushNotifications          = $True;
            AllowMobileOTAUpdate                     = $True;
            AllowNonProvisionableDevices             = $False;
            AllowPOPIMAPEmail                        = $True;
            AllowRemoteDesktop                       = $True;
            AllowSimplePassword                      = $True;
            AllowSMIMEEncryptionAlgorithmNegotiation = "AllowAnyAlgorithmNegotiation";
            AllowSMIMESoftCerts                      = $True;
            AllowStorageCard                         = $True;
            AllowTextMessaging                       = $True;
            AllowUnsignedApplications                = $True;
            AllowUnsignedInstallationPackages        = $True;
            AllowWiFi                                = $True;
            AlphanumericPasswordRequired             = $False;
            ApprovedApplicationList                  = @();
            AttachmentsEnabled                       = $True;
            DeviceEncryptionEnabled                  = $False;
            DevicePolicyRefreshInterval              = "Unlimited";
            Ensure                                   = "Present";
            GlobalAdminAccount                       = $Credsglobaladmin;
            IrmEnabled                               = $True;
            IsDefault                                = $False;
            MaxAttachmentSize                        = "Unlimited";
            MaxCalendarAgeFilter                     = "All";
            MaxEmailAgeFilter                        = "All";
            MaxEmailBodyTruncationSize               = "Unlimited";
            MaxEmailHTMLBodyTruncationSize           = "Unlimited";
            MaxInactivityTimeLock                    = "Unlimited";
            MaxPasswordFailedAttempts                = "Unlimited";
            MinPasswordComplexCharacters             = 1;
            MinPasswordLength                        = 4;
            Name                                     = "Nik's Super Policy";
            PasswordEnabled                          = $False;
            PasswordExpiration                       = "Unlimited";
            PasswordHistory                          = 0;
            PasswordRecoveryEnabled                  = $False;
            RequireDeviceEncryption                  = $False;
            RequireEncryptedSMIMEMessages            = $False;
            RequireEncryptionSMIMEAlgorithm          = "TripleDES";
            RequireManualSyncWhenRoaming             = $False;
            RequireSignedSMIMEAlgorithm              = "SHA1";
            RequireSignedSMIMEMessages               = $False;
            RequireStorageCardEncryption             = $False;
            UnapprovedInROMApplicationList           = @();
            UNCAccessEnabled                         = $True;
            WSSAccessEnabled                         = $True;
        }
        EXOOrganizationConfig 2df3f715-2eb6-46ad-a6f8-abd9c65bbdc4
        {
            ActivityBasedAuthenticationTimeoutEnabled                 = $True;
            ActivityBasedAuthenticationTimeoutInterval                = "06:00:00";
            ActivityBasedAuthenticationTimeoutWithSingleSignOnEnabled = $True;
            AppsForOfficeEnabled                                      = $True;
            AsyncSendEnabled                                          = $True;
            AuditDisabled                                             = $False;
            AutoExpandingArchive                                      = $False;
            BookingsEnabled                                           = $True;
            BookingsPaymentsEnabled                                   = $False;
            BookingsSocialSharingRestricted                           = $False;
            ByteEncoderTypeFor7BitCharsets                            = 0;
            ConnectorsActionableMessagesEnabled                       = $True;
            ConnectorsEnabled                                         = $True;
            ConnectorsEnabledForOutlook                               = $True;
            ConnectorsEnabledForSharepoint                            = $True;
            ConnectorsEnabledForTeams                                 = $True;
            ConnectorsEnabledForYammer                                = $True;
            DefaultGroupAccessType                                    = "Private";
            DefaultPublicFolderDeletedItemRetention                   = "30.00:00:00";
            DefaultPublicFolderIssueWarningQuota                      = "13 KB (13,312 bytes)";
            DefaultPublicFolderMaxItemSize                            = "13 KB (13,312 bytes)";
            DefaultPublicFolderMovedItemRetention                     = "7.00:00:00";
            DefaultPublicFolderProhibitPostQuota                      = "13 KB (13,312 bytes)";
            DirectReportsGroupAutoCreationEnabled                     = $False;
            DistributionGroupNameBlockedWordsList                     = @();
            DistributionGroupNamingPolicy                             = "";
            ElcProcessingDisabled                                     = $False;
            EndUserDLUpgradeFlowsDisabled                             = $False;
            EwsAllowEntourage                                         = $False;
            EwsAllowMacOutlook                                        = $False;
            EwsAllowOutlook                                           = $False;
            EwsEnabled                                                = $False;
            ExchangeNotificationEnabled                               = $True;
            ExchangeNotificationRecipients                            = @();
            FocusedInboxOn                                            = $False;
            GlobalAdminAccount                                        = $Credsglobaladmin;
            IPListBlocked                                             = @();
            IsSingleInstance                                          = "Yes";
            LeanPopoutEnabled                                         = $False;
            LinkPreviewEnabled                                        = $True;
            MailTipsAllTipsEnabled                                    = $True;
            MailTipsExternalRecipientsTipsEnabled                     = $False;
            MailTipsGroupMetricsEnabled                               = $True;
            MailTipsLargeAudienceThreshold                            = 25;
            MailTipsMailboxSourcedTipsEnabled                         = $True;
            OAuth2ClientProfileEnabled                                = $True;
            OutlookMobileGCCRestrictionsEnabled                       = $False;
            OutlookPayEnabled                                         = $True;
            PublicComputersDetectionEnabled                           = $False;
            PublicFoldersEnabled                                      = "Local";
            PublicFolderShowClientControl                             = $False;
            ReadTrackingEnabled                                       = $False;
            RemotePublicFolderMailboxes                               = @();
            SmtpActionableMessagesEnabled                             = $True;
            VisibleMeetingUpdateProperties                            = "Location,AllProperties:15";
            WebPushNotificationsDisabled                              = $False;
            WebSuggestedRepliesDisabled                               = $False;
        }
        EXOOwaMailboxPolicy 56ead903-776a-4d0f-a9d4-f9bed5298de0
        {
            ActionForUnknownFileAndMIMETypes                     = "Allow";
            ActiveSyncIntegrationEnabled                         = $True;
            AdditionalStorageProvidersAvailable                  = $True;
            AllAddressListsEnabled                               = $True;
            AllowCopyContactsToDeviceAddressBook                 = $True;
            AllowedFileTypes                                     = @(".rpmsg",".xlsx",".xlsm",".xlsb",".tiff",".pptx",".pptm",".ppsx",".ppsm",".docx",".docm",".zip",".xls",".wmv",".wma",".wav",".vsd",".txt",".tif",".rtf",".pub",".ppt",".png",".pdf",".one",".mp3",".jpg",".gif",".doc",".bmp",".avi");
            AllowedMimeTypes                                     = @("image/jpeg","image/png","image/gif","image/bmp");
            BlockedFileTypes                                     = @(".settingcontent-ms",".printerexport",".appcontent-ms",".appref-ms",".vsmacros",".website",".msh2xml",".msh1xml",".diagcab",".webpnp",".ps2xml",".ps1xml",".mshxml",".gadget",".theme",".psdm1",".mhtml",".cdxml",".xbap",".vhdx",".pyzw",".pssc",".psd1",".psc2",".psc1",".msh2",".msh1",".jnlp",".aspx",".appx",".xnk",".xll",".wsh",".wsf",".wsc",".wsb",".vsw",".vst",".vss",".vhd",".vbs",".vbp",".vbe",".url",".udl",".tmp",".shs",".shb",".sct",".scr",".scf",".reg",".pyz",".pyw",".pyo",".pyc",".pst",".ps2",".ps1",".prg",".prf",".plg",".pif",".pcd",".ops",".msu",".mst",".msp",".msi",".msh",".msc",".mht",".mdz",".mdw",".mdt",".mde",".mdb",".mda",".mcf",".maw",".mav",".mau",".mat",".mas",".mar",".maq",".mam",".mag",".maf",".mad",".lnk",".ksh",".jse",".jar",".its",".isp",".ins",".inf",".htc",".hta",".hpj",".hlp",".grp",".fxp",".exe",".der",".csh",".crt",".cpl",".com",".cnt",".cmd",".chm",".cer",".bat",".bas",".asx",".asp",".app",".apk",".adp",".ade",".ws",".vb",".py",".pl",".js");
            BlockedMimeTypes                                     = @("application/x-javascript","application/javascript","application/msaccess","x-internet-signup","text/javascript","application/prg","application/hta","text/scriplet");
            ClassicAttachmentsEnabled                            = $True;
            ConditionalAccessPolicy                              = "Off";
            DefaultTheme                                         = "";
            DirectFileAccessOnPrivateComputersEnabled            = $True;
            DirectFileAccessOnPublicComputersEnabled             = $True;
            DisplayPhotosEnabled                                 = $True;
            Ensure                                               = "Present";
            ExplicitLogonEnabled                                 = $True;
            ExternalImageProxyEnabled                            = $True;
            ForceSaveAttachmentFilteringEnabled                  = $False;
            ForceSaveFileTypes                                   = @(".vsmacros",".ps2xml",".ps1xml",".mshxml",".gadget",".psc2",".psc1",".html",".aspx",".wsh",".wsf",".wsc",".vsw",".vst",".vss",".vbs",".vbe",".url",".tmp",".swf",".spl",".shs",".shb",".sct",".scr",".scf",".reg",".pst",".ps2",".ps1",".prg",".prf",".plg",".pif",".pcd",".ops",".mst",".msp",".msi",".msh",".msc",".mdz",".mdw",".mdt",".mde",".mdb",".mda",".maw",".mav",".mau",".mat",".mas",".mar",".maq",".mam",".mag",".maf",".mad",".lnk",".ksh",".jse",".its",".isp",".ins",".inf",".htm",".hta",".hlp",".fxp",".exe",".dir",".dcr",".csh",".crt",".cpl",".com",".cmd",".chm",".cer",".bat",".bas",".asx",".asp",".app",".adp",".ade",".ws",".vb",".js");
            ForceSaveMimeTypes                                   = @("Application/x-shockwave-flash","Application/octet-stream","Application/futuresplash","Application/x-director","text/html");
            ForceWacViewingFirstOnPrivateComputers               = $False;
            ForceWacViewingFirstOnPublicComputers                = $False;
            FreCardsEnabled                                      = $True;
            GlobalAddressListEnabled                             = $True;
            GlobalAdminAccount                                   = $Credsglobaladmin;
            GroupCreationEnabled                                 = $True;
            InstantMessagingEnabled                              = $True;
            InstantMessagingType                                 = "Ocs";
            InterestingCalendarsEnabled                          = $True;
            IRMEnabled                                           = $True;
            IsDefault                                            = $True;
            JournalEnabled                                       = $True;
            LocalEventsEnabled                                   = $False;
            LogonAndErrorLanguage                                = 0;
            Name                                                 = "OwaMailboxPolicy-Default";
            NotesEnabled                                         = $True;
            NpsSurveysEnabled                                    = $True;
            OnSendAddinsEnabled                                  = $False;
            OrganizationEnabled                                  = $True;
            OutboundCharset                                      = "AutoDetect";
            OutlookBetaToggleEnabled                             = $True;
            OWALightEnabled                                      = $True;
            PersonalAccountCalendarsEnabled                      = $True;
            PhoneticSupportEnabled                               = $False;
            PlacesEnabled                                        = $True;
            PremiumClientEnabled                                 = $True;
            PrintWithoutDownloadEnabled                          = $True;
            PublicFoldersEnabled                                 = $True;
            RecoverDeletedItemsEnabled                           = $True;
            ReferenceAttachmentsEnabled                          = $True;
            RemindersAndNotificationsEnabled                     = $True;
            ReportJunkEmailEnabled                               = $True;
            RulesEnabled                                         = $True;
            SatisfactionEnabled                                  = $True;
            SaveAttachmentsToCloudEnabled                        = $True;
            SearchFoldersEnabled                                 = $True;
            SetPhotoEnabled                                      = $True;
            SetPhotoURL                                          = "";
            SignaturesEnabled                                    = $True;
            SkipCreateUnifiedGroupCustomSharepointClassification = $True;
            TeamSnapCalendarsEnabled                             = $True;
            TextMessagingEnabled                                 = $True;
            ThemeSelectionEnabled                                = $True;
            UMIntegrationEnabled                                 = $True;
            UseGB18030                                           = $False;
            UseISO885915                                         = $False;
            UserVoiceEnabled                                     = $True;
            WacEditingEnabled                                    = $True;
            WacExternalServicesEnabled                           = $True;
            WacOMEXEnabled                                       = $False;
            WacViewingOnPrivateComputersEnabled                  = $True;
            WacViewingOnPublicComputersEnabled                   = $True;
            WeatherEnabled                                       = $True;
            WebPartsFrameOptionsType                             = "SameOrigin";
        }
        EXORemoteDomain e826de6c-83cb-4c6d-a614-6ff1017a0ff9
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "t-systems.be";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "t-systems.be";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $True;
            Name                                 = "t-systems.be";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain 720d4308-f50e-491c-9449-32a7254d7849
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "t-systems.co.hu";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "t-systems.co.hu";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $True;
            Name                                 = "t-systems.co.hu";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain ae571b99-c246-4bb2-8330-69a815d5e833
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "t-systems.co.za";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "t-systems.co.za";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $True;
            Name                                 = "t-systems.co.za";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain 7c0f7590-deb0-490d-bf41-868540ba5742
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "t-systems.com.au";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "t-systems.com.au";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $True;
            Name                                 = "t-systems.com.au";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain badd4dc0-2476-4078-8256-2143f301a2f9
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "t-systems.com.sg";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "t-systems.com.sg";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $True;
            Name                                 = "t-systems.com.sg";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain 294ce3fe-4dbd-4f1e-9448-4422e21acd9b
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "t-systems.com.tr";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "t-systems.com.tr";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $True;
            Name                                 = "t-systems.com.tr";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain 2638c69b-c2d8-48cf-a922-db35facae84c
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "t-systems.de";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "t-systems.de";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $True;
            Name                                 = "t-systems.de";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain f06b7765-4625-4e81-ad40-36ded71f924b
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "t-systems.dk";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "t-systems.dk";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $True;
            Name                                 = "t-systems.dk";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain 68ee4368-c915-4f69-9650-44b38ce64e2c
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "t-systems.es";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "t-systems.es";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $True;
            Name                                 = "t-systems.es";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain 0bbc2e71-9bc2-4f71-b4ac-3bf0c26995b5
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "t-systems.it";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "t-systems.it";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $True;
            Name                                 = "t-systems.it";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain 2292497f-5b6f-4fd8-a1a9-837bb5a2638f
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "t-systems.nl";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "t-systems.nl";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $True;
            Name                                 = "t-systems.nl";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain 104dbbcb-8706-43ff-a721-3f2b44160504
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "t-systems.ru";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "t-systems.ru";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $True;
            Name                                 = "t-systems.ru";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain baa4aff6-aeca-44a0-946b-6da2d1e43d04
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "t-systems.sk";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "t-systems.sk";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $True;
            Name                                 = "t-systems.sk";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain 57098601-1136-454e-9f43-290087776198
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "sn.t-online.net";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "sn.t-online.net";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $True;
            Name                                 = "sn.t-online.net";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain 3690f802-20c0-4366-a63f-86a71ce91447
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "t-systems.co.uk";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "t-systems.co.uk";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $True;
            Name                                 = "t-systems.co.uk";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain a669c066-c122-4e01-a447-26a4a4db1b3c
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "t-mobile.at";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "t-mobile.at";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $True;
            Name                                 = "t-mobile.at";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain a72cac91-2cf0-439a-8a25-705e5b386a5d
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "t-mobile.co.uk";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "t-mobile.co.uk";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $True;
            Name                                 = "t-mobile.co.uk";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain 952ec3ea-bb18-45c5-a1f9-e19e86db02d1
        {
            AllowedOOFType                       = "External";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "nikcharlebois.com";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "nikcharlebois.com";
            IsInternal                           = $False;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $False;
            Name                                 = "nikcharlebois.com";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain 72319acb-aaaa-488c-846b-67e05b9d4091
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "t-mobile.nl";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "t-mobile.nl";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $True;
            Name                                 = "t-mobile.nl";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain b791328e-62aa-4488-9510-8594104184ee
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "*.telekom.de";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "Hybrid Domain - telekom.de";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $True;
            Name                                 = "Hybrid Domain - telekom.de";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain 26df578b-abd7-4cb4-afdc-b34ea4b1c194
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "*.t-systems.com";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "Hybrid Domain - t-systems.com";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $True;
            Name                                 = "Hybrid Domain - t-systems.com";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain 6502480e-5a9a-46cb-8f0f-161b5f941a90
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "t-punkt.de";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "t-punkt.de";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $True;
            Name                                 = "t-punkt.de";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain ef2975e6-3d62-4faa-b22e-5d4cd79a6c5b
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "external.t-mobile.net";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "external.t-mobile.net";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $True;
            Name                                 = "external.t-mobile.net";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain 0a44aa24-06fe-4da1-9d2c-74604ad557b2
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "instantemail.t-mobile.de";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "instantemail.t-mobile.de";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $True;
            Name                                 = "instantemail.t-mobile.de";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain bfe445d6-4845-424c-b32c-da01dedd3640
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "t-d1.de";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "t-d1.de";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $True;
            Name                                 = "t-d1.de";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain f568f164-23c6-4d36-807a-73388fcaf370
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "t-data.de";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "t-data.de";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $True;
            Name                                 = "t-data.de";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain 59168582-e324-47df-acfa-95a7c7de56c4
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "t-mobil.de";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "t-mobil.de";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $True;
            Name                                 = "t-mobil.de";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain 3674e7de-2a2a-4398-9877-8e9fbfe2991a
        {
            AllowedOOFType                       = "External";
            AutoForwardEnabled                   = $False;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "iso-8859-1";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "*";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "Default";
            IsInternal                           = $False;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $False;
            Name                                 = "Default";
            NonMimeCharacterSet                  = "iso-8859-1";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain 5a0f65d8-9de8-43ce-9157-dbcfc18c03c5
        {
            AllowedOOFType                       = "External";
            AutoForwardEnabled                   = $False;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "Microsoft365DSC.com";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "MyRemoteDomain";
            IsInternal                           = $False;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $False;
            Name                                 = "MyRemoteDomain";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain 98b35ff2-1911-42e6-afad-20c626c468b6
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "t-systems.com.pl";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "t-systems.com.pl";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $True;
            Name                                 = "t-systems.com.pl";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain 7c822bf0-b701-409d-b39b-bb537e0f151b
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "t-systems.fi";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "t-systems.fi";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $True;
            Name                                 = "t-systems.fi";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain 829ef0ba-7406-4df5-8f7d-bd3a09e2b3a4
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "t-systems.pl";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "t-systems.pl";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $True;
            Name                                 = "t-systems.pl";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain 2ce08d6d-8c67-48eb-9cf2-f5d953f01f86
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "t-systems.ch";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "t-systems.ch";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $True;
            Name                                 = "t-systems.ch";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain e638b98c-5d97-478b-90e0-d96d76b9ca4e
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "external.t-mobile.de";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "external.t-mobile.de";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $True;
            Name                                 = "external.t-mobile.de";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain 71b7b27c-b12a-4def-8340-fc5f7f530b42
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "it-services.hu";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "it-services.hu";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $False;
            Name                                 = "it-services.hu";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain d6833dd4-fbd6-415d-b35f-311b29fbb210
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "volkswagen.de";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "volkswagen.de";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $False;
            Name                                 = "volkswagen.de";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain b922ae0f-895d-4f66-ae4e-588f79881cd9
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "c3pdm.com";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "c3pdm.com";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $False;
            Name                                 = "c3pdm.com";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain 4fc49582-7178-460a-ac5d-2e5a5bbda7a5
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "*.dtag.de";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "dtag.de";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $False;
            Name                                 = "dtag.de";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain c011bcc6-26db-4b33-ac35-92450b7091e6
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "mail1.ac2.dsh.de";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "mail1.ac2.dsh.de";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $False;
            Name                                 = "mail1.ac2.dsh.de";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain b0c791f2-77b3-4f46-8f4b-ed3c7f704599
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "detecon.com";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "detecon.com";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $False;
            Name                                 = "detecon.com";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain 05a0ef47-8fa6-4545-94f9-0d9e46e92cc0
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "getmail.detemobil.de";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "getmail.detemobil.de";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $False;
            Name                                 = "getmail.detemobil.de";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain 2a7e80f1-42b7-4b6e-88cd-cb5f22340833
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "t-systems.fr";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "t-systems.fr";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $False;
            Name                                 = "t-systems.fr";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain 3955a431-137d-41e9-bd83-ffa609acf054
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "bcdtravel.de";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "bcdtravel.de";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $False;
            Name                                 = "bcdtravel.de";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain 43bbfbf8-2620-4310-a870-2a61b96ad69f
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "t-systems-dmc.com";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "t-systems-dmc.com";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $False;
            Name                                 = "t-systems-dmc.com";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain f84e373e-58a6-4859-bfbd-6c86bd6531e8
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "telekom.hu";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "telekom.hu";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $False;
            Name                                 = "telekom.hu";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain 252ab255-81d6-4228-a037-e2c064d75e3a
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "telekom-healthcare.com";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "Hybrid Domain-telekom-healthcare.com";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $False;
            Name                                 = "Hybrid Domain-telekom-healthcare.com";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain 7f0af9a6-8c6f-434a-a10d-753a66a9297c
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "vivento-cs.de";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "Hybrid Domain-vivento-cs.de";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $False;
            Name                                 = "Hybrid Domain-vivento-cs.de";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain 1a499391-72a2-414a-aef3-f4bc3c466ae2
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "t-mobile.com";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "t-mobile.com";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $True;
            Name                                 = "t-mobile.com";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain 859be512-b562-4f8d-8f3f-6ccb22ab9735
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "t-mobile.cz";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "t-mobile.cz";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $True;
            Name                                 = "t-mobile.cz";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain 9f532171-6ecf-4721-9321-45b586b496aa
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "t-mobile.de";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "t-mobile.de";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $True;
            Name                                 = "t-mobile.de";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain 1082bd5a-0962-402a-a32b-3de2d570397c
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "t-mobile.net";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "t-mobile.net";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $True;
            Name                                 = "t-mobile.net";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain db8b3233-1660-4823-b221-a78ad154e06c
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "t-motion.net";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "t-motion.net";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $True;
            Name                                 = "t-motion.net";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain 183ae04c-3248-43e8-baf5-a0649449ebfb
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "t-nova.de";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "t-nova.de";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $True;
            Name                                 = "t-nova.de";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain 4112cb34-a887-428f-83da-aef265805080
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "t-online.net";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "t-online.net";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $True;
            Name                                 = "t-online.net";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain 249e5090-9b64-42ac-ad4b-57a10b0be5f7
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "t-systems-spb.ru";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "t-systems-spb.ru";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $True;
            Name                                 = "t-systems-spb.ru";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain af5d9089-fd98-46b3-b008-a41f5e1b735a
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "t-systems.at";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "t-systems.at";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $True;
            Name                                 = "t-systems.at";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXORemoteDomain 4c18f811-3859-422f-ad4a-4d4816e63eaf
        {
            AllowedOOFType                       = "InternalLegacy";
            AutoForwardEnabled                   = $True;
            AutoReplyEnabled                     = $True;
            ByteEncoderTypeFor7BitCharsets       = "Undefined";
            CharacterSet                         = "";
            ContentType                          = "MimeHtmlText";
            DeliveryReportEnabled                = $True;
            DisplaySenderName                    = $True;
            DomainName                           = "t-systems.com.br";
            Ensure                               = "Present";
            GlobalAdminAccount                   = $Credsglobaladmin;
            Identity                             = "t-systems.com.br";
            IsInternal                           = $True;
            LineWrapSize                         = "Unlimited";
            MeetingForwardNotificationEnabled    = $True;
            Name                                 = "t-systems.com.br";
            NonMimeCharacterSet                  = "";
            PreferredInternetCodePageForShiftJis = "Undefined";
            TargetDeliveryDomain                 = $False;
            TrustedMailInboundEnabled            = $False;
            TrustedMailOutboundEnabled           = $False;
            UseSimpleDisplayName                 = $False;
        }
        EXOSharedMailbox 82a541db-275d-40f1-9902-d4cf5df27f8e
        {
            Aliases              = @();
            DisplayName          = "O365DSCSharedMailbox";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            PrimarySMTPAddress   = "O365DSCSharedMailbox@$OrganizationName";
        }
        EXOSharingPolicy c605d841-6314-4a4a-a557-6193d08c0180
        {
            Default              = $True;
            Domains              = @("*:CalendarSharingFreeBusySimple","Anonymous:CalendarSharingFreeBusyReviewer");
            Enabled              = $True;
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Default Sharing Policy";
        }
        EXOTransportRule fc1c8979-7efa-4594-9f4d-e2d69993bb4a
        {
            ApplyOME                                  = $False;
            AttachmentHasExecutableContent            = $False;
            AttachmentIsPasswordProtected             = $False;
            AttachmentIsUnsupported                   = $False;
            AttachmentProcessingLimitExceeded         = $False;
            Comments                                  = "
";
            DeleteMessage                             = $False;
            Ensure                                    = "Present";
            ExceptIfAttachmentHasExecutableContent    = $False;
            ExceptIfAttachmentIsPasswordProtected     = $False;
            ExceptIfAttachmentIsUnsupported           = $False;
            ExceptIfAttachmentProcessingLimitExceeded = $False;
            ExceptIfHasNoClassification               = $False;
            ExceptIfHasSenderOverride                 = $False;
            GlobalAdminAccount                        = $Credsglobaladmin;
            HasNoClassification                       = $False;
            HasSenderOverride                         = $False;
            Mode                                      = "Enforce";
            ModerateMessageByManager                  = $False;
            ModerateMessageByUser                     = @("AdminNonMFA@$OrganizationName");
            Name                                      = "Bob";
            Priority                                  = 0;
            RemoveOME                                 = $False;
            RemoveOMEv2                               = $False;
            RouteMessageOutboundRequireTls            = $False;
            RuleErrorAction                           = "Ignore";
            RuleSubType                               = "None";
            SenderAddressLocation                     = "Header";
            SentTo                                    = @("Bob.Houle@$OrganizationName");
            StopRuleProcessing                        = $False;
        }
        O365AdminAuditLogConfig 3e4334bc-53fe-437e-b00c-dd106febde82
        {
            Ensure                          = "Present";
            GlobalAdminAccount              = $Credsglobaladmin;
            IsSingleInstance                = "Yes";
            UnifiedAuditLogIngestionEnabled = "Enabled";
        }
        O365OrgCustomizationSetting ed3ced46-8e01-47ed-96e3-3e25a191e849
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            IsSingleInstance     = "Yes";
        }
        ODSettings 9b1194e9-ce64-4183-9eb7-77deb4df9496
        {
            BlockMacSync                              = $False;
            DisableReportProblemDialog                = $False;
            DomainGuids                               = @();
            Ensure                                    = "Present";
            ExcludedFileExtensions                    = @();
            GlobalAdminAccount                        = $Credsglobaladmin;
            GrooveBlockOption                         = "OptOut";
            IsSingleInstance                          = "Yes";
            NotificationsInOneDriveForBusinessEnabled = $True;
            NotifyOwnersWhenInvitationsAccepted       = $True;
            ODBAccessRequests                         = "Unspecified";
            ODBMembersCanShare                        = "Unspecified";
            OneDriveForGuestsEnabled                  = $False;
            OneDriveStorageQuota                      = 1048576;
            OrphanedPersonalSitesRetentionPeriod      = 30;
        }
        SCAuditConfigurationPolicy ee59c4f4-be04-42da-a8f1-94348b752551
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Workload             = "SharePoint";
        }
        SCAuditConfigurationPolicy f1213624-b5a8-485b-bd29-dff119a4146b
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Workload             = "Exchange";
        }
        SCAuditConfigurationPolicy 533b9eb1-cdc1-4f66-8ad9-6a43fee041a0
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Workload             = "SharePoint";
        }
        SCCaseHoldPolicy d903878d-dbc5-45f5-9031-0b33732c2976
        {
            Case                 = "Integration Case";
            Comment              = "This is a test for integration";
            Enabled              = $True;
            Ensure               = "Present";
            ExchangeLocation     = "John.Smith@$OrganizationName";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Integration Hold";
            PublicFolderLocation = "All";
        }
        SCCaseHoldRule 81108dd8-c1da-4f5b-a0c8-b54da1a0f860
        {
            Comment              = "This is a demo rule";
            ContentMatchQuery    = "filename:2016 budget filetype:xlsx";
            Disabled             = $False;
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Integration Hold";
            Policy               = "Integration Hold";
        }
        SCComplianceCase 14336a5e-d404-4783-ba60-1dba88ce123a
        {
            Description          = "";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Test Case Search";
            Status               = "Active";
        }
        SCComplianceCase 1c64b9c1-36ce-4771-9414-8639da2d926d
        {
            Description          = "This Case is generated by the Integration Tests";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Integration Case";
            Status               = "Active";
        }
        SCComplianceCase d8732872-f7aa-4ac3-8a0b-893c12e24c37
        {
            Description          = "";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "New Case";
            Status               = "Closed";
        }
        SCComplianceCase 5aa5a386-44d1-4511-a439-4eaf453e8c3b
        {
            Description          = "";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "TestMissing";
            Status               = "Active";
        }
        SCComplianceCase 4587e5d6-b216-4ed8-9e5f-a222f1e02de3
        {
            Description          = "";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Fabrikam Litigation";
            Status               = "Active";
        }
        SCComplianceCase 0d041c76-2aa1-4949-8dea-46141f05ae82
        {
            Description          = "";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Dummy Legislation";
            Status               = "Active";
        }
        SCComplianceSearch 957c659b-9233-478e-b966-2628e826b073
        {
            AllowNotFoundExchangeLocationsEnabled = $False;
            Case                                  = "";
            ContentMatchQuery                     = "nik";
            Description                           = "";
            Ensure                                = "Present";
            ExchangeLocation                      = @("All");
            GlobalAdminAccount                    = $Credsglobaladmin;
            HoldNames                             = @();
            Language                              = "iv";
            Name                                  = "Search Credit Card Numbers";
            PublicFolderLocation                  = @("All");
        }
        SCComplianceSearch 8a606423-68ca-48d0-a819-0ea392599458
        {
            AllowNotFoundExchangeLocationsEnabled = $False;
            Case                                  = "";
            ContentMatchQuery                     = "(c:c)(date=2019-03-20..2019-03-21)(participants=James.McKinsey@discounttires.com)(participants=brett.larue@discounttires.com)";
            Description                           = "";
            Ensure                                = "Present";
            ExchangeLocation                      = @("All");
            ExchangeLocationExclusion             = @();
            GlobalAdminAccount                    = $Credsglobaladmin;
            HoldNames                             = @();
            Language                              = "iv";
            Name                                  = "investigation 2";
        }
        SCComplianceSearch 813fa5ca-51b8-48af-b78e-99c54262def5
        {
            AllowNotFoundExchangeLocationsEnabled = $False;
            Case                                  = "";
            ContentMatchQuery                     = "(c:c)(date=2019-03-20..2019-03-21)(participants=James.McKinsey@discounttires.com)(participants=brett.larue@discounttires.com)";
            Description                           = "";
            Ensure                                = "Present";
            ExchangeLocation                      = @("All");
            ExchangeLocationExclusion             = @();
            GlobalAdminAccount                    = $Credsglobaladmin;
            HoldNames                             = @();
            Language                              = "iv";
            Name                                  = "investigation 32";
        }
        SCComplianceSearch f665f871-ae33-4f90-8dda-0530cb79888c
        {
            AllowNotFoundExchangeLocationsEnabled = $False;
            Case                                  = "";
            ContentMatchQuery                     = "o";
            Description                           = "";
            Ensure                                = "Present";
            ExchangeLocation                      = @("All");
            ExchangeLocationExclusion             = @();
            GlobalAdminAccount                    = $Credsglobaladmin;
            HoldNames                             = @();
            Language                              = "iv";
            Name                                  = "PIN Search";
            PublicFolderLocation                  = @("All");
        }
        SCComplianceSearch c9e139eb-60fb-4c18-8035-584be6076a2a
        {
            AllowNotFoundExchangeLocationsEnabled = $False;
            Case                                  = "Test Case Search";
            ContentMatchQuery                     = "g";
            Description                           = "";
            Ensure                                = "Present";
            ExchangeLocation                      = @("All");
            ExchangeLocationExclusion             = @();
            GlobalAdminAccount                    = $Credsglobaladmin;
            HoldNames                             = @();
            Language                              = "iv";
            Name                                  = "All Location Search";
            PublicFolderLocation                  = @("All");
            SharePointLocation                    = @("All");
            SharePointLocationExclusion           = @();
        }
        SCComplianceSearch 36252cc7-a7f0-4cbc-9db8-0299d4360ddc
        {
            AllowNotFoundExchangeLocationsEnabled = $False;
            Case                                  = "Integration Case";
            ContentMatchQuery                     = "o";
            Description                           = "";
            Ensure                                = "Present";
            ExchangeLocation                      = @("All");
            GlobalAdminAccount                    = $Credsglobaladmin;
            HoldNames                             = @();
            Language                              = "iv";
            Name                                  = "Integration Compliance Search";
            PublicFolderLocation                  = @("All");
            SharePointLocation                    = @("All");
        }
        SCComplianceSearch a5d0f581-a12a-450f-807c-207cf62ed9d4
        {
            AllowNotFoundExchangeLocationsEnabled = $False;
            Case                                  = "Integration Case";
            ContentMatchQuery                     = "the";
            Description                           = "";
            Ensure                                = "Present";
            ExchangeLocation                      = @("All");
            GlobalAdminAccount                    = $Credsglobaladmin;
            HoldNames                             = @();
            Language                              = "iv";
            Name                                  = "Integration Compliance Search - SPO";
            PublicFolderLocation                  = @("All");
            SharePointLocation                    = @("All");
        }
        SCComplianceSearch a40bb01d-062c-4228-bfaf-92b5d14f40e3
        {
            AllowNotFoundExchangeLocationsEnabled = $False;
            Case                                  = "Integration Case";
            ContentMatchQuery                     = "the";
            Description                           = "";
            Ensure                                = "Present";
            ExchangeLocation                      = @("All");
            GlobalAdminAccount                    = $Credsglobaladmin;
            HoldNames                             = @();
            Language                              = "iv";
            Name                                  = "Integration Compliance Search - EXO";
            PublicFolderLocation                  = @("All");
        }
        SCComplianceSearch fb11cf02-8c3d-4ef5-aaa6-595f5001a313
        {
            AllowNotFoundExchangeLocationsEnabled = $False;
            Case                                  = "New Case";
            ContentMatchQuery                     = "";
            Description                           = "";
            Ensure                                = "Present";
            GlobalAdminAccount                    = $Credsglobaladmin;
            HoldNames                             = @();
            Language                              = "iv";
            Name                                  = "Search Social Security";
            SharePointLocation                    = @("All");
        }
        SCComplianceSearch fff74a95-698e-4d13-86aa-afa202006aa9
        {
            AllowNotFoundExchangeLocationsEnabled = $False;
            Case                                  = "Dummy Legislation";
            ContentMatchQuery                     = "adfasdf(c:c)(subjecttitle=Test)";
            Description                           = "";
            Ensure                                = "Present";
            ExchangeLocation                      = @("All");
            ExchangeLocationExclusion             = @();
            GlobalAdminAccount                    = $Credsglobaladmin;
            HoldNames                             = @();
            Language                              = "iv";
            Name                                  = "Nik Search";
            PublicFolderLocation                  = @("All");
            SharePointLocation                    = @("All");
            SharePointLocationExclusion           = @();
        }
        SCComplianceTag 6445e333-4b9a-45da-bff2-7708e86be927
        {
            Comment              = "asdf";
            Ensure               = "Present";
            FilePlanProperty     = MSFT_SCFilePlanProperty{
                FilePlanPropertyCitation = 'asdf'
                FilePlanPropertyAuthority = 'Nik Authority'
                FilePlanPropertyCategory = 'My Category'
                FilePlanPropertyDepartment = 'Human resources'
                FilePlanPropertyReferenceId = 'Nik File Plan'
                FilePlanPropertySubcategory = 'NikSubCategory'
            };
            GlobalAdminAccount   = $Credsglobaladmin;
            IsRecordLabel        = $False;
            Name                 = "Test";
            Notes                = "";
            Regulatory           = $False;
            RetentionAction      = "Keep";
            RetentionDuration    = "2555";
            RetentionType        = "CreationAgeInDays";
        }
        SCComplianceTag 74ea9a8d-b5f4-4dda-82f9-451066ae0299
        {
            Comment              = "This is a Demo Tag";
            Ensure               = "Present";
            FilePlanProperty     = MSFT_SCFilePlanProperty{
                FilePlanPropertyCitation = ''
                FilePlanPropertyReferenceId = ''
                FilePlanPropertyCategory = 'Accounts receivable'
                FilePlanPropertyAuthority = ''
                FilePlanPropertyDepartment = 'Human resources'
                FilePlanPropertySubcategory = ''
            };
            GlobalAdminAccount   = $Credsglobaladmin;
            IsRecordLabel        = $False;
            Name                 = "DemoTag";
            Notes                = "";
            Regulatory           = $False;
            RetentionAction      = "Keep";
            RetentionDuration    = "1025";
            RetentionType        = "ModificationAgeInDays";
        }
        SCComplianceTag c79d99fc-69b5-4fd1-bf28-2e04c0dbe044
        {
            Comment              = "";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            IsRecordLabel        = $False;
            Name                 = "Reviewers";
            Notes                = "";
            Regulatory           = $False;
            RetentionAction      = "KeepAndDelete";
            RetentionDuration    = "2555";
            RetentionType        = "CreationAgeInDays";
            ReviewerEmail        = @("Yorick.Kuijs@$OrganizationName","Nik.Charlebois@$OrganizationName");
        }
        SCDLPCompliancePolicy f8cff125-4ec0-4741-8b83-0717daac0cb9
        {
            Comment                         = "Test Policy";
            Ensure                          = "Present";
            ExchangeSenderMemberOf          = @();
            ExchangeSenderMemberOfException = @();
            GlobalAdminAccount              = $Credsglobaladmin;
            Mode                            = "Enable";
            Name                            = "MyDLPPolicy";
            OneDriveLocationException       = @();
            Priority                        = 0;
            SharePointLocation              = "https://o365dsc.sharepoint.com/sites/Classic";
            SharePointLocationException     = @();
            TeamsLocationException          = @();
        }
        SCDLPCompliancePolicy 08f795a9-7a14-4e84-bc63-dcf280f4d476
        {
            Comment                         = "";
            Ensure                          = "Present";
            ExchangeSenderMemberOf          = @();
            ExchangeSenderMemberOfException = @();
            GlobalAdminAccount              = $Credsglobaladmin;
            Mode                            = "TestWithoutNotifications";
            Name                            = "CRA - DLP";
            OneDriveLocationException       = @();
            Priority                        = 1;
            SharePointLocationException     = @();
            TeamsLocation                   = "All";
            TeamsLocationException          = @();
        }
        SCDLPCompliancePolicy f51f8488-79b8-4255-bcd2-373f78256a5d
        {
            Comment                         = "";
            Ensure                          = "Present";
            ExchangeLocation                = "All";
            ExchangeSenderMemberOf          = @();
            ExchangeSenderMemberOfException = @();
            GlobalAdminAccount              = $Credsglobaladmin;
            Mode                            = "TestWithoutNotifications";
            Name                            = "Canada Health Information Act (HIA)";
            OneDriveLocation                = "All";
            OneDriveLocationException       = @();
            Priority                        = 2;
            SharePointLocation              = "All";
            SharePointLocationException     = @();
            TeamsLocation                   = "All";
            TeamsLocationException          = @();
        }
        SCDLPCompliancePolicy e4a70170-13d8-425d-8acc-d8b966a6c3f5
        {
            Comment                         = "Tadam!";
            Ensure                          = "Present";
            ExchangeLocation                = "All";
            ExchangeSenderMemberOf          = @();
            ExchangeSenderMemberOfException = @();
            GlobalAdminAccount              = $Credsglobaladmin;
            Mode                            = "Enable";
            Name                            = "Nik's Policy";
            OneDriveLocation                = "All";
            OneDriveLocationException       = @();
            Priority                        = 3;
            SharePointLocation              = "All";
            SharePointLocationException     = @();
            TeamsLocation                   = "All";
            TeamsLocationException          = @();
        }
        SCDLPCompliancePolicy a4dfa0c4-a65d-4247-aa27-ab7bf30f6a2c
        {
            Comment                         = "Create a custom policy from scratch. You will choose the type of content to protect and how you want to protect it.";
            Ensure                          = "Present";
            ExchangeLocation                = "All";
            ExchangeSenderMemberOf          = @();
            ExchangeSenderMemberOfException = @();
            GlobalAdminAccount              = $Credsglobaladmin;
            Mode                            = "Enable";
            Name                            = "SIT Policy";
            OneDriveLocation                = "All";
            OneDriveLocationException       = @();
            Priority                        = 4;
            SharePointLocation              = "All";
            SharePointLocationException     = @();
            TeamsLocation                   = "All";
            TeamsLocationException          = @();
        }
        SCDLPComplianceRule 03209672-8fa5-43eb-84a4-52f5ca450ba4
        {
            AccessScope                         = "NotInOrganization";
            BlockAccess                         = $False;
            ContentContainsSensitiveInformation = MSFT_SCDLPSensitiveInformation
            {
                name = 'Credit Card Number'
                id = '50842eb7-edc8-4019-85dd-5a5c1f2bb085'
                maxconfidence = '100'
                minconfidence = '85'
                classifiertype = 'Content'
                mincount = '1'
                maxcount = '9'
            }
;
            Disabled                            = $False;
            Ensure                              = "Present";
            GlobalAdminAccount                  = $Credsglobaladmin;
            Name                                = "Low volume of content detected CRA - DLP";
            NotifyUser                          = @("SiteAdmin","LastModifier","Owner");
            Policy                              = "CRA - DLP";
            ReportSeverityLevel                 = "Low";
        }
        SCDLPComplianceRule b9558571-8c22-4493-ac8e-822066840093
        {
            AccessScope                         = "NotInOrganization";
            BlockAccess                         = $False;
            ContentContainsSensitiveInformation = MSFT_SCDLPSensitiveInformation
            {
                name = 'Credit Card Number'
                id = '50842eb7-edc8-4019-85dd-5a5c1f2bb085'
                maxconfidence = '100'
                minconfidence = '85'
                classifiertype = 'Content'
                mincount = '10'
                maxcount = '-1'
            }
;
            Disabled                            = $False;
            Ensure                              = "Present";
            GenerateIncidentReport              = @("SiteAdmin");
            GlobalAdminAccount                  = $Credsglobaladmin;
            IncidentReportContent               = @("DocumentLastModifier","Detections","Severity","DetectionDetails","OriginalContent");
            Name                                = "High volume of content detected CRA - DLP";
            NotifyUser                          = @("SiteAdmin","LastModifier","Owner");
            Policy                              = "CRA - DLP";
            ReportSeverityLevel                 = "High";
        }
        SCDLPComplianceRule a3dd2032-ca62-4bac-88a0-80b4c84d7788
        {
            BlockAccess                         = $True;
            BlockAccessScope                    = "All";
            ContentContainsSensitiveInformation = @(MSFT_SCDLPSensitiveInformation
            {
                name = 'U.S. Social Security Number (SSN)'
                id = 'a44669fe-0d48-453d-a9b1-2cc83f2cba77'
                maxconfidence = '100'
                minconfidence = '-1'
                classifiertype = 'Content'
                mincount = '1'
                maxcount = '-1'
            }
MSFT_SCDLPSensitiveInformation
            {
                name = 'Azure DocumentDB Auth Key'
                id = '0f587d92-eb28-44a9-bd1c-90f2892b47aa'
                maxconfidence = '100'
                minconfidence = '85'
                classifiertype = 'Content'
                mincount = '1'
                maxcount = '-1'
            }
);
            Disabled                            = $False;
            Ensure                              = "Present";
            GlobalAdminAccount                  = $Credsglobaladmin;
            Name                                = "MyDLPRule";
            Policy                              = "MyDLPPolicy";
            ReportSeverityLevel                 = "Low";
        }
        SCDLPComplianceRule fe906664-6b43-4d6a-8089-4ba444fbb247
        {
            AccessScope                         = "NotInOrganization";
            BlockAccess                         = $False;
            ContentContainsSensitiveInformation = MSFT_SCDLPSensitiveInformation
            {
                name = 'Argentina National Identity (DNI) Number'
                id = 'eefbb00e-8282-433c-8620-8f1da3bffdb2'
                maxconfidence = '100'
                minconfidence = '75'
                classifiertype = 'Content'
                mincount = '1'
                maxcount = '9'
            }
;
            Disabled                            = $False;
            Ensure                              = "Present";
            GlobalAdminAccount                  = $Credsglobaladmin;
            Name                                = "Low volume of content detected Nik's Policy";
            NotifyUser                          = @("LastModifier");
            Policy                              = "Nik's Policy";
            ReportSeverityLevel                 = "Low";
        }
        SCDLPComplianceRule 9f67133f-4f97-4e77-b9be-a8b25222c00e
        {
            AccessScope                         = "NotInOrganization";
            BlockAccess                         = $True;
            BlockAccessScope                    = "PerUser";
            ContentContainsSensitiveInformation = MSFT_SCDLPSensitiveInformation
            {
                name = 'Argentina National Identity (DNI) Number'
                id = 'eefbb00e-8282-433c-8620-8f1da3bffdb2'
                maxconfidence = '100'
                minconfidence = '75'
                classifiertype = 'Content'
                mincount = '10'
                maxcount = '-1'
            }
;
            Disabled                            = $False;
            Ensure                              = "Present";
            GenerateIncidentReport              = @("AdminNonMFA@$OrganizationName");
            GlobalAdminAccount                  = $Credsglobaladmin;
            IncidentReportContent               = @("DocumentLastModifier","Detections","Severity","DetectionDetails","OriginalContent");
            Name                                = "High volume of content detected Nik's Policy";
            NotifyAllowOverride                 = @("WithoutJustification");
            NotifyUser                          = @("LastModifier");
            Policy                              = "Nik's Policy";
            ReportSeverityLevel                 = "High";
        }
        SCDLPComplianceRule 4cc597aa-c1b9-4992-814f-5689bb520882
        {
            AccessScope                         = "NotInOrganization";
            BlockAccess                         = $True;
            BlockAccessScope                    = "All";
            ContentContainsSensitiveInformation = MSFT_SCDLPSensitiveInformation
            {
                name = 'EU Debit Card Number'
                id = '0e9b3178-9678-47dd-a509-37222ca96b42'
                maxconfidence = '100'
                minconfidence = '75'
                classifiertype = 'Content'
                mincount = '10'
                maxcount = '-1'
            }
;
            Disabled                            = $False;
            Ensure                              = "Present";
            GenerateIncidentReport              = @("SiteAdmin");
            GlobalAdminAccount                  = $Credsglobaladmin;
            IncidentReportContent               = @("DocumentLastModifier","Detections","Severity","DetectionDetails","OriginalContent");
            Name                                = "High volume of EU Sensitive content found";
            NotifyAllowOverride                 = @("FalsePositive","WithJustification");
            NotifyUser                          = @("SiteAdmin","LastModifier","Owner");
            Policy                              = "Nik's Policy";
            ReportSeverityLevel                 = "Medium";
        }
        SCDLPComplianceRule e49761b5-0d3f-4b41-8e3c-0f0976e3bbae
        {
            BlockAccess                         = $False;
            ContentContainsSensitiveInformation = MSFT_SCDLPSensitiveInformation
            {
                name = 'Australia Driver''s License Number'
                id = '1cbbc8f5-9216-4392-9eb5-5ac2298d1356'
                maxconfidence = '100'
                minconfidence = '75'
                classifiertype = 'Content'
                mincount = '1'
                maxcount = '-1'
            }
;
            Disabled                            = $False;
            Ensure                              = "Present";
            GlobalAdminAccount                  = $Credsglobaladmin;
            Name                                = "Australia Driver's License Number";
            Policy                              = "Nik's Policy";
            ReportSeverityLevel                 = "Low";
        }
        SCDLPComplianceRule 0db8d87e-2d8c-4c15-9c21-ba79ad858c22
        {
            AccessScope                         = "NotInOrganization";
            BlockAccess                         = $False;
            ContentContainsSensitiveInformation = MSFT_SCDLPSensitiveInformation
            {
                name = 'Canada Passport Number'
                id = '14d0db8b-498a-43ed-9fca-f6097ae687eb'
                maxconfidence = '100'
                minconfidence = '75'
                classifiertype = 'Content'
                mincount = '1'
                maxcount = '9'
            }
;
            Disabled                            = $False;
            Ensure                              = "Present";
            GlobalAdminAccount                  = $Credsglobaladmin;
            Name                                = "Low volume of content detected Canada Health Information Act (HI";
            NotifyUser                          = @("SiteAdmin","LastModifier","Owner");
            Policy                              = "Canada Health Information Act (HIA)";
            ReportSeverityLevel                 = "Low";
        }
        SCDLPComplianceRule f0e7004b-0d09-4932-8134-52560ead2a3c
        {
            AccessScope                         = "NotInOrganization";
            BlockAccess                         = $False;
            ContentContainsSensitiveInformation = MSFT_SCDLPSensitiveInformation
            {
                name = 'Canada Passport Number'
                id = '14d0db8b-498a-43ed-9fca-f6097ae687eb'
                maxconfidence = '100'
                minconfidence = '75'
                classifiertype = 'Content'
                mincount = '10'
                maxcount = '-1'
            }
;
            Disabled                            = $False;
            Ensure                              = "Present";
            GenerateIncidentReport              = @("SiteAdmin");
            GlobalAdminAccount                  = $Credsglobaladmin;
            IncidentReportContent               = @("DocumentLastModifier","Detections","Severity","DetectionDetails","OriginalContent");
            Name                                = "High volume of content detected Canada Health Information Act (H";
            NotifyUser                          = @("SiteAdmin","LastModifier","Owner");
            Policy                              = "Canada Health Information Act (HIA)";
            ReportSeverityLevel                 = "High";
        }
        SCDLPComplianceRule 964ac0dd-e6d1-4ccc-b6bf-cebd72f8813c
        {
            BlockAccess                         = $False;
            ContentContainsSensitiveInformation = MSFT_SCDLPSensitiveInformation
            {
                name = 'ABA Routing Number'
                id = 'cb353f78-2b72-4c3c-8827-92ebe4f69fdf'
                maxconfidence = '100'
                minconfidence = '75'
                classifiertype = 'Content'
                mincount = '1'
                maxcount = '-1'
            }
;
            Disabled                            = $False;
            Ensure                              = "Present";
            GlobalAdminAccount                  = $Credsglobaladmin;
            Name                                = "TBD";
            Policy                              = "SIT Policy";
            ReportSeverityLevel                 = "Low";
        }
        SCDLPComplianceRule 43b5e1eb-2f94-4a24-b403-03f008def149
        {
            BlockAccess                         = $False;
            ContentContainsSensitiveInformation = @(MSFT_SCDLPSensitiveInformation
            {
                name = 'Credit Card Number'
                id = '50842eb7-edc8-4019-85dd-5a5c1f2bb085'
                maxconfidence = '100'
                minconfidence = '55'
                classifiertype = 'Content'
                mincount = '5'
                maxcount = '9'
            }
MSFT_SCDLPSensitiveInformation
            {
                name = 'EU Debit Card Number'
                id = '0e9b3178-9678-47dd-a509-37222ca96b42'
                maxconfidence = '100'
                minconfidence = '55'
                classifiertype = 'Content'
                mincount = '5'
                maxcount = '9'
            }
MSFT_SCDLPSensitiveInformation
            {
                name = 'SWIFT Code'
                id = 'cb2ab58c-9cb8-4c81-baf8-a4e106791df4'
                maxconfidence = '100'
                minconfidence = '55'
                classifiertype = 'Content'
                mincount = '5'
                maxcount = '9'
            }
);
            Disabled                            = $False;
            Ensure                              = "Present";
            GlobalAdminAccount                  = $Credsglobaladmin;
            Name                                = "NikSITRule2";
            Policy                              = "SIT Policy";
            ReportSeverityLevel                 = "Low";
        }
        SCFilePlanPropertyAuthority 0da3b73b-0190-4a3a-8776-b0d86733cd42
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "My Authority";
        }
        SCFilePlanPropertyAuthority 3e999088-c397-43c0-96ab-71541a1e91b6
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Nik Authority";
        }
        SCFilePlanPropertyAuthority e2227ba5-f4fb-4866-ad07-c2b22281c1d6
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Business";
        }
        SCFilePlanPropertyAuthority 6df0d581-7e11-4217-bc6f-8fc62c4f8792
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Legal";
        }
        SCFilePlanPropertyAuthority 063b881a-bbd1-42fd-a67e-cf24f2012f52
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Regulatory";
        }
        SCFilePlanPropertyCategory fbd1ea06-6f64-4d10-a657-689a77594014
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "My Category";
        }
        SCFilePlanPropertyCategory 38b9fd33-6178-4c4f-8461-738219998f11
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Accounts payable";
        }
        SCFilePlanPropertyCategory 468d49b0-fe16-4d33-8b30-24664a15cc5b
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Accounts receivable";
        }
        SCFilePlanPropertyCategory d15eb742-2449-4d4c-9b35-b87b0862aaec
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Administration";
        }
        SCFilePlanPropertyCategory 002abc66-7393-4a3a-8bd3-cde02c9e4e23
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Compliance";
        }
        SCFilePlanPropertyCategory 44ed7399-82b9-470b-907c-faf852ab3e6a
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Contracting";
        }
        SCFilePlanPropertyCategory 668192bd-9767-4489-adb2-16e24a6e2a2d
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Financial statements";
        }
        SCFilePlanPropertyCategory 6ca669c5-6550-4ad0-8a18-a531d6d91743
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Learning and development";
        }
        SCFilePlanPropertyCategory 1c9139a6-adb0-4602-b44d-72999cb75123
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Planning";
        }
        SCFilePlanPropertyCategory ec9944d1-0b09-4743-9f73-2d16f8522cb2
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Payroll";
        }
        SCFilePlanPropertyCategory d01c7ee4-672e-44b6-898b-9a51b28c99ca
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Policies and procedures";
        }
        SCFilePlanPropertyCategory 7374f9a6-ae17-452c-9245-bc8bff779963
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Procurement";
        }
        SCFilePlanPropertyCategory b5496f29-604d-49ed-bc49-edfc93582299
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Recruiting and hiring";
        }
        SCFilePlanPropertyCategory a9b2f053-e80e-45dc-abd4-7804209c999f
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Research and development";
        }
        SCFilePlanPropertyCitation 8ce6e161-26c9-4b8a-9e11-3c077583e5c3
        {
            CitationJurisdiction = "asdf";
            CitationUrl          = "asdf";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "asdf";
        }
        SCFilePlanPropertyCitation 47267da5-2418-4c44-8666-1841bc64e834
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "0155468264824752130113684781504705274388064354515382063645056755";
        }
        SCFilePlanPropertyCitation 1924c3e4-2373-4752-9c84-d35caf4645d2
        {
            CitationJurisdiction = "Federal";
            CitationUrl          = "https://contoso.com";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Integration Citation";
        }
        SCFilePlanPropertyCitation 156eb057-8a99-42a1-ae80-9817ac42091a
        {
            CitationJurisdiction = "U.S. Futures Commodity Trading Commission (UCFTC)";
            CitationUrl          = "https://www.cftc.gov/LawRegulation/CommodityExchangeAct/index.htm";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Commodity Exchange Act";
        }
        SCFilePlanPropertyCitation f64448f0-0eb8-4ee2-9a49-038fd728927c
        {
            CitationJurisdiction = "U.S. Securities and Exchange Commission (SEC)";
            CitationUrl          = "https://www.sec.gov/answers/about-lawsshtml.html#sox2002";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Sarbanes-Oxley Act of 2002";
        }
        SCFilePlanPropertyCitation 4cca78de-8e21-4078-a40c-21fabb57f19d
        {
            CitationJurisdiction = "Federal Trade Commission (FTC)";
            CitationUrl          = "https://www.ftc.gov/enforcement/statutes/truth-lending-act";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Truth in lending Act";
        }
        SCFilePlanPropertyCitation 293d3f81-b32b-46a7-a66b-a8803cea813f
        {
            CitationJurisdiction = "U.S. Department of Health & Human Services (HHS)";
            CitationUrl          = "https://aspe.hhs.gov/report/health-insurance-portability-and-accountability-act-1996";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Health Insurance Portability and Accountability Act of 1996";
        }
        SCFilePlanPropertyCitation cd42d21c-1e4e-432e-99a4-1ef73c855eca
        {
            CitationJurisdiction = "U.S. Department of Labor (DOL)";
            CitationUrl          = "https://www.osha.gov/recordkeeping/index.html";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "OSHA Injury and Illness Recordkeeping and Reporting Requirements";
        }
        SCFilePlanPropertyDepartment 7b6d878b-60ca-41f2-8045-2c0192b8ecba
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Demo Department";
        }
        SCFilePlanPropertyDepartment 4b51e348-9931-4eb0-aaa2-ce00482de21b
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Finance";
        }
        SCFilePlanPropertyDepartment b01072a4-30d5-4354-865f-89a0d7d837ad
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Human resources";
        }
        SCFilePlanPropertyDepartment 23b3011e-7f19-40ec-8574-955530b2fb2e
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Information technology";
        }
        SCFilePlanPropertyDepartment 24810165-7dcb-4d21-a83a-b07ab8fd401a
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Legal";
        }
        SCFilePlanPropertyDepartment 7a56222a-3549-428a-8172-04bb6c65f3da
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Marketing";
        }
        SCFilePlanPropertyDepartment bf77c036-91eb-4842-8d35-35b7a2f8917f
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Operations";
        }
        SCFilePlanPropertyDepartment 0d093909-ae2c-432e-87c8-343fb24e89b4
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Procurement";
        }
        SCFilePlanPropertyDepartment 8d5de69c-33a9-409b-b250-345574ec53b4
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Products";
        }
        SCFilePlanPropertyDepartment e6898872-ddf6-4835-b4ec-88e1f9fba8a9
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Sales";
        }
        SCFilePlanPropertyDepartment 322ce631-770f-48aa-b2ad-58564d5e97c2
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Services";
        }
        SCFilePlanPropertySubCategory 2054b1cb-44db-4475-bb8e-f5b26cd6d961
        {
            Category             = "Accounts receivable";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Nik Sub Category";
        }
        SCFilePlanPropertySubCategory 0b5d53ac-63d5-431a-98c7-e28c8c1ba4b2
        {
            Category             = "My Category";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "NikSubCategory";
        }
        SCLabelPolicy 32a0cde7-2025-419c-8a6f-87599c2fca22
        {
            AdvancedSettings     = @(
                MSFT_SCLabelSetting
                {
                    Key   = 'requiredowngradejustification'
                    Value = 'false'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'siteandgroupmandatory'
                    Value = 'false'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'mandatory'
                    Value = 'false'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'enforcesublabelpolicyordering'
                    Value = 'false'
                }
            );
            Comment              = "";
            Ensure               = "Present";
            ExchangeLocation     = "All";
            GlobalAdminAccount   = $Credsglobaladmin;
            Labels               = @("Public");
            Name                 = "Public";
        }
        SCRetentionCompliancePolicy af607860-57e4-4c04-a35e-7de996acf5d6
        {
            Comment                      = "";
            Enabled                      = $True;
            Ensure                       = "Present";
            ExchangeLocation             = @();
            ExchangeLocationException    = @();
            GlobalAdminAccount           = $Credsglobaladmin;
            ModernGroupLocation          = @();
            ModernGroupLocationException = @();
            Name                         = "Test-Policy";
            OneDriveLocation             = @();
            OneDriveLocationException    = @();
            PublicFolderLocation         = @();
            RestrictiveRetention         = $False;
            SharePointLocation           = @();
            SharePointLocationException  = @();
            SkypeLocation                = @();
            SkypeLocationException       = @();
        }
        SCRetentionCompliancePolicy 95768094-e2de-4a44-a196-26debb82eddd
        {
            Comment                      = "10 year retention policy for Exchange Online, SharePoint online and OneDrive for Business";
            Enabled                      = $True;
            Ensure                       = "Present";
            ExchangeLocation             = @();
            ExchangeLocationException    = @();
            GlobalAdminAccount           = $Credsglobaladmin;
            ModernGroupLocation          = @();
            ModernGroupLocationException = @();
            Name                         = "10 year retention policy - EXO, SPO ODfFB";
            OneDriveLocation             = @();
            OneDriveLocationException    = @();
            PublicFolderLocation         = @();
            RestrictiveRetention         = $False;
            SharePointLocation           = @();
            SharePointLocationException  = @();
            SkypeLocation                = @();
            SkypeLocationException       = @();
        }
        SCRetentionCompliancePolicy c2e97424-0e86-49ed-a2ee-988771a13898
        {
            Comment                      = "";
            Enabled                      = $True;
            Ensure                       = "Present";
            ExchangeLocation             = @();
            ExchangeLocationException    = @();
            GlobalAdminAccount           = $Credsglobaladmin;
            ModernGroupLocation          = @();
            ModernGroupLocationException = @();
            Name                         = "DemoNik";
            OneDriveLocation             = @();
            OneDriveLocationException    = @();
            PublicFolderLocation         = @();
            RestrictiveRetention         = $False;
            SharePointLocation           = @();
            SharePointLocationException  = @();
            SkypeLocation                = @();
            SkypeLocationException       = @();
        }
        SCRetentionCompliancePolicy 918c6cce-7652-4e84-b1e5-b2c560f181e4
        {
            Comment                      = "Delete all mail after 7 days";
            Enabled                      = $True;
            Ensure                       = "Present";
            ExchangeLocation             = @();
            ExchangeLocationException    = @();
            GlobalAdminAccount           = $Credsglobaladmin;
            ModernGroupLocation          = @();
            ModernGroupLocationException = @();
            Name                         = "TestRetentionPolicy";
            OneDriveLocation             = @();
            OneDriveLocationException    = @();
            PublicFolderLocation         = @();
            RestrictiveRetention         = $False;
            SharePointLocation           = @();
            SharePointLocationException  = @();
            SkypeLocation                = @();
            SkypeLocationException       = @();
        }
        SCRetentionCompliancePolicy 24aa9433-b7e5-44a3-82d6-6ac87469f1cc
        {
            Comment                       = "10 year retention policy for Teams";
            Enabled                       = $True;
            Ensure                        = "Present";
            GlobalAdminAccount            = $Credsglobaladmin;
            Name                          = "10 year retention policy - Teams";
            RestrictiveRetention          = $False;
            TeamsChannelLocation          = @();
            TeamsChannelLocationException = @();
            TeamsChatLocation             = @();
            TeamsChatLocationException    = @();
        }
        SCRetentionCompliancePolicy 7db967a0-5fd1-43a1-9e39-59ea7c72e6a1
        {
            Comment                      = "Whatever";
            Enabled                      = $True;
            Ensure                       = "Present";
            ExchangeLocation             = @();
            ExchangeLocationException    = @();
            GlobalAdminAccount           = $Credsglobaladmin;
            ModernGroupLocation          = @();
            ModernGroupLocationException = @();
            Name                         = "Nik";
            OneDriveLocation             = @();
            OneDriveLocationException    = @();
            PublicFolderLocation         = @();
            RestrictiveRetention         = $False;
            SharePointLocation           = @();
            SharePointLocationException  = @();
            SkypeLocation                = @();
            SkypeLocationException       = @();
        }
        SCRetentionCompliancePolicy 5cc31051-1766-4665-830a-7937ea6a97d8
        {
            Comment                      = "Delete all mail after 8 days";
            Enabled                      = $True;
            Ensure                       = "Present";
            ExchangeLocation             = @();
            ExchangeLocationException    = @();
            GlobalAdminAccount           = $Credsglobaladmin;
            ModernGroupLocation          = @();
            ModernGroupLocationException = @();
            Name                         = "TestRetentionPolicy2";
            OneDriveLocation             = @();
            OneDriveLocationException    = @();
            PublicFolderLocation         = @();
            RestrictiveRetention         = $False;
            SharePointLocation           = @();
            SharePointLocationException  = @();
            SkypeLocation                = @();
            SkypeLocationException       = @();
        }
        SCRetentionCompliancePolicy 0210fda1-32c1-45f2-9101-e4c1663561d6
        {
            Comment                      = "Test Policy";
            Enabled                      = $True;
            Ensure                       = "Present";
            ExchangeLocation             = @();
            ExchangeLocationException    = @();
            GlobalAdminAccount           = $Credsglobaladmin;
            ModernGroupLocation          = @();
            ModernGroupLocationException = @();
            Name                         = "MyRCPolicy";
            OneDriveLocation             = @();
            OneDriveLocationException    = @();
            PublicFolderLocation         = @();
            RestrictiveRetention         = $False;
            SharePointLocation           = @();
            SharePointLocationException  = @();
            SkypeLocation                = @();
            SkypeLocationException       = @();
        }
        SCRetentionCompliancePolicy 43350375-841c-4fe0-92f2-08490238242a
        {
            Comment                       = "";
            Enabled                       = $True;
            Ensure                        = "Present";
            GlobalAdminAccount            = $Credsglobaladmin;
            Name                          = "NikTestB";
            RestrictiveRetention          = $False;
            TeamsChannelLocation          = @();
            TeamsChannelLocationException = @();
            TeamsChatLocation             = @();
            TeamsChatLocationException    = @();
        }
        SCRetentionCompliancePolicy 1e991ec2-3215-485f-a8a6-600e6f97d64a
        {
            Comment                      = "";
            Enabled                      = $True;
            Ensure                       = "Present";
            ExchangeLocation             = @();
            ExchangeLocationException    = @();
            GlobalAdminAccount           = $Credsglobaladmin;
            ModernGroupLocation          = @();
            ModernGroupLocationException = @();
            Name                         = "My Policy";
            OneDriveLocation             = @();
            OneDriveLocationException    = @();
            PublicFolderLocation         = @();
            RestrictiveRetention         = $False;
            SharePointLocation           = @();
            SharePointLocationException  = @();
            SkypeLocation                = @();
            SkypeLocationException       = @();
        }
        SCRetentionComplianceRule ff0c3617-059b-402b-bc03-0b6f6e81cf26
        {
            Comment                      = "";
            ContentMatchQuery            = "";
            Ensure                       = "Present";
            ExcludedItemClasses          = @();
            ExpirationDateOption         = "CreationAgeInDays";
            GlobalAdminAccount           = $Credsglobaladmin;
            Name                         = "Test-Policy";
            Policy                       = "Test-Policy";
            RetentionComplianceAction    = "Keep";
            RetentionDuration            = "2555";
            RetentionDurationDisplayHint = "Days";
        }
        SCRetentionComplianceRule 40e660f7-f53b-4153-9206-8c861843d62d
        {
            Comment                      = "";
            ContentMatchQuery            = "";
            Ensure                       = "Present";
            ExcludedItemClasses          = @();
            ExpirationDateOption         = "ModificationAgeInDays";
            GlobalAdminAccount           = $Credsglobaladmin;
            Name                         = "10 year retention policy - EXO, SPO ODfFB";
            Policy                       = "10 year retention policy - EXO, SPO ODfFB";
            RetentionComplianceAction    = "Keep";
            RetentionDuration            = "3650";
            RetentionDurationDisplayHint = "Days";
        }
        SCRetentionComplianceRule 11185bbf-aa24-40c9-9849-3985bbf5d70e
        {
            Comment                      = "This is a Demo Rule";
            ContentMatchQuery            = "";
            Ensure                       = "Present";
            ExcludedItemClasses          = @();
            GlobalAdminAccount           = $Credsglobaladmin;
            Name                         = "DemoRule2";
            Policy                       = "MyRCPolicy";
            RetentionComplianceAction    = "Keep";
            RetentionDuration            = "Unlimited";
            RetentionDurationDisplayHint = "Days";
        }
        SCRetentionComplianceRule 94b81dbd-5373-4575-92f4-6d6e9dd938d4
        {
            Comment                      = "";
            ContentMatchQuery            = "";
            Ensure                       = "Present";
            ExcludedItemClasses          = @();
            GlobalAdminAccount           = $Credsglobaladmin;
            Name                         = "ctptr-d4293134-68ad-4a36-a899-3d921d0fd2ae";
            Policy                       = "My Policy";
            RetentionComplianceAction    = "Keep";
            RetentionDurationDisplayHint = "Days";
        }
        SCRetentionEventType b81ade76-3ef0-4732-9548-a1bd57e31a85
        {
            Comment              = "DSC Event Type description.";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "DSCEventType";
        }
        SCRetentionEventType 5d92dd5f-08e2-42ea-abf1-8c63725fb741
        {
            Comment              = "Processes related to hiring, performance and termination of an employee.";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Employee activity";
        }
        SCRetentionEventType 0d0b7bb3-2809-43b9-9214-afcc605f7875
        {
            Comment              = "Expiration or termination of various executed contracts and agreements such as business contracts, leases, license agreements and contingent staff agreements.";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Expiration or termination of contracts and agreements";
        }
        SCRetentionEventType 0bb071d7-4df5-4dd0-a082-bedafba6ef15
        {
            Comment              = "Processes related to last manufacturing date of products.";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Product lifetime";
        }
        SCSensitivityLabel f4681939-4334-4a62-a87a-ec8bc5fa66e4
        {
            AdvancedSettings     = @(
                MSFT_SCLabelSetting
                {
                    Key   = 'contenttype'
                    Value = 'File  Email'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'tooltip'
                    Value = 'Informations approuvées par la direction de Novartis pour être mises à la disposition du public (voir http://go/classify). 
Aucune restriction d''accès ou protection de contenu ne sera appliquée au document/e-mail.'
                }
            );
            Comment              = "";
            Disabled             = $False;
            DisplayName          = "My New label";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            LocaleSettings       = @(
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'DisplayName'
                    Settings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'en-us'
                            Value = 'English display name'
                        }
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'My New label'
                        }
                    )
                }
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'tooltip'
                    Settings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'Informations approuvées par la direction de Novartis pour être mises à la disposition du public (voir http://go/classify). 
Aucune restriction d''accès ou protection de contenu ne sera appliquée au document/e-mail.'
                        }
                    )
                }
            );
            Name                 = "New Label";
            Priority             = 0;
            Tooltip              = "Informations approuvées par la direction de Novartis pour être mises à la disposition du public (voir http://go/classify). 
Aucune restriction d'accès ou protection de contenu ne sera appliquée au document/e-mail.";
        }
        SCSensitivityLabel 636fdf1a-0ac9-40e6-85d2-714eebd7e51b
        {
            Comment              = "";
            Disabled             = $False;
            DisplayName          = "My New label2";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            LocaleSettings       = @(
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'DisplayName'
                    Settings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'en-us'
                            Value = 'English display name2'
                        }
                        MSFT_SCLabelSetting
                        {
                            Key   = 'de-de'
                            Value = 'Deutscher Anzeigename2'
                        }
                        MSFT_SCLabelSetting
                        {
                            Key   = 'es-es'
                            Value = 'Nombre para mostrar en español2'
                        }
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'My New label2'
                        }
                    )
                }
            );
            Name                 = "New Label2";
            Priority             = 1;
        }
        SCSensitivityLabel 6b520028-de28-497f-982f-1c483db398d5
        {
            AdvancedSettings     = @(
                MSFT_SCLabelSetting
                {
                    Key   = 'nikkey'
                    Value = 'Nikvalue1 Nikvalue2'
                }
            );
            Comment              = "";
            Disabled             = $False;
            DisplayName          = "My 3rd Label";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            LocaleSettings       = @(
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'displayName'
                    Settings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'My 3rd Label'
                        }
                    )
                }
            );
            Name                 = "My 3rd Label";
            Priority             = 2;
        }
        SCSensitivityLabel 58c9923e-ff91-4d45-8309-9d72c8393df1
        {
            AdvancedSettings     = @(
                MSFT_SCLabelSetting
                {
                    Key   = 'allowedlevel'
                    Value = 'Sensitive Classified'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'labelstatus'
                    Value = 'Enabled'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'tooltip'
                    Value = 'Demo tool tip'
                }
            );
            Comment              = "Demo label comment";
            Disabled             = $False;
            DisplayName          = "Demo label";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            LocaleSettings       = @(
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'DisplayName'
                    Settings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'en-us'
                            Value = 'English Display Names'
                        }
                        MSFT_SCLabelSetting
                        {
                            Key   = 'fr-fr'
                            Value = 'Nom da''ffichage francais'
                        }
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'Demo label'
                        }
                    )
                }
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'StopColor'
                    Settings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'en-us'
                            Value = 'RedGreen'
                        }
                        MSFT_SCLabelSetting
                        {
                            Key   = 'fr-fr'
                            Value = 'Rouge'
                        }
                    )
                }
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'tooltip'
                    Settings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'Demo tool tip'
                        }
                    )
                }
            );
            Name                 = "Demo Label";
            Priority             = 3;
            Tooltip              = "Demo tool tip";
        }
        SCSensitivityLabel d1071a66-d743-47b0-a76d-074c8e5fd2c1
        {
            AdvancedSettings     = @(
                MSFT_SCLabelSetting
                {
                    Key   = 'contenttype'
                    Value = 'File  Email'
                }
                MSFT_SCLabelSetting
                {
                    Key   = 'tooltip'
                    Value = 'asdfds'
                }
            );
            Comment              = "";
            Disabled             = $False;
            DisplayName          = "Public";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            LocaleSettings       = @(
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'displayName'
                    Settings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'Public'
                        }
                    )
                }
                MSFT_SCLabelLocaleSettings
                {
                    LocaleKey = 'tooltip'
                    Settings  = @(
                        MSFT_SCLabelSetting
                        {
                            Key   = 'default'
                            Value = 'asdfds'
                        }
                    )
                }
            );
            Name                 = "Public";
            Priority             = 4;
            Tooltip              = "asdfds";
        }
        SCSupervisoryReviewPolicy d059e63e-770f-4861-8216-ea81f4f13456
        {
            Comment              = "";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Bob";
            Reviewers            = @("admin@$OrganizationName");
        }
        SCSupervisoryReviewPolicy fd6b7616-a11d-480e-84ab-1b94f5c70b75
        {
            Comment              = "Blah Blah";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Patate";
            Reviewers            = @("Nik.Charlebois@$OrganizationName");
        }
        SCSupervisoryReviewPolicy 0a93bdd6-eb92-4b27-a70f-11136f732718
        {
            Comment              = "Test Policy";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "BlahPolicy";
            Reviewers            = @("admin@$OrganizationName");
        }
        SCSupervisoryReviewPolicy 6970652b-e339-4f0e-9752-87eec05925d2
        {
            Comment              = "Test Policy";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "MySRPolicy";
            Reviewers            = @("adminnonmfa@$OrganizationName");
        }
        SCSupervisoryReviewRule 53682331-7f0c-46c7-99c2-34938bf4c552
        {
            Condition            = "(Reviewee:adminnonmfa@$OrganizationName)";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "DemoRule";
            Policy               = "MySRPolicy";
            SamplingRate         = "100";
        }
        SCSupervisoryReviewRule 5a6d5a8c-f791-4c74-a85e-93bd3b9ed947
        {
            Condition            = "((((Direction:Inbound) OR (Direction:Outbound))) AND (((Reviewee:Samuel.Drey@$OrganizationName))))";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "5fd242fb-8499-425b-972f-cebaed24fed0";
            Policy               = "Patate";
            SamplingRate         = "10";
        }
        SPOAccessControlSettings 5adc43b6-94b5-449f-a39c-d4b1887c274d
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
        SPOApp f22c38a5-2b6e-4649-ba58-e381c33352ad
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Identity             = "to-do-client-side-solution";
            Overwrite            = $True;
            Path                 = "$PSScriptRoot\to-do.sppkg";
            Publish              = $False;
        }
        SPOApp d3ce59e1-e4cc-4eb5-9d74-b8c5d2b18e94
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Identity             = "CardioLog Analytics SaaS";
            Overwrite            = $True;
            Path                 = "$PSScriptRoot\CardioLog Analytics SaaS.app";
            Publish              = $True;
        }
        SPOBrowserIdleSignout b8a1b512-2e9c-477f-bf5a-d8ad68f7ef64
        {
            Enabled              = $False;
            GlobalAdminAccount   = $Credsglobaladmin;
            IsSingleInstance     = "Yes";
            SignOutAfter         = "00:00:00";
            WarnAfter            = "00:00:00";
        }
        SPOHomeSite 91f20c7a-f0d9-4197-8a1d-a28a3fb520da
        {
            Ensure               = "Absent";
            GlobalAdminAccount   = $Credsglobaladmin;
            IsSingleInstance     = "Yes";
        }
        SPOHubSite e2395405-15cc-4093-9ef9-7d191cdaaab0
        {
            AllowedToJoin        = @("admin@$OrganizationName","nik.charlebois@$OrganizationName");
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            RequiresJoinApproval = $False;
            SiteDesignId         = "00000000-0000-0000-0000-000000000000";
            Title                = "Office365DSC Project";
            Url                  = "https://$($OrganizationName.Split('.')[0]).sharepoint.com/sites/Office365DSCProject";
        }
        SPOOrgAssetsLibrary de380938-e2fb-4921-9de4-7bd2e56853a5
        {
            Ensure               = "Absent";
            GlobalAdminAccount   = $Credsglobaladmin;
            LibraryUrl           = "https://.sharepoint.com/sites/Modern/Shared Documents";
        }
        SPOSearchManagedProperty 96a8af52-3549-4454-acb4-4bddca4335d9
        {
            Aliases                     = $True;
            AllowMultipleValues         = $True;
            CompanyNameExtraction       = $False;
            CompleteMatching            = $True;
            Description                 = "Value representing the favorite color of the document's author";
            Ensure                      = "Present";
            FinerQueryTokenization      = $True;
            FullTextContext             = 0;
            FullTextIndex               = "";
            GlobalAdminAccount          = $Credsglobaladmin;
            LanguageNeutralTokenization = $True;
            MappedCrawledProperties     = @();
            Name                        = "FavoriteColor";
            Queryable                   = $True;
            Refinable                   = "Yes";
            Retrievable                 = $True;
            Safe                        = $True;
            Searchable                  = $True;
            Sortable                    = "Yes";
            TokenNormalization          = $True;
            Type                        = "Text";
        }
        SPOSearchManagedProperty aa135da5-40c5-4fa1-a05d-229f6e280e51
        {
            Aliases                     = $True;
            AllowMultipleValues         = $True;
            CompanyNameExtraction       = $False;
            CompleteMatching            = $True;
            Description                 = "";
            Ensure                      = "Present";
            FinerQueryTokenization      = $True;
            FullTextContext             = 0;
            FullTextIndex               = "";
            GlobalAdminAccount          = $Credsglobaladmin;
            LanguageNeutralTokenization = $True;
            MappedCrawledProperties     = @();
            Name                        = "Gilles";
            Queryable                   = $True;
            Refinable                   = "Yes";
            Retrievable                 = $True;
            Safe                        = $True;
            Searchable                  = $True;
            Sortable                    = "Yes";
            TokenNormalization          = $True;
            Type                        = "Text";
        }
        SPOSearchResultSource a478582a-34e5-4126-bf85-9077087a5d86
        {
            Description          = "Description of item";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "MyResultSource";
            Protocol             = "Local";
            QueryTransform       = "";
            SourceURL            = "";
            Type                 = "SharePoint";
            UseAutoDiscover      = $False;
        }
        SPOSharingSettings be00f446-e676-47cb-99c0-d1a34084dfd7
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
        SPOSiteDesign 91cd9ec0-533a-442b-8954-21b99d0f8061
        {
            Description          = "My description";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            IsDefault            = $False;
            SiteScriptNames      = @();
            Title                = "My Company Design";
            Version              = 1;
            WebTemplate          = "TeamSite";
        }
        SPOSiteDesign 6289880a-03c2-40e6-99bb-ef2da91ec2e8
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            IsDefault            = $False;
            SiteScriptNames      = @("Nik Script");
            Title                = "Nik Design";
            Version              = 1;
            WebTemplate          = "TeamSite";
        }
        SPOSiteDesignRights 4917123e-5b88-4af3-a13a-0b2e3a57a3ce
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Rights               = "View";
            SiteDesignTitle      = "Nik Design";
            UserPrincipals       = @("john.smith@$OrganizationName","brian.lalancette@$OrganizationName");
        }
        SPOSiteScript 698da2e7-71b4-48df-9e2b-6cf2bd13d8a9
        {
            Content              = "{
    `"$schema`": `"schema.json`",
        `"actions`": [
            {
                `"verb`": `"addNavLink`",
                `"url`": `"/Custom Library`",
                `"displayName`": `"Custom Library Updated`",
                `"isWebRelative`": true
            },
            {
                `"verb`": `"addNavLink`",
                `"url`": `"/Lists/Custom List`",
                `"displayName`": `"Custom List Updated`",
                `"isWebRelative`": true
            },
            {
                `"verb`": `"applyTheme`",
                `"themeName`": `"Contoso Explorers`"
            }
        ],
            `"bindata`": { },
    `"version`": 2
};";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Identity             = "b273668f-6874-4d94-b459-e64b0f05efeb";
            Title                = "Nik Script";
        }
        SPOStorageEntity 2f528e37-b40c-4758-86b2-7841346098d4
        {
            Ensure               = "Present";
            EntityScope          = "Tenant";
            GlobalAdminAccount   = $Credsglobaladmin;
            Key                  = "Nik";
            SiteUrl              = "https://$($OrganizationName.Split('.')[0])-admin.sharepoint.com";
            Value                = "NikTest";
        }
        SPOTenantCdnEnabled 5ba91657-9a30-4cbb-badd-409ae4bb2078
        {
            CdnType              = "Public";
            Enable               = $True;
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
        }
        SPOTenantCdnEnabled 23330b71-ba47-4789-b4fc-340c893dbea9
        {
            CdnType              = "Private";
            Enable               = $True;
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
        }
        SPOTenantCdnPolicy aed26475-77f7-4987-9c0e-82d88c3df1bb
        {
            CDNType                              = "Public";
            ExcludeRestrictedSiteClassifications = @();
            GlobalAdminAccount                   = $Credsglobaladmin;
            IncludeFileExtensions                = @("CSS","EOT","GIF","ICO","JPEG","JPG","JS","MAP","PNG","SVG","TTF","WOFF","WOFF2");
        }
        SPOTenantSettings 28675ea1-60b0-43f9-83f1-2cb10172010d
        {
            ApplyAppEnforcedRestrictionsToAdHocRecipients = $True;
            FilePickerExternalImageSearchEnabled          = $True;
            GlobalAdminAccount                            = $Credsglobaladmin;
            HideDefaultThemes                             = $False;
            IsSingleInstance                              = "Yes";
            LegacyAuthProtocolsEnabled                    = $True;
            MaxCompatibilityLevel                         = "15";
            MinCompatibilityLevel                         = "15";
            NotificationsInSharePointEnabled              = $True;
            OfficeClientADALDisabled                      = $False;
            OwnerAnonymousNotification                    = $True;
            PublicCdnAllowedFileTypes                     = "CSS,EOT,GIF,ICO,JPEG,JPG,JS,MAP,PNG,SVG,TTF,WOFF";
            PublicCdnEnabled                              = $False;
            SearchResolveExactEmailOrUPN                  = $False;
            SignInAccelerationDomain                      = "";
            UseFindPeopleInPeoplePicker                   = $False;
            UsePersistentCookiesForExplorerView           = $False;
            UserVoiceForFeedbackEnabled                   = $True;
        }
        SPOTheme 9cfed835-b199-440e-8080-a11b26b38f93
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            IsInverted           = $False;
            Name                 = "Custom Cyan";
            Palette              = @(            MSFT_SPOThemePaletteProperty
            {
                Property = 'neutralPrimary'
                Value    = '#333'
            }
            MSFT_SPOThemePaletteProperty
            {
                Property = 'themeLight'
                Value    = '#affefe'
            }
            MSFT_SPOThemePaletteProperty
            {
                Property = 'themeTertiary'
                Value    = '#76ffff'
            }
            MSFT_SPOThemePaletteProperty
            {
                Property = 'black'
                Value    = '#000000'
            }
            MSFT_SPOThemePaletteProperty
            {
                Property = 'neutralSecondary'
                Value    = '#666666'
            }
            MSFT_SPOThemePaletteProperty
            {
                Property = 'neutralTertiaryAlt'
                Value    = '#c8c8c8'
            }
            MSFT_SPOThemePaletteProperty
            {
                Property = 'themeSecondary'
                Value    = '#39ffff'
            }
            MSFT_SPOThemePaletteProperty
            {
                Property = 'themeDarker'
                Value    = '#005252'
            }
            MSFT_SPOThemePaletteProperty
            {
                Property = 'neutralQuaternary'
                Value    = '#d0d0d0'
            }
            MSFT_SPOThemePaletteProperty
            {
                Property = 'neutralPrimaryAlt'
                Value    = '#3c3c3c'
            }
            MSFT_SPOThemePaletteProperty
            {
                Property = 'primaryText'
                Value    = '#333'
            }
            MSFT_SPOThemePaletteProperty
            {
                Property = 'themeDark'
                Value    = '#009090'
            }
            MSFT_SPOThemePaletteProperty
            {
                Property = 'themeLighter'
                Value    = '#daffff'
            }
            MSFT_SPOThemePaletteProperty
            {
                Property = 'neutralTertiary'
                Value    = '#a6a6a6'
            }
            MSFT_SPOThemePaletteProperty
            {
                Property = 'neutralQuaternaryAlt'
                Value    = '#dadada'
            }
            MSFT_SPOThemePaletteProperty
            {
                Property = 'themeLighterAlt'
                Value    = '#f3fcfc'
            }
            MSFT_SPOThemePaletteProperty
            {
                Property = 'white'
                Value    = '#fff'
            }
            MSFT_SPOThemePaletteProperty
            {
                Property = 'primaryBackground'
                Value    = '#fff'
            }
            MSFT_SPOThemePaletteProperty
            {
                Property = 'neutralLighter'
                Value    = '#f4f4f4'
            }
            MSFT_SPOThemePaletteProperty
            {
                Property = 'neutralLight'
                Value    = '#eaeaea'
            }
            MSFT_SPOThemePaletteProperty
            {
                Property = 'neutralDark'
                Value    = '#212121'
            }
            MSFT_SPOThemePaletteProperty
            {
                Property = 'themeDarkAlt'
                Value    = '#00c4c4'
            }
            MSFT_SPOThemePaletteProperty
            {
                Property = 'neutralSecondaryAlt'
                Value    = '#767676'
            }
            MSFT_SPOThemePaletteProperty
            {
                Property = 'neutralLighterAlt'
                Value    = '#f8f8f8'
            }
            MSFT_SPOThemePaletteProperty
            {
                Property = 'themePrimary'
                Value    = '#00ffff'
            }
            )
;
        }
        SPOTheme 2eb001c6-d46e-409b-9065-36e35063edfe
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            IsInverted           = $False;
            Name                 = "Integration Palette";
            Palette              = @(            MSFT_SPOThemePaletteProperty
            {
                Property = 'themeLighterAlt'
                Value    = '#eff6fc'
            }
            MSFT_SPOThemePaletteProperty
            {
                Property = 'themePrimary'
                Value    = '#0078d4'
            }
            )
;
        }
        SPOTheme 108adf3a-bf8f-41d5-abd4-5e258d63a753
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            IsInverted           = $False;
            Name                 = "Unionen generisk";
            Palette              = @(            MSFT_SPOThemePaletteProperty
            {
                Property = 'themeLighterAlt'
                Value    = '#eff6fc'
            }
            MSFT_SPOThemePaletteProperty
            {
                Property = 'themePrimary'
                Value    = '#0078d4'
            }
            )
;
        }
        TeamsCallingPolicy 1818f59c-8827-4131-bea1-f2718bbaf751
        {
            AllowCallForwardingToPhone        = $True;
            AllowCallForwardingToUser         = $True;
            AllowCallGroups                   = $True;
            AllowCloudRecordingForCalls       = $False;
            AllowDelegation                   = $True;
            AllowPrivateCalling               = $True;
            AllowTranscriptionForCalling      = $False;
            AllowVoicemail                    = "UserOverride";
            AllowWebPSTNCalling               = $True;
            AutoAnswerEnabledType             = "Disabled";
            BusyOnBusyEnabledType             = "Disabled";
            Ensure                            = "Present";
            GlobalAdminAccount                = $Credsglobaladmin;
            Identity                          = "Global";
            LiveCaptionsEnabledTypeForCalling = "DisabledUserOverride";
            MusicOnHoldEnabledType            = "Enabled";
            PreventTollBypass                 = $False;
            SafeTransferEnabled               = "Disabled";
            SpamFilteringEnabledType          = "Enabled";
        }
        TeamsCallingPolicy f8f60336-0cef-4052-89ea-82ae1192c52e
        {
            AllowCallForwardingToPhone        = $True;
            AllowCallForwardingToUser         = $True;
            AllowCallGroups                   = $True;
            AllowCloudRecordingForCalls       = $False;
            AllowDelegation                   = $True;
            AllowPrivateCalling               = $True;
            AllowTranscriptionForCalling      = $False;
            AllowVoicemail                    = "UserOverride";
            AllowWebPSTNCalling               = $True;
            AutoAnswerEnabledType             = "Disabled";
            BusyOnBusyEnabledType             = "Disabled";
            Ensure                            = "Present";
            GlobalAdminAccount                = $Credsglobaladmin;
            Identity                          = "Tag:Nik";
            LiveCaptionsEnabledTypeForCalling = "DisabledUserOverride";
            MusicOnHoldEnabledType            = "Enabled";
            PreventTollBypass                 = $False;
            SafeTransferEnabled               = "Disabled";
            SpamFilteringEnabledType          = "Enabled";
        }
        TeamsCallingPolicy 95665ae5-a5d4-4209-a961-dacf02fb796e
        {
            AllowCallForwardingToPhone        = $True;
            AllowCallForwardingToUser         = $True;
            AllowCallGroups                   = $True;
            AllowCloudRecordingForCalls       = $False;
            AllowDelegation                   = $True;
            AllowPrivateCalling               = $True;
            AllowTranscriptionForCalling      = $False;
            AllowVoicemail                    = "UserOverride";
            AllowWebPSTNCalling               = $True;
            AutoAnswerEnabledType             = "Disabled";
            BusyOnBusyEnabledType             = "Disabled";
            Ensure                            = "Present";
            GlobalAdminAccount                = $Credsglobaladmin;
            Identity                          = "Tag:AskMeAnythingDemo";
            LiveCaptionsEnabledTypeForCalling = "DisabledUserOverride";
            MusicOnHoldEnabledType            = "Enabled";
            PreventTollBypass                 = $False;
            SafeTransferEnabled               = "Disabled";
            SpamFilteringEnabledType          = "Enabled";
        }
        TeamsCallingPolicy d21bf2cc-b2c3-41a8-a4c9-d457f5be3194
        {
            AllowCallForwardingToPhone        = $True;
            AllowCallForwardingToUser         = $True;
            AllowCallGroups                   = $True;
            AllowCloudRecordingForCalls       = $False;
            AllowDelegation                   = $True;
            AllowPrivateCalling               = $True;
            AllowTranscriptionForCalling      = $False;
            AllowVoicemail                    = "UserOverride";
            AllowWebPSTNCalling               = $True;
            AutoAnswerEnabledType             = "Disabled";
            BusyOnBusyEnabledType             = "Disabled";
            Ensure                            = "Present";
            GlobalAdminAccount                = $Credsglobaladmin;
            Identity                          = "Tag:DevOPS Calling Policy";
            LiveCaptionsEnabledTypeForCalling = "DisabledUserOverride";
            MusicOnHoldEnabledType            = "Enabled";
            PreventTollBypass                 = $False;
            SafeTransferEnabled               = "Disabled";
            SpamFilteringEnabledType          = "Enabled";
        }
        TeamsCallingPolicy d7ef241d-031d-4dac-b5a3-47bfa1d7d5bb
        {
            AllowCallForwardingToPhone        = $True;
            AllowCallForwardingToUser         = $True;
            AllowCallGroups                   = $False;
            AllowCloudRecordingForCalls       = $False;
            AllowDelegation                   = $True;
            AllowPrivateCalling               = $True;
            AllowTranscriptionForCalling      = $False;
            AllowVoicemail                    = "UserOverride";
            AllowWebPSTNCalling               = $False;
            AutoAnswerEnabledType             = "Disabled";
            BusyOnBusyEnabledType             = "Disabled";
            Ensure                            = "Present";
            GlobalAdminAccount                = $Credsglobaladmin;
            Identity                          = "Tag:Microsoft365DSC Policy";
            LiveCaptionsEnabledTypeForCalling = "DisabledUserOverride";
            MusicOnHoldEnabledType            = "Enabled";
            PreventTollBypass                 = $True;
            SafeTransferEnabled               = "Disabled";
            SpamFilteringEnabledType          = "Enabled";
        }
        TeamsCallingPolicy c1d6bbd4-b0e9-4ad1-b1ca-34da9b86d572
        {
            AllowCallForwardingToPhone        = $True;
            AllowCallForwardingToUser         = $True;
            AllowCallGroups                   = $True;
            AllowCloudRecordingForCalls       = $False;
            AllowDelegation                   = $True;
            AllowPrivateCalling               = $True;
            AllowTranscriptionForCalling      = $False;
            AllowVoicemail                    = "AlwaysEnabled";
            AllowWebPSTNCalling               = $False;
            AutoAnswerEnabledType             = "Disabled";
            BusyOnBusyEnabledType             = "Disabled";
            Ensure                            = "Present";
            GlobalAdminAccount                = $Credsglobaladmin;
            Identity                          = "Tag:Demo Policy2";
            LiveCaptionsEnabledTypeForCalling = "DisabledUserOverride";
            MusicOnHoldEnabledType            = "Enabled";
            PreventTollBypass                 = $False;
            SafeTransferEnabled               = "Disabled";
            SpamFilteringEnabledType          = "Enabled";
        }
        TeamsCallingPolicy 14bf821e-109a-4bac-9a2d-c9a36a08b668
        {
            AllowCallForwardingToPhone        = $False;
            AllowCallForwardingToUser         = $False;
            AllowCallGroups                   = $False;
            AllowCloudRecordingForCalls       = $False;
            AllowDelegation                   = $False;
            AllowPrivateCalling               = $True;
            AllowTranscriptionForCalling      = $False;
            AllowVoicemail                    = "AlwaysDisabled";
            AllowWebPSTNCalling               = $True;
            AutoAnswerEnabledType             = "Disabled";
            BusyOnBusyEnabledType             = "Disabled";
            Description                       = "This is an Education_PrimaryTeacher_RemoteLearning Calling policy";
            Ensure                            = "Present";
            GlobalAdminAccount                = $Credsglobaladmin;
            Identity                          = "Tag:Education_PrimaryTeacher_RemoteLearning";
            LiveCaptionsEnabledTypeForCalling = "DisabledUserOverride";
            MusicOnHoldEnabledType            = "Enabled";
            PreventTollBypass                 = $False;
            SafeTransferEnabled               = "Disabled";
            SpamFilteringEnabledType          = "Enabled";
        }
        TeamsCallingPolicy 67c98681-7de2-4e3b-aa6f-cb4f9595b017
        {
            AllowCallForwardingToPhone        = $True;
            AllowCallForwardingToUser         = $True;
            AllowCallGroups                   = $True;
            AllowCloudRecordingForCalls       = $False;
            AllowDelegation                   = $True;
            AllowPrivateCalling               = $True;
            AllowTranscriptionForCalling      = $False;
            AllowVoicemail                    = "UserOverride";
            AllowWebPSTNCalling               = $True;
            AutoAnswerEnabledType             = "Disabled";
            BusyOnBusyEnabledType             = "Disabled";
            Ensure                            = "Present";
            GlobalAdminAccount                = $Credsglobaladmin;
            Identity                          = "Tag:Contoso - Calling Policy";
            LiveCaptionsEnabledTypeForCalling = "DisabledUserOverride";
            MusicOnHoldEnabledType            = "Enabled";
            PreventTollBypass                 = $False;
            SafeTransferEnabled               = "Disabled";
            SpamFilteringEnabledType          = "Enabled";
        }
        TeamsCallingPolicy 8c156842-6423-43b6-9ce3-69ab417f5ad9
        {
            AllowCallForwardingToPhone        = $False;
            AllowCallForwardingToUser         = $True;
            AllowCallGroups                   = $False;
            AllowCloudRecordingForCalls       = $False;
            AllowDelegation                   = $False;
            AllowPrivateCalling               = $True;
            AllowTranscriptionForCalling      = $False;
            AllowVoicemail                    = "AlwaysDisabled";
            AllowWebPSTNCalling               = $False;
            AutoAnswerEnabledType             = "Disabled";
            BusyOnBusyEnabledType             = "Enabled";
            Ensure                            = "Present";
            GlobalAdminAccount                = $Credsglobaladmin;
            Identity                          = "Tag:CAP";
            LiveCaptionsEnabledTypeForCalling = "DisabledUserOverride";
            MusicOnHoldEnabledType            = "Enabled";
            PreventTollBypass                 = $False;
            SafeTransferEnabled               = "Disabled";
            SpamFilteringEnabledType          = "Enabled";
        }
        TeamsCallingPolicy 72881214-a678-40bf-a7ed-01ca21f2b02d
        {
            AllowCallForwardingToPhone        = $True;
            AllowCallForwardingToUser         = $True;
            AllowCallGroups                   = $True;
            AllowCloudRecordingForCalls       = $False;
            AllowDelegation                   = $True;
            AllowPrivateCalling               = $True;
            AllowTranscriptionForCalling      = $False;
            AllowVoicemail                    = "UserOverride";
            AllowWebPSTNCalling               = $True;
            AutoAnswerEnabledType             = "Disabled";
            BusyOnBusyEnabledType             = "Disabled";
            Ensure                            = "Present";
            GlobalAdminAccount                = $Credsglobaladmin;
            Identity                          = "Tag:AllowCalling";
            LiveCaptionsEnabledTypeForCalling = "DisabledUserOverride";
            MusicOnHoldEnabledType            = "Enabled";
            PreventTollBypass                 = $False;
            SafeTransferEnabled               = "Disabled";
            SpamFilteringEnabledType          = "Enabled";
        }
        TeamsCallingPolicy 3fc33e86-b4e3-4205-b5c8-f6bae300a0be
        {
            AllowCallForwardingToPhone        = $False;
            AllowCallForwardingToUser         = $False;
            AllowCallGroups                   = $False;
            AllowCloudRecordingForCalls       = $False;
            AllowDelegation                   = $False;
            AllowPrivateCalling               = $False;
            AllowTranscriptionForCalling      = $False;
            AllowVoicemail                    = "AlwaysDisabled";
            AllowWebPSTNCalling               = $True;
            AutoAnswerEnabledType             = "Disabled";
            BusyOnBusyEnabledType             = "Disabled";
            Ensure                            = "Present";
            GlobalAdminAccount                = $Credsglobaladmin;
            Identity                          = "Tag:DisallowCalling";
            LiveCaptionsEnabledTypeForCalling = "DisabledUserOverride";
            MusicOnHoldEnabledType            = "Enabled";
            PreventTollBypass                 = $False;
            SafeTransferEnabled               = "Disabled";
            SpamFilteringEnabledType          = "Enabled";
        }
        TeamsCallingPolicy 07f97538-7501-4087-a162-675dc2e8427c
        {
            AllowCallForwardingToPhone        = $True;
            AllowCallForwardingToUser         = $True;
            AllowCallGroups                   = $True;
            AllowCloudRecordingForCalls       = $False;
            AllowDelegation                   = $True;
            AllowPrivateCalling               = $True;
            AllowTranscriptionForCalling      = $False;
            AllowVoicemail                    = "UserOverride";
            AllowWebPSTNCalling               = $True;
            AutoAnswerEnabledType             = "Disabled";
            BusyOnBusyEnabledType             = "Disabled";
            Ensure                            = "Present";
            GlobalAdminAccount                = $Credsglobaladmin;
            Identity                          = "Tag:AllowCallingPreventTollBypass";
            LiveCaptionsEnabledTypeForCalling = "DisabledUserOverride";
            MusicOnHoldEnabledType            = "Enabled";
            PreventTollBypass                 = $True;
            SafeTransferEnabled               = "Disabled";
            SpamFilteringEnabledType          = "Enabled";
        }
        TeamsCallingPolicy 6e7082e5-c18c-492e-8044-f27742788476
        {
            AllowCallForwardingToPhone        = $False;
            AllowCallForwardingToUser         = $True;
            AllowCallGroups                   = $True;
            AllowCloudRecordingForCalls       = $False;
            AllowDelegation                   = $True;
            AllowPrivateCalling               = $True;
            AllowTranscriptionForCalling      = $False;
            AllowVoicemail                    = "UserOverride";
            AllowWebPSTNCalling               = $True;
            AutoAnswerEnabledType             = "Disabled";
            BusyOnBusyEnabledType             = "Disabled";
            Ensure                            = "Present";
            GlobalAdminAccount                = $Credsglobaladmin;
            Identity                          = "Tag:AllowCallingPreventForwardingtoPhone";
            LiveCaptionsEnabledTypeForCalling = "DisabledUserOverride";
            MusicOnHoldEnabledType            = "Enabled";
            PreventTollBypass                 = $False;
            SafeTransferEnabled               = "Disabled";
            SpamFilteringEnabledType          = "Enabled";
        }
        TeamsChannelsPolicy 64882f1f-050b-4c9e-8157-003a176f1f6e
        {
            AllowOrgWideTeamCreation    = $True;
            AllowPrivateChannelCreation = $True;
            AllowPrivateTeamDiscovery   = $True;
            Ensure                      = "Present";
            GlobalAdminAccount          = $Credsglobaladmin;
            Identity                    = "Global";
        }
        TeamsChannelsPolicy 51629975-770a-491c-ad3c-88070565a0a8
        {
            AllowOrgWideTeamCreation    = $True;
            AllowPrivateChannelCreation = $True;
            AllowPrivateTeamDiscovery   = $True;
            Ensure                      = "Present";
            GlobalAdminAccount          = $Credsglobaladmin;
            Identity                    = "Tag:Integration Channel Policy";
        }
        TeamsChannelsPolicy a404acdc-302f-4921-a17f-404bc7a8f936
        {
            AllowOrgWideTeamCreation    = $True;
            AllowPrivateChannelCreation = $True;
            AllowPrivateTeamDiscovery   = $True;
            Ensure                      = "Present";
            GlobalAdminAccount          = $Credsglobaladmin;
            Identity                    = "Tag:EDU_FacStaff";
        }
        TeamsChannelsPolicy 8ac710ce-e2f3-4688-8ee2-1f7a4726836c
        {
            AllowOrgWideTeamCreation    = $True;
            AllowPrivateChannelCreation = $True;
            AllowPrivateTeamDiscovery   = $True;
            Ensure                      = "Present";
            GlobalAdminAccount          = $Credsglobaladmin;
            Identity                    = "Tag:Contoso - Teams Policy";
        }
        TeamsChannelsPolicy 7ffe83a3-ed34-4bef-81f6-49c3742d17b1
        {
            AllowOrgWideTeamCreation    = $True;
            AllowPrivateChannelCreation = $True;
            AllowPrivateTeamDiscovery   = $True;
            Ensure                      = "Present";
            GlobalAdminAccount          = $Credsglobaladmin;
            Identity                    = "Tag:Contoso - Teams Channels";
        }
        TeamsChannelsPolicy 95f5e897-6379-41d5-adad-36f8c1ede877
        {
            AllowOrgWideTeamCreation    = $True;
            AllowPrivateChannelCreation = $True;
            AllowPrivateTeamDiscovery   = $True;
            Ensure                      = "Present";
            GlobalAdminAccount          = $Credsglobaladmin;
            Identity                    = "Tag:Default";
        }
        TeamsClientConfiguration 7283b526-2a29-4978-894b-4c5dde0c85b0
        {
            AllowBox                         = $True;
            AllowDropBox                     = $True;
            AllowEgnyte                      = $False;
            AllowEmailIntoChannel            = $True;
            AllowGoogleDrive                 = $True;
            AllowGuestUser                   = $True;
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
        TeamsEmergencyCallingPolicy 0e8764e3-e441-4f06-911b-f9eabb62f297
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Identity             = "Global";
        }
        TeamsEmergencyCallingPolicy d3837b9a-1bd0-4c2e-8487-36d53b45556c
        {
            Description               = "Nik";
            Ensure                    = "Present";
            GlobalAdminAccount        = $Credsglobaladmin;
            Identity                  = "Tag:Nik";
            NotificationDialOutNumber = "12312345678";
            NotificationGroup         = "adminnonmfa@$OrganizationName";
            NotificationMode          = "NotificationOnly";
        }
        TeamsEmergencyCallingPolicy b2340cfe-1154-4b87-8649-89675d3e0939
        {
            Description               = "Integration Test";
            Ensure                    = "Present";
            GlobalAdminAccount        = $Credsglobaladmin;
            Identity                  = "Tag:Integration Emergency Calling Policy";
            NotificationDialOutNumber = "12312345678";
            NotificationGroup         = "adminnonmfa@$OrganizationName";
            NotificationMode          = "NotificationOnly";
        }
        TeamsEmergencyCallRoutingPolicy ad97d286-2339-4ecf-89bd-577f0b20e081
        {
            AllowEnhancedEmergencyServices = $False;
            Ensure                         = "Present";
            GlobalAdminAccount             = $Credsglobaladmin;
            Identity                       = "Global";
        }
        TeamsEmergencyCallRoutingPolicy b58ef2bf-4e2d-48fb-8f40-9c1eec1f4ddb
        {
            AllowEnhancedEmergencyServices = $False;
            Description                    = "Nik";
            EmergencyNumbers               = @(
                MSFT_TeamsEmergencyNumber
                {
                    EmergencyDialString = '123456'
                    EmergencyDialMask   = '123'
                    OnlinePSTNUsage     = ''
                }
            );
            Ensure                         = "Present";
            GlobalAdminAccount             = $Credsglobaladmin;
            Identity                       = "Tag:NikPolicy1";
        }
        TeamsEmergencyCallRoutingPolicy ea6e386a-da1d-441b-8a53-1f4d6e0c6812
        {
            AllowEnhancedEmergencyServices = $False;
            Description                    = "Nik2";
            EmergencyNumbers               = @(
                MSFT_TeamsEmergencyNumber
                {
                    EmergencyDialString = '00000'
                    EmergencyDialMask   = '111'
                    OnlinePSTNUsage     = ''
                }
            );
            Ensure                         = "Present";
            GlobalAdminAccount             = $Credsglobaladmin;
            Identity                       = "Tag:NikPolicy2";
        }
        TeamsEmergencyCallRoutingPolicy a278622a-0b3d-4ca6-88ff-271726f0c00f
        {
            AllowEnhancedEmergencyServices = $False;
            Description                    = "Nik3";
            EmergencyNumbers               = @(
                MSFT_TeamsEmergencyNumber
                {
                    EmergencyDialString = '123456'
                    EmergencyDialMask   = '123'
                    OnlinePSTNUsage     = ''
                }
                MSFT_TeamsEmergencyNumber
                {
                    EmergencyDialString = '00000'
                    EmergencyDialMask   = '111'
                    OnlinePSTNUsage     = ''
                }
            );
            Ensure                         = "Present";
            GlobalAdminAccount             = $Credsglobaladmin;
            Identity                       = "Tag:NikPolicy3";
        }
        TeamsEmergencyCallRoutingPolicy 5a3e7900-972a-4e6c-89d8-77080656cb36
        {
            AllowEnhancedEmergencyServices = $False;
            Description                    = "NikTesting";
            EmergencyNumbers               = @(
                MSFT_TeamsEmergencyNumber
                {
                    EmergencyDialString = '5555555555'
                    EmergencyDialMask   = ''
                    OnlinePSTNUsage     = ''
                }
                MSFT_TeamsEmergencyNumber
                {
                    EmergencyDialString = '5555555556'
                    EmergencyDialMask   = ''
                    OnlinePSTNUsage     = ''
                }
            );
            Ensure                         = "Present";
            GlobalAdminAccount             = $Credsglobaladmin;
            Identity                       = "Tag:NikTesting12";
        }
        TeamsEmergencyCallRoutingPolicy ea0562c2-bad2-463b-aa4e-5025ffb33e5d
        {
            AllowEnhancedEmergencyServices = $False;
            Description                    = "Description";
            EmergencyNumbers               = @(
                MSFT_TeamsEmergencyNumber
                {
                    EmergencyDialString = '123456'
                    EmergencyDialMask   = '123'
                    OnlinePSTNUsage     = ''
                }
            );
            Ensure                         = "Present";
            GlobalAdminAccount             = $Credsglobaladmin;
            Identity                       = "Tag:Integration Test";
        }
        TeamsGuestCallingConfiguration 0d860322-fa94-4160-b03e-c6c532a82d91
        {
            AllowPrivateCalling  = $True;
            GlobalAdminAccount   = $Credsglobaladmin;
            Identity             = "Global";
        }
        TeamsGuestMeetingConfiguration 23d59611-0f67-4097-87d5-627f91153a93
        {
            AllowIPVideo         = $True;
            AllowMeetNow         = $True;
            GlobalAdminAccount   = $Credsglobaladmin;
            Identity             = "Global";
            ScreenSharingMode    = "Disabled";
        }
        TeamsGuestMessagingConfiguration f8e0c0c2-db43-4a21-8e69-e82a71e95c9f
        {
            AllowGiphy             = $True;
            AllowImmersiveReader   = $True;
            AllowMemes             = $True;
            AllowStickers          = $True;
            AllowUserChat          = $True;
            AllowUserDeleteMessage = $True;
            AllowUserEditMessage   = $True;
            GiphyRatingType        = "Moderate";
            GlobalAdminAccount     = $Credsglobaladmin;
            Identity               = "Global";
        }
        TeamsMeetingBroadcastConfiguration 3e18866b-995c-4004-a862-f0487e38b2ac
        {
            AllowSdnProviderForBroadcastMeeting = $True;
            GlobalAdminAccount                  = $Credsglobaladmin;
            Identity                            = "Global";
            SdnApiTemplateUrl                   = "https://api.hivestreaming.com/v1/eventadmin?partner_token={0}";
            SdnApiToken                         = $ConfigurationData.Settings.SdnApiToken;
            SdnLicenseId                        = "5c12d0-d52950-e03e66-92b587";
            SdnProviderName                     = "hive";
            SupportURL                          = "https://support.office.com/home/contact";
        }
        TeamsMeetingBroadcastPolicy 23b4b7d4-375c-4c92-b47b-b7144d27e930
        {
            AllowBroadcastScheduling        = $True;
            AllowBroadcastTranscription     = $False;
            BroadcastAttendeeVisibilityMode = "EveryoneInCompany";
            BroadcastRecordingMode          = "AlwaysEnabled";
            Ensure                          = "Present";
            GlobalAdminAccount              = $Credsglobaladmin;
            Identity                        = "Global";
        }
        TeamsMeetingBroadcastPolicy acbbc26b-1c84-4453-bc0b-6c2bf9034ecb
        {
            AllowBroadcastScheduling        = $True;
            AllowBroadcastTranscription     = $False;
            BroadcastAttendeeVisibilityMode = "EveryoneInCompany";
            BroadcastRecordingMode          = "AlwaysEnabled";
            Ensure                          = "Present";
            GlobalAdminAccount              = $Credsglobaladmin;
            Identity                        = "Tag:IntegrationPolicy";
        }
        TeamsMeetingBroadcastPolicy 73ce44ba-cbec-4c78-8ff4-ed0b9f0f35f4
        {
            AllowBroadcastScheduling        = $True;
            AllowBroadcastTranscription     = $False;
            BroadcastAttendeeVisibilityMode = "EveryoneInCompany";
            BroadcastRecordingMode          = "AlwaysEnabled";
            Ensure                          = "Present";
            GlobalAdminAccount              = $Credsglobaladmin;
            Identity                        = "Tag:Contoso - Live Events";
        }
        TeamsMeetingBroadcastPolicy dd0c7ab5-d304-4384-843d-5391208556dc
        {
            AllowBroadcastScheduling        = $True;
            AllowBroadcastTranscription     = $False;
            BroadcastAttendeeVisibilityMode = "EveryoneInCompany";
            BroadcastRecordingMode          = "AlwaysEnabled";
            Ensure                          = "Present";
            GlobalAdminAccount              = $Credsglobaladmin;
            Identity                        = "Tag:Default";
        }
        TeamsMeetingConfiguration 49768d2e-3df4-4b67-86da-50298974d072
        {
            ClientAppSharingPort        = 50040;
            ClientAppSharingPortRange   = 20;
            ClientAudioPort             = 50000;
            ClientAudioPortRange        = 21;
            ClientMediaPortRangeEnabled = $True;
            ClientVideoPort             = 50020;
            ClientVideoPortRange        = 20;
            CustomFooterText            = "This is some custom footer text";
            DisableAnonymousJoin        = $False;
            EnableQoS                   = $False;
            GlobalAdminAccount          = $Credsglobaladmin;
            HelpURL                     = "https://github.com/Microsoft/Microsoft365DSC/Help";
            Identity                    = "Global";
            LegalURL                    = "https://github.com/Microsoft/Microsoft365DSC/Legal";
            LogoURL                     = "https://github.com/Microsoft/Microsoft365DSC/Logo.png";
        }
        TeamsMeetingPolicy b8f89467-4523-49bc-9823-016a470de209
        {
            AllowAnonymousUsersToDialOut               = $False;
            AllowAnonymousUsersToStartMeeting          = $False;
            AllowBreakoutRooms                         = $True;
            AllowChannelMeetingScheduling              = $True;
            AllowCloudRecording                        = $True;
            AllowEngagementReport                      = "Enabled";
            AllowExternalParticipantGiveRequestControl = $False;
            AllowIPAudio                               = $True;
            AllowIPVideo                               = $True;
            AllowMeetingReactions                      = $True;
            AllowMeetNow                               = $True;
            AllowNDIStreaming                          = $False;
            AllowOrganizersToOverrideLobbySettings     = $False;
            AllowOutlookAddIn                          = $True;
            AllowParticipantGiveRequestControl         = $True;
            AllowPowerPointSharing                     = $True;
            AllowPrivateMeetingScheduling              = $True;
            AllowPrivateMeetNow                        = $True;
            AllowPSTNUsersToBypassLobby                = $False;
            AllowRecordingStorageOutsideRegion         = $False;
            AllowSharedNotes                           = $True;
            AllowTranscription                         = $False;
            AllowUserToJoinExternalMeeting             = "Disabled";
            AllowWhiteboard                            = $True;
            AutoAdmittedUsers                          = "EveryoneInCompany";
            DesignatedPresenterRoleMode                = "EveryoneUserOverride";
            EnrollUserOverride                         = "Disabled";
            Ensure                                     = "Present";
            GlobalAdminAccount                         = $Credsglobaladmin;
            Identity                                   = "Global";
            IPAudioMode                                = "EnabledOutgoingIncoming";
            IPVideoMode                                = "EnabledOutgoingIncoming";
            LiveCaptionsEnabledType                    = "DisabledUserOverride";
            MediaBitRateKb                             = 50000;
            MeetingChatEnabledType                     = "Enabled";
            PreferredMeetingProviderForIslandsMode     = "TeamsAndSfb";
            RecordingStorageMode                       = "Stream";
            ScreenSharingMode                          = "EntireScreen";
            StreamingAttendeeMode                      = "Disabled";
            TeamsCameraFarEndPTZMode                   = "Disabled";
            VideoFiltersMode                           = "AllFilters";
        }
        TeamsMeetingPolicy df45bec8-64db-48cb-bdc1-786a9b836aa2
        {
            AllowAnonymousUsersToDialOut               = $False;
            AllowAnonymousUsersToStartMeeting          = $False;
            AllowBreakoutRooms                         = $True;
            AllowChannelMeetingScheduling              = $True;
            AllowCloudRecording                        = $True;
            AllowEngagementReport                      = "Disabled";
            AllowExternalParticipantGiveRequestControl = $False;
            AllowIPAudio                               = $True;
            AllowIPVideo                               = $True;
            AllowMeetingReactions                      = $True;
            AllowMeetNow                               = $True;
            AllowNDIStreaming                          = $False;
            AllowOrganizersToOverrideLobbySettings     = $False;
            AllowOutlookAddIn                          = $True;
            AllowParticipantGiveRequestControl         = $True;
            AllowPowerPointSharing                     = $True;
            AllowPrivateMeetingScheduling              = $True;
            AllowPrivateMeetNow                        = $True;
            AllowPSTNUsersToBypassLobby                = $True;
            AllowRecordingStorageOutsideRegion         = $False;
            AllowSharedNotes                           = $True;
            AllowTranscription                         = $False;
            AllowUserToJoinExternalMeeting             = "Disabled";
            AllowWhiteboard                            = $True;
            AutoAdmittedUsers                          = "Everyone";
            DesignatedPresenterRoleMode                = "EveryoneUserOverride";
            EnrollUserOverride                         = "Disabled";
            Ensure                                     = "Present";
            GlobalAdminAccount                         = $Credsglobaladmin;
            Identity                                   = "Tag:Nik Policy";
            IPAudioMode                                = "EnabledOutgoingIncoming";
            IPVideoMode                                = "EnabledOutgoingIncoming";
            LiveCaptionsEnabledType                    = "DisabledUserOverride";
            MediaBitRateKb                             = 50000;
            MeetingChatEnabledType                     = "Enabled";
            PreferredMeetingProviderForIslandsMode     = "TeamsAndSfb";
            RecordingStorageMode                       = "OneDriveForBusiness";
            ScreenSharingMode                          = "EntireScreen";
            StreamingAttendeeMode                      = "Disabled";
            TeamsCameraFarEndPTZMode                   = "Disabled";
            VideoFiltersMode                           = "AllFilters";
        }
        TeamsMeetingPolicy 99dec087-dd03-4310-b3cf-66fa24e19003
        {
            AllowAnonymousUsersToDialOut               = $False;
            AllowAnonymousUsersToStartMeeting          = $False;
            AllowBreakoutRooms                         = $True;
            AllowChannelMeetingScheduling              = $True;
            AllowCloudRecording                        = $True;
            AllowEngagementReport                      = "Disabled";
            AllowExternalParticipantGiveRequestControl = $False;
            AllowIPAudio                               = $True;
            AllowIPVideo                               = $True;
            AllowMeetingReactions                      = $True;
            AllowMeetNow                               = $True;
            AllowNDIStreaming                          = $False;
            AllowOrganizersToOverrideLobbySettings     = $False;
            AllowOutlookAddIn                          = $True;
            AllowParticipantGiveRequestControl         = $True;
            AllowPowerPointSharing                     = $True;
            AllowPrivateMeetingScheduling              = $True;
            AllowPrivateMeetNow                        = $True;
            AllowPSTNUsersToBypassLobby                = $True;
            AllowRecordingStorageOutsideRegion         = $False;
            AllowSharedNotes                           = $True;
            AllowTranscription                         = $False;
            AllowUserToJoinExternalMeeting             = "Disabled";
            AllowWhiteboard                            = $True;
            AutoAdmittedUsers                          = "Everyone";
            Description                                = "Integration Meeting Policy";
            DesignatedPresenterRoleMode                = "EveryoneUserOverride";
            EnrollUserOverride                         = "Disabled";
            Ensure                                     = "Present";
            GlobalAdminAccount                         = $Credsglobaladmin;
            Identity                                   = "Tag:Integration Meeting Policy";
            IPAudioMode                                = "EnabledOutgoingIncoming";
            IPVideoMode                                = "EnabledOutgoingIncoming";
            LiveCaptionsEnabledType                    = "DisabledUserOverride";
            MediaBitRateKb                             = 50000;
            MeetingChatEnabledType                     = "Enabled";
            PreferredMeetingProviderForIslandsMode     = "TeamsAndSfb";
            RecordingStorageMode                       = "Stream";
            ScreenSharingMode                          = "EntireScreen";
            StreamingAttendeeMode                      = "Disabled";
            TeamsCameraFarEndPTZMode                   = "Disabled";
            VideoFiltersMode                           = "AllFilters";
        }
        TeamsMeetingPolicy 282b88fa-4129-4d25-9b11-d6d4d826adf3
        {
            AllowAnonymousUsersToDialOut               = $False;
            AllowAnonymousUsersToStartMeeting          = $False;
            AllowBreakoutRooms                         = $True;
            AllowChannelMeetingScheduling              = $True;
            AllowCloudRecording                        = $True;
            AllowEngagementReport                      = "Enabled";
            AllowExternalParticipantGiveRequestControl = $False;
            AllowIPAudio                               = $True;
            AllowIPVideo                               = $True;
            AllowMeetingReactions                      = $True;
            AllowMeetNow                               = $True;
            AllowNDIStreaming                          = $False;
            AllowOrganizersToOverrideLobbySettings     = $False;
            AllowOutlookAddIn                          = $True;
            AllowParticipantGiveRequestControl         = $True;
            AllowPowerPointSharing                     = $True;
            AllowPrivateMeetingScheduling              = $True;
            AllowPrivateMeetNow                        = $True;
            AllowPSTNUsersToBypassLobby                = $False;
            AllowRecordingStorageOutsideRegion         = $False;
            AllowSharedNotes                           = $True;
            AllowTranscription                         = $False;
            AllowUserToJoinExternalMeeting             = "Disabled";
            AllowWhiteboard                            = $True;
            AutoAdmittedUsers                          = "OrganizerOnly";
            Description                                = "Policy to stop the same meeting instance being used to communicate.";
            DesignatedPresenterRoleMode                = "EveryoneUserOverride";
            EnrollUserOverride                         = "Disabled";
            Ensure                                     = "Present";
            GlobalAdminAccount                         = $Credsglobaladmin;
            Identity                                   = "Tag:DisableFutureComms";
            IPAudioMode                                = "EnabledOutgoingIncoming";
            IPVideoMode                                = "EnabledOutgoingIncoming";
            LiveCaptionsEnabledType                    = "DisabledUserOverride";
            MediaBitRateKb                             = 50000;
            MeetingChatEnabledType                     = "Disabled";
            PreferredMeetingProviderForIslandsMode     = "TeamsAndSfb";
            RecordingStorageMode                       = "Stream";
            ScreenSharingMode                          = "EntireScreen";
            StreamingAttendeeMode                      = "Disabled";
            TeamsCameraFarEndPTZMode                   = "Disabled";
            VideoFiltersMode                           = "AllFilters";
        }
        TeamsMeetingPolicy 3b5cf60f-740c-4419-8c74-5759e35be376
        {
            AllowAnonymousUsersToDialOut               = $False;
            AllowAnonymousUsersToStartMeeting          = $False;
            AllowBreakoutRooms                         = $True;
            AllowChannelMeetingScheduling              = $True;
            AllowCloudRecording                        = $True;
            AllowEngagementReport                      = "Enabled";
            AllowExternalParticipantGiveRequestControl = $False;
            AllowIPAudio                               = $True;
            AllowIPVideo                               = $True;
            AllowMeetingReactions                      = $True;
            AllowMeetNow                               = $True;
            AllowNDIStreaming                          = $False;
            AllowOrganizersToOverrideLobbySettings     = $False;
            AllowOutlookAddIn                          = $True;
            AllowParticipantGiveRequestControl         = $True;
            AllowPowerPointSharing                     = $True;
            AllowPrivateMeetingScheduling              = $True;
            AllowPrivateMeetNow                        = $True;
            AllowPSTNUsersToBypassLobby                = $False;
            AllowRecordingStorageOutsideRegion         = $False;
            AllowSharedNotes                           = $True;
            AllowTranscription                         = $False;
            AllowUserToJoinExternalMeeting             = "Disabled";
            AllowWhiteboard                            = $False;
            AutoAdmittedUsers                          = "EveryoneInCompany";
            DesignatedPresenterRoleMode                = "EveryoneUserOverride";
            EnrollUserOverride                         = "Disabled";
            Ensure                                     = "Present";
            GlobalAdminAccount                         = $Credsglobaladmin;
            Identity                                   = "Tag:DSCTesting";
            IPAudioMode                                = "EnabledOutgoingIncoming";
            IPVideoMode                                = "EnabledOutgoingIncoming";
            LiveCaptionsEnabledType                    = "DisabledUserOverride";
            MediaBitRateKb                             = 50000;
            MeetingChatEnabledType                     = "Enabled";
            PreferredMeetingProviderForIslandsMode     = "TeamsAndSfb";
            RecordingStorageMode                       = "Stream";
            ScreenSharingMode                          = "EntireScreen";
            StreamingAttendeeMode                      = "Disabled";
            TeamsCameraFarEndPTZMode                   = "Disabled";
            VideoFiltersMode                           = "AllFilters";
        }
        TeamsMeetingPolicy 1b531b87-c758-4984-a757-8c6b4811a690
        {
            AllowAnonymousUsersToDialOut               = $False;
            AllowAnonymousUsersToStartMeeting          = $True;
            AllowBreakoutRooms                         = $True;
            AllowChannelMeetingScheduling              = $True;
            AllowCloudRecording                        = $True;
            AllowEngagementReport                      = "Disabled";
            AllowExternalParticipantGiveRequestControl = $True;
            AllowIPAudio                               = $True;
            AllowIPVideo                               = $True;
            AllowMeetingReactions                      = $True;
            AllowMeetNow                               = $True;
            AllowNDIStreaming                          = $False;
            AllowOrganizersToOverrideLobbySettings     = $False;
            AllowOutlookAddIn                          = $True;
            AllowParticipantGiveRequestControl         = $True;
            AllowPowerPointSharing                     = $True;
            AllowPrivateMeetingScheduling              = $True;
            AllowPrivateMeetNow                        = $True;
            AllowPSTNUsersToBypassLobby                = $True;
            AllowRecordingStorageOutsideRegion         = $False;
            AllowSharedNotes                           = $True;
            AllowTranscription                         = $True;
            AllowUserToJoinExternalMeeting             = "Disabled";
            AllowWhiteboard                            = $True;
            AutoAdmittedUsers                          = "EveryoneInCompany";
            DesignatedPresenterRoleMode                = "EveryoneUserOverride";
            EnrollUserOverride                         = "Disabled";
            Ensure                                     = "Present";
            GlobalAdminAccount                         = $Credsglobaladmin;
            Identity                                   = "Tag:Contoso - Allow Video";
            IPAudioMode                                = "EnabledOutgoingIncoming";
            IPVideoMode                                = "EnabledOutgoingIncoming";
            LiveCaptionsEnabledType                    = "DisabledUserOverride";
            MediaBitRateKb                             = 50000;
            MeetingChatEnabledType                     = "Enabled";
            PreferredMeetingProviderForIslandsMode     = "TeamsAndSfb";
            RecordingStorageMode                       = "Stream";
            ScreenSharingMode                          = "EntireScreen";
            StreamingAttendeeMode                      = "Disabled";
            TeamsCameraFarEndPTZMode                   = "Disabled";
            VideoFiltersMode                           = "AllFilters";
        }
        TeamsMeetingPolicy b7b748a2-0339-4706-ab5e-66a25bc30284
        {
            AllowAnonymousUsersToDialOut               = $False;
            AllowAnonymousUsersToStartMeeting          = $False;
            AllowBreakoutRooms                         = $True;
            AllowChannelMeetingScheduling              = $True;
            AllowCloudRecording                        = $True;
            AllowEngagementReport                      = "Enabled";
            AllowExternalParticipantGiveRequestControl = $False;
            AllowIPAudio                               = $True;
            AllowIPVideo                               = $True;
            AllowMeetingReactions                      = $True;
            AllowMeetNow                               = $True;
            AllowNDIStreaming                          = $False;
            AllowOrganizersToOverrideLobbySettings     = $False;
            AllowOutlookAddIn                          = $True;
            AllowParticipantGiveRequestControl         = $True;
            AllowPowerPointSharing                     = $True;
            AllowPrivateMeetingScheduling              = $True;
            AllowPrivateMeetNow                        = $True;
            AllowPSTNUsersToBypassLobby                = $False;
            AllowRecordingStorageOutsideRegion         = $False;
            AllowSharedNotes                           = $True;
            AllowTranscription                         = $False;
            AllowUserToJoinExternalMeeting             = "Disabled";
            AllowWhiteboard                            = $True;
            AutoAdmittedUsers                          = "EveryoneInCompany";
            Description                                = "Do not assign. This policy is same as global defaults and would be deprecated";
            DesignatedPresenterRoleMode                = "EveryoneUserOverride";
            EnrollUserOverride                         = "Disabled";
            Ensure                                     = "Present";
            GlobalAdminAccount                         = $Credsglobaladmin;
            Identity                                   = "Tag:AllOn";
            IPAudioMode                                = "EnabledOutgoingIncoming";
            IPVideoMode                                = "EnabledOutgoingIncoming";
            LiveCaptionsEnabledType                    = "DisabledUserOverride";
            MediaBitRateKb                             = 50000;
            MeetingChatEnabledType                     = "Enabled";
            PreferredMeetingProviderForIslandsMode     = "TeamsAndSfb";
            RecordingStorageMode                       = "OneDriveForBusiness";
            ScreenSharingMode                          = "EntireScreen";
            StreamingAttendeeMode                      = "Disabled";
            TeamsCameraFarEndPTZMode                   = "Disabled";
            VideoFiltersMode                           = "AllFilters";
        }
        TeamsMeetingPolicy b4d3b2e6-068f-4a84-9743-b893e56cb5d8
        {
            AllowAnonymousUsersToDialOut               = $False;
            AllowAnonymousUsersToStartMeeting          = $False;
            AllowBreakoutRooms                         = $True;
            AllowChannelMeetingScheduling              = $True;
            AllowCloudRecording                        = $True;
            AllowEngagementReport                      = "Enabled";
            AllowExternalParticipantGiveRequestControl = $False;
            AllowIPAudio                               = $True;
            AllowIPVideo                               = $True;
            AllowMeetingReactions                      = $True;
            AllowMeetNow                               = $True;
            AllowNDIStreaming                          = $False;
            AllowOrganizersToOverrideLobbySettings     = $False;
            AllowOutlookAddIn                          = $True;
            AllowParticipantGiveRequestControl         = $True;
            AllowPowerPointSharing                     = $True;
            AllowPrivateMeetingScheduling              = $True;
            AllowPrivateMeetNow                        = $True;
            AllowPSTNUsersToBypassLobby                = $False;
            AllowRecordingStorageOutsideRegion         = $False;
            AllowSharedNotes                           = $True;
            AllowTranscription                         = $False;
            AllowUserToJoinExternalMeeting             = "Disabled";
            AllowWhiteboard                            = $True;
            AutoAdmittedUsers                          = "EveryoneInCompany";
            Description                                = "Do not assign. This policy is same as global defaults and would be deprecated";
            DesignatedPresenterRoleMode                = "EveryoneUserOverride";
            EnrollUserOverride                         = "Disabled";
            Ensure                                     = "Present";
            GlobalAdminAccount                         = $Credsglobaladmin;
            Identity                                   = "Tag:RestrictedAnonymousAccess";
            IPAudioMode                                = "EnabledOutgoingIncoming";
            IPVideoMode                                = "EnabledOutgoingIncoming";
            LiveCaptionsEnabledType                    = "Disabled";
            MediaBitRateKb                             = 50000;
            MeetingChatEnabledType                     = "Enabled";
            PreferredMeetingProviderForIslandsMode     = "TeamsAndSfb";
            RecordingStorageMode                       = "OneDriveForBusiness";
            ScreenSharingMode                          = "EntireScreen";
            StreamingAttendeeMode                      = "Disabled";
            TeamsCameraFarEndPTZMode                   = "Disabled";
            VideoFiltersMode                           = "AllFilters";
        }
        TeamsMeetingPolicy c503a1c1-7f1d-4b7e-a559-a8ff83462772
        {
            AllowAnonymousUsersToDialOut               = $False;
            AllowAnonymousUsersToStartMeeting          = $False;
            AllowBreakoutRooms                         = $True;
            AllowChannelMeetingScheduling              = $False;
            AllowCloudRecording                        = $False;
            AllowEngagementReport                      = "Enabled";
            AllowExternalParticipantGiveRequestControl = $False;
            AllowIPAudio                               = $True;
            AllowIPVideo                               = $False;
            AllowMeetingReactions                      = $True;
            AllowMeetNow                               = $False;
            AllowNDIStreaming                          = $False;
            AllowOrganizersToOverrideLobbySettings     = $False;
            AllowOutlookAddIn                          = $False;
            AllowParticipantGiveRequestControl         = $False;
            AllowPowerPointSharing                     = $False;
            AllowPrivateMeetingScheduling              = $False;
            AllowPrivateMeetNow                        = $False;
            AllowPSTNUsersToBypassLobby                = $False;
            AllowRecordingStorageOutsideRegion         = $False;
            AllowSharedNotes                           = $False;
            AllowTranscription                         = $False;
            AllowUserToJoinExternalMeeting             = "Disabled";
            AllowWhiteboard                            = $False;
            AutoAdmittedUsers                          = "EveryoneInCompany";
            DesignatedPresenterRoleMode                = "EveryoneUserOverride";
            EnrollUserOverride                         = "Disabled";
            Ensure                                     = "Present";
            GlobalAdminAccount                         = $Credsglobaladmin;
            Identity                                   = "Tag:AllOff";
            IPAudioMode                                = "EnabledOutgoingIncoming";
            IPVideoMode                                = "EnabledOutgoingIncoming";
            LiveCaptionsEnabledType                    = "Disabled";
            MediaBitRateKb                             = 50000;
            MeetingChatEnabledType                     = "Disabled";
            PreferredMeetingProviderForIslandsMode     = "TeamsAndSfb";
            RecordingStorageMode                       = "OneDriveForBusiness";
            ScreenSharingMode                          = "Disabled";
            StreamingAttendeeMode                      = "Disabled";
            TeamsCameraFarEndPTZMode                   = "Disabled";
            VideoFiltersMode                           = "AllFilters";
        }
        TeamsMeetingPolicy 3d23829d-9088-48f5-b5dc-9bc81944d6c4
        {
            AllowAnonymousUsersToDialOut               = $False;
            AllowAnonymousUsersToStartMeeting          = $False;
            AllowBreakoutRooms                         = $True;
            AllowChannelMeetingScheduling              = $True;
            AllowCloudRecording                        = $False;
            AllowEngagementReport                      = "Enabled";
            AllowExternalParticipantGiveRequestControl = $False;
            AllowIPAudio                               = $True;
            AllowIPVideo                               = $True;
            AllowMeetingReactions                      = $True;
            AllowMeetNow                               = $True;
            AllowNDIStreaming                          = $False;
            AllowOrganizersToOverrideLobbySettings     = $False;
            AllowOutlookAddIn                          = $True;
            AllowParticipantGiveRequestControl         = $True;
            AllowPowerPointSharing                     = $True;
            AllowPrivateMeetingScheduling              = $True;
            AllowPrivateMeetNow                        = $True;
            AllowPSTNUsersToBypassLobby                = $False;
            AllowRecordingStorageOutsideRegion         = $False;
            AllowSharedNotes                           = $True;
            AllowTranscription                         = $False;
            AllowUserToJoinExternalMeeting             = "Disabled";
            AllowWhiteboard                            = $True;
            AutoAdmittedUsers                          = "EveryoneInCompany";
            Description                                = "Do not assign. This policy is similar to global defaults and would be deprecated";
            DesignatedPresenterRoleMode                = "EveryoneUserOverride";
            EnrollUserOverride                         = "Disabled";
            Ensure                                     = "Present";
            GlobalAdminAccount                         = $Credsglobaladmin;
            Identity                                   = "Tag:RestrictedAnonymousNoRecording";
            IPAudioMode                                = "EnabledOutgoingIncoming";
            IPVideoMode                                = "EnabledOutgoingIncoming";
            LiveCaptionsEnabledType                    = "Disabled";
            MediaBitRateKb                             = 50000;
            MeetingChatEnabledType                     = "Enabled";
            PreferredMeetingProviderForIslandsMode     = "TeamsAndSfb";
            RecordingStorageMode                       = "OneDriveForBusiness";
            ScreenSharingMode                          = "EntireScreen";
            StreamingAttendeeMode                      = "Disabled";
            TeamsCameraFarEndPTZMode                   = "Disabled";
            VideoFiltersMode                           = "AllFilters";
        }
        TeamsMeetingPolicy 55ff14ce-462e-4efb-931a-739ae40956d4
        {
            AllowAnonymousUsersToDialOut               = $False;
            AllowAnonymousUsersToStartMeeting          = $False;
            AllowBreakoutRooms                         = $True;
            AllowChannelMeetingScheduling              = $True;
            AllowCloudRecording                        = $True;
            AllowEngagementReport                      = "Enabled";
            AllowExternalParticipantGiveRequestControl = $False;
            AllowIPAudio                               = $True;
            AllowIPVideo                               = $True;
            AllowMeetingReactions                      = $True;
            AllowMeetNow                               = $True;
            AllowNDIStreaming                          = $False;
            AllowOrganizersToOverrideLobbySettings     = $False;
            AllowOutlookAddIn                          = $True;
            AllowParticipantGiveRequestControl         = $True;
            AllowPowerPointSharing                     = $True;
            AllowPrivateMeetingScheduling              = $True;
            AllowPrivateMeetNow                        = $True;
            AllowPSTNUsersToBypassLobby                = $False;
            AllowRecordingStorageOutsideRegion         = $False;
            AllowSharedNotes                           = $True;
            AllowTranscription                         = $False;
            AllowUserToJoinExternalMeeting             = "Disabled";
            AllowWhiteboard                            = $True;
            AutoAdmittedUsers                          = "EveryoneInCompany";
            DesignatedPresenterRoleMode                = "EveryoneUserOverride";
            EnrollUserOverride                         = "Disabled";
            Ensure                                     = "Present";
            GlobalAdminAccount                         = $Credsglobaladmin;
            Identity                                   = "Tag:Default";
            IPAudioMode                                = "EnabledOutgoingIncoming";
            IPVideoMode                                = "EnabledOutgoingIncoming";
            LiveCaptionsEnabledType                    = "DisabledUserOverride";
            MediaBitRateKb                             = 50000;
            MeetingChatEnabledType                     = "Enabled";
            PreferredMeetingProviderForIslandsMode     = "TeamsAndSfb";
            RecordingStorageMode                       = "OneDriveForBusiness";
            ScreenSharingMode                          = "EntireScreen";
            StreamingAttendeeMode                      = "Disabled";
            TeamsCameraFarEndPTZMode                   = "Disabled";
            VideoFiltersMode                           = "AllFilters";
        }
        TeamsMeetingPolicy 32360e94-1a29-48f9-8c2a-b2ce7880971f
        {
            AllowAnonymousUsersToDialOut               = $False;
            AllowAnonymousUsersToStartMeeting          = $False;
            AllowBreakoutRooms                         = $True;
            AllowChannelMeetingScheduling              = $False;
            AllowCloudRecording                        = $False;
            AllowEngagementReport                      = "Enabled";
            AllowExternalParticipantGiveRequestControl = $False;
            AllowIPAudio                               = $True;
            AllowIPVideo                               = $True;
            AllowMeetingReactions                      = $True;
            AllowMeetNow                               = $True;
            AllowNDIStreaming                          = $False;
            AllowOrganizersToOverrideLobbySettings     = $False;
            AllowOutlookAddIn                          = $False;
            AllowParticipantGiveRequestControl         = $True;
            AllowPowerPointSharing                     = $True;
            AllowPrivateMeetingScheduling              = $False;
            AllowPrivateMeetNow                        = $True;
            AllowPSTNUsersToBypassLobby                = $False;
            AllowRecordingStorageOutsideRegion         = $False;
            AllowSharedNotes                           = $True;
            AllowTranscription                         = $False;
            AllowUserToJoinExternalMeeting             = "Disabled";
            AllowWhiteboard                            = $True;
            AutoAdmittedUsers                          = "EveryoneInCompany";
            DesignatedPresenterRoleMode                = "EveryoneUserOverride";
            EnrollUserOverride                         = "Disabled";
            Ensure                                     = "Present";
            GlobalAdminAccount                         = $Credsglobaladmin;
            Identity                                   = "Tag:Kiosk";
            IPAudioMode                                = "EnabledOutgoingIncoming";
            IPVideoMode                                = "EnabledOutgoingIncoming";
            LiveCaptionsEnabledType                    = "Disabled";
            MediaBitRateKb                             = 50000;
            MeetingChatEnabledType                     = "Enabled";
            PreferredMeetingProviderForIslandsMode     = "TeamsAndSfb";
            RecordingStorageMode                       = "OneDriveForBusiness";
            ScreenSharingMode                          = "EntireScreen";
            StreamingAttendeeMode                      = "Disabled";
            TeamsCameraFarEndPTZMode                   = "Disabled";
            VideoFiltersMode                           = "AllFilters";
        }
        TeamsMessagingPolicy 1224d3b3-e682-439f-b7ee-e87dddea5de5
        {
            AllowGiphy                    = $True;
            AllowImmersiveReader          = $True;
            AllowMemes                    = $True;
            AllowOwnerDeleteMessage       = $False;
            AllowPriorityMessages         = $True;
            AllowRemoveUser               = $True;
            AllowStickers                 = $True;
            AllowUrlPreviews              = $True;
            AllowUserChat                 = $True;
            AllowUserDeleteMessage        = $True;
            AllowUserEditMessage          = $True;
            AllowUserTranslation          = $True;
            AudioMessageEnabledType       = "ChatsAndChannels";
            ChannelsInChatListEnabledType = "DisabledUserOverride";
            Ensure                        = "Present";
            GiphyRatingType               = "Moderate";
            GlobalAdminAccount            = $Credsglobaladmin;
            Identity                      = "Global";
            ReadReceiptsEnabledType       = "UserPreference";
        }
        TeamsMessagingPolicy fa19c659-f2bd-4b5a-8ae6-df82d6d5e445
        {
            AllowGiphy                    = $True;
            AllowImmersiveReader          = $True;
            AllowMemes                    = $False;
            AllowOwnerDeleteMessage       = $False;
            AllowPriorityMessages         = $True;
            AllowRemoveUser               = $False;
            AllowStickers                 = $True;
            AllowUrlPreviews              = $False;
            AllowUserChat                 = $True;
            AllowUserDeleteMessage        = $False;
            AllowUserEditMessage          = $True;
            AllowUserTranslation          = $True;
            AudioMessageEnabledType       = "ChatsOnly";
            ChannelsInChatListEnabledType = "EnabledUserOverride";
            Description                   = "My sample policy";
            Ensure                        = "Present";
            GiphyRatingType               = "Moderate";
            GlobalAdminAccount            = $Credsglobaladmin;
            Identity                      = "TestPolicy";
            ReadReceiptsEnabledType       = "UserPreference";
        }
        TeamsMessagingPolicy 4e2a86ee-e05f-4116-8734-1d8cb3d7550c
        {
            AllowGiphy                    = $True;
            AllowImmersiveReader          = $True;
            AllowMemes                    = $True;
            AllowOwnerDeleteMessage       = $True;
            AllowPriorityMessages         = $True;
            AllowRemoveUser               = $True;
            AllowStickers                 = $True;
            AllowUrlPreviews              = $True;
            AllowUserChat                 = $True;
            AllowUserDeleteMessage        = $True;
            AllowUserEditMessage          = $True;
            AllowUserTranslation          = $False;
            AudioMessageEnabledType       = "ChatsAndChannels";
            ChannelsInChatListEnabledType = "DisabledUserOverride";
            Ensure                        = "Present";
            GiphyRatingType               = "Moderate";
            GlobalAdminAccount            = $Credsglobaladmin;
            Identity                      = "Contoso - Allow Delete";
            ReadReceiptsEnabledType       = "UserPreference";
        }
        TeamsMessagingPolicy 36c5cccc-02df-4167-b736-ec5242a63a11
        {
            AllowGiphy                    = $True;
            AllowImmersiveReader          = $True;
            AllowMemes                    = $True;
            AllowOwnerDeleteMessage       = $False;
            AllowPriorityMessages         = $True;
            AllowRemoveUser               = $True;
            AllowStickers                 = $True;
            AllowUrlPreviews              = $True;
            AllowUserChat                 = $True;
            AllowUserDeleteMessage        = $True;
            AllowUserEditMessage          = $True;
            AllowUserTranslation          = $True;
            AudioMessageEnabledType       = "ChatsAndChannels";
            ChannelsInChatListEnabledType = "DisabledUserOverride";
            Ensure                        = "Present";
            GiphyRatingType               = "Moderate";
            GlobalAdminAccount            = $Credsglobaladmin;
            Identity                      = "Default";
            ReadReceiptsEnabledType       = "UserPreference";
        }
        TeamsMessagingPolicy 9e14eb61-38ea-4652-8b55-3742c4c74de5
        {
            AllowGiphy                    = $False;
            AllowImmersiveReader          = $True;
            AllowMemes                    = $True;
            AllowOwnerDeleteMessage       = $True;
            AllowPriorityMessages         = $True;
            AllowRemoveUser               = $True;
            AllowStickers                 = $True;
            AllowUrlPreviews              = $True;
            AllowUserChat                 = $True;
            AllowUserDeleteMessage        = $True;
            AllowUserEditMessage          = $True;
            AllowUserTranslation          = $True;
            AudioMessageEnabledType       = "ChatsAndChannels";
            ChannelsInChatListEnabledType = "DisabledUserOverride";
            Ensure                        = "Present";
            GiphyRatingType               = "Strict";
            GlobalAdminAccount            = $Credsglobaladmin;
            Identity                      = "EduFaculty";
            ReadReceiptsEnabledType       = "UserPreference";
        }
        TeamsMessagingPolicy 1c16d622-a6fa-4669-8792-c4f244298b8d
        {
            AllowGiphy                    = $False;
            AllowImmersiveReader          = $True;
            AllowMemes                    = $True;
            AllowOwnerDeleteMessage       = $False;
            AllowPriorityMessages         = $True;
            AllowRemoveUser               = $True;
            AllowStickers                 = $True;
            AllowUrlPreviews              = $True;
            AllowUserChat                 = $True;
            AllowUserDeleteMessage        = $True;
            AllowUserEditMessage          = $True;
            AllowUserTranslation          = $True;
            AudioMessageEnabledType       = "ChatsAndChannels";
            ChannelsInChatListEnabledType = "DisabledUserOverride";
            Ensure                        = "Present";
            GiphyRatingType               = "Strict";
            GlobalAdminAccount            = $Credsglobaladmin;
            Identity                      = "EduStudent";
            ReadReceiptsEnabledType       = "UserPreference";
        }
        TeamsPstnUsage 50651d3c-c027-4f38-90d1-96d9af5e8018
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Usage                = "O365-Usage";
        }
        TeamsPstnUsage e15f0ea2-902b-4316-99c3-c6a919953749
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Usage                = "AllCalls";
        }
        TeamsPstnUsage 7a9870b7-8117-4be4-b7a2-8e0aa09841a4
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Usage                = "SBC9870Calls";
        }
        TeamsPstnUsage 782faa6c-e39a-42eb-ade3-e99675976ef3
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Usage                = "SBC9869Calls";
        }
        TeamsPstnUsage 0aab4cfb-7ecb-402f-b731-97ba6abee404
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Usage                = "SBC9871Calls";
        }
        TeamsUpgradeConfiguration 65e26553-9431-4139-a839-288214166a93
        {
            DownloadTeams        = $True;
            GlobalAdminAccount   = $Credsglobaladmin;
            IsSingleInstance     = "Yes";
            SfBMeetingJoinUx     = "NativeLimitedClient";
        }
        TeamsUpgradePolicy 7351eb4a-e1de-4e0c-b253-4ac7ed9e9323
        {
            GlobalAdminAccount     = $Credsglobaladmin;
            Identity               = "Global";
            MigrateMeetingsToTeams = $False;
            Users                  = @();
        }
        TeamsUpgradePolicy dac74540-d7cd-4b5e-bd09-371cc21cca63
        {
            GlobalAdminAccount     = $Credsglobaladmin;
            Identity               = "UpgradeToTeams";
            MigrateMeetingsToTeams = $False;
            Users                  = @("Brian.Lalancette@$OrganizationName");
        }
        TeamsUpgradePolicy a86f774c-4965-4d00-8d3d-8ef82fe84e0c
        {
            GlobalAdminAccount     = $Credsglobaladmin;
            Identity               = "Islands";
            MigrateMeetingsToTeams = $False;
            Users                  = @();
        }
        TeamsUpgradePolicy 91db1654-40af-4f9d-8843-c855786632cb
        {
            GlobalAdminAccount     = $Credsglobaladmin;
            Identity               = "IslandsWithNotify";
            MigrateMeetingsToTeams = $False;
            Users                  = @();
        }
        TeamsUpgradePolicy d12a471e-694c-4528-b43f-7919d15c75a0
        {
            GlobalAdminAccount     = $Credsglobaladmin;
            Identity               = "SfBOnly";
            MigrateMeetingsToTeams = $False;
            Users                  = @();
        }
        TeamsUpgradePolicy 04d3fe77-1adc-43e2-b4f1-ed965e4203c2
        {
            GlobalAdminAccount     = $Credsglobaladmin;
            Identity               = "SfBOnlyWithNotify";
            MigrateMeetingsToTeams = $False;
            Users                  = @();
        }
        TeamsUpgradePolicy 3383d962-413e-48b0-b1e1-6ca318eb0f38
        {
            GlobalAdminAccount     = $Credsglobaladmin;
            Identity               = "SfBWithTeamsCollab";
            MigrateMeetingsToTeams = $False;
            Users                  = @();
        }
        TeamsUpgradePolicy 4397df37-619b-4f14-8459-fd01c25387b1
        {
            GlobalAdminAccount     = $Credsglobaladmin;
            Identity               = "SfBWithTeamsCollabWithNotify";
            MigrateMeetingsToTeams = $False;
            Users                  = @();
        }
        TeamsUpgradePolicy ee6b9c9c-3584-46de-badb-5f94ac805d98
        {
            GlobalAdminAccount     = $Credsglobaladmin;
            Identity               = "SfBWithTeamsCollabAndMeetings";
            MigrateMeetingsToTeams = $False;
            Users                  = @();
        }
        TeamsUpgradePolicy 3ea3cd90-38ae-43c8-a0ea-340b931e8b6c
        {
            GlobalAdminAccount     = $Credsglobaladmin;
            Identity               = "SfBWithTeamsCollabAndMeetingsWithNotify";
            MigrateMeetingsToTeams = $False;
            Users                  = @();
        }
        TeamsVoiceRoute 01480d97-540f-44e8-a381-fd468e498048
        {
            Ensure                = "Present";
            GlobalAdminAccount    = $Credsglobaladmin;
            Identity              = "LocalRoute";
            NumberPattern         = "^(\+1[0-9]{10})$";
            OnlinePstnGatewayList = @();
            OnlinePstnUsages      = @();
            Priority              = 0;
        }
        TeamsVoiceRoutingPolicy b1fbcd12-7275-45d6-8086-633a8dc78ab2
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Identity             = "Global";
            OnlinePstnUsages     = @("SBC9870Calls","SBC9869Calls");
        }
        TeamsVoiceRoutingPolicy 3a53d6c4-4023-461c-93e9-473030b72859
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Identity             = "Tag:3CX Voice Routing";
            OnlinePstnUsages     = @("O365-Usage");
        }
        TeamsVoiceRoutingPolicy 1a46de33-d916-4728-82e2-cb543a5b196e
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Identity             = "Tag:AUS Only";
            OnlinePstnUsages     = @("AllCalls");
        }
        TeamsVoiceRoutingPolicy eda8a6b2-663a-4871-b81a-4001fd5d528b
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Identity             = "Tag:3CX1 Voice Routing Policy";
            OnlinePstnUsages     = @("SBC9870Calls","SBC9869Calls");
        }
        TeamsVoiceRoutingPolicy 7e1e2f42-d1e7-498f-a12c-fe9bdbc95b15
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Identity             = "Tag:SBC Only";
            OnlinePstnUsages     = @("SBC9869Calls");
        }
        TeamsVoiceRoutingPolicy 03913ec3-afe6-4522-a1d4-bc9aa311554a
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Identity             = "Tag:SBC1 Only";
            OnlinePstnUsages     = @("SBC9870Calls");
        }
        TeamsVoiceRoutingPolicy 3c166357-ed0c-46f7-916d-a68e5d0f1805
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Identity             = "Tag:SBC3 Only";
            OnlinePstnUsages     = @("SBC9871Calls");
        }
    }
}
M365TenantConfig -ConfigurationData .\ConfigurationData.psd1 -GlobalAdminAccount $GlobalAdminAccount
