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
        EXOAtpPolicyForO365 f41177de-9108-4f8b-8683-f9e447dfc6f0
        {
            AllowClickThrough         = $False;
            BlockUrls                 = @();
            EnableATPForSPOTeamsODB   = $False;
            EnableSafeLinksForClients = $False;
            Ensure                    = "Present";
            GlobalAdminAccount        = $Credsglobaladmin;
            Identity                  = "$OrganizationName\Default";
            IsSingleInstance          = "Yes";
            TrackClicks               = $False;
        }
        EXOCASMailboxPlan 0ddcb9bb-6c31-483d-b722-f7b49f4f9896
        {
            ActiveSyncEnabled    = $True;
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Identity             = "ExchangeOnline";
            ImapEnabled          = $True;
            OwaMailboxPolicy     = "OwaMailboxPolicy-Default";
            PopEnabled           = $True;
        }
        EXOCASMailboxPlan d24c6ada-cd6e-4ff7-b881-d909b297bc78
        {
            ActiveSyncEnabled    = $True;
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Identity             = "ExchangeOnlineEnterprise";
            ImapEnabled          = $True;
            OwaMailboxPolicy     = "OwaMailboxPolicy-Default";
            PopEnabled           = $True;
        }
        EXOCASMailboxPlan a62e9580-dd73-4f41-b43b-a15ad629b9cc
        {
            ActiveSyncEnabled    = $True;
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Identity             = "ExchangeOnlineDeskless";
            ImapEnabled          = $False;
            OwaMailboxPolicy     = "OwaMailboxPolicy-Default";
            PopEnabled           = $True;
        }
        EXOCASMailboxPlan f13d3844-5750-42f1-9e6f-39ea6d796908
        {
            ActiveSyncEnabled    = $True;
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Identity             = "ExchangeOnlineEssentials";
            ImapEnabled          = $True;
            OwaMailboxPolicy     = "OwaMailboxPolicy-Default";
            PopEnabled           = $True;
        }
        EXODkimSigningConfig 2c285b01-533f-4321-a385-f9782c762667
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
        EXOEmailAddressPolicy f22cc142-c9c2-40ab-a00b-52a480f89382
        {
            EnabledEmailAddressTemplates      = @("SMTP:@$OrganizationName");
            EnabledPrimarySMTPAddressTemplate = "@$OrganizationName";
            Ensure                            = "Present";
            GlobalAdminAccount                = $Credsglobaladmin;
            ManagedByFilter                   = "";
            Name                              = "Default Policy";
            Priority                          = "Lowest";
        }
        EXOHostedConnectionFilterPolicy 3131729b-7623-4f7b-ab18-5d97b02cd372
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
        EXOHostedContentFilterPolicy 18961e77-9f10-4969-b266-e5de24dcc02f
        {
            AddXHeaderValue                       = "";
            AdminDisplayName                      = "";
            AllowedSenderDomains                  = @();
            AllowedSenders                        = @();
            BlockedSenderDomains                  = @();
            BlockedSenders                        = @();
            BulkSpamAction                        = "MoveToJmf";
            BulkThreshold                         = 7;
            DownloadLink                          = $False;
            EnableEndUserSpamNotifications        = $False;
            EnableLanguageBlockList               = $False;
            EnableRegionBlockList                 = $False;
            EndUserSpamNotificationCustomFromName = "";
            EndUserSpamNotificationCustomSubject  = "";
            EndUserSpamNotificationFrequency      = 3;
            EndUserSpamNotificationLanguage       = "Default";
            Ensure                                = "Present";
            GlobalAdminAccount                    = $Credsglobaladmin;
            HighConfidenceSpamAction              = "MoveToJmf";
            Identity                              = "Default";
            IncreaseScoreWithBizOrInfoUrls        = "Off";
            IncreaseScoreWithImageLinks           = "Off";
            IncreaseScoreWithNumericIps           = "Off";
            IncreaseScoreWithRedirectToOtherPort  = "Off";
            InlineSafetyTipsEnabled               = $True;
            LanguageBlockList                     = @();
            MakeDefault                           = $True;
            MarkAsSpamBulkMail                    = "On";
            MarkAsSpamEmbedTagsInHtml             = "Off";
            MarkAsSpamEmptyMessages               = "Off";
            MarkAsSpamFormTagsInHtml              = "Off";
            MarkAsSpamFramesInHtml                = "Off";
            MarkAsSpamFromAddressAuthFail         = "Off";
            MarkAsSpamJavaScriptInHtml            = "Off";
            MarkAsSpamNdrBackscatter              = "Off";
            MarkAsSpamObjectTagsInHtml            = "Off";
            MarkAsSpamSensitiveWordList           = "Off";
            MarkAsSpamSpfRecordHardFail           = "Off";
            MarkAsSpamWebBugsInHtml               = "Off";
            ModifySubjectValue                    = "";
            PhishSpamAction                       = "MoveToJmf";
            QuarantineRetentionPeriod             = 15;
            RedirectToRecipients                  = @();
            RegionBlockList                       = @();
            SpamAction                            = "MoveToJmf";
            TestModeAction                        = "None";
            TestModeBccToRecipients               = @();
            ZapEnabled                            = $True;
        }
        EXOHostedOutboundSpamFilterPolicy 567ec5f9-f27c-4f1d-b701-477db6a5d87c
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
        EXOMailTips 1977c83f-47bb-4970-91d2-87b45146ab3b
        {
            Ensure                                = "Present";
            GlobalAdminAccount                    = $Credsglobaladmin;
            MailTipsAllTipsEnabled                = $True;
            MailTipsExternalRecipientsTipsEnabled = $False;
            MailTipsGroupMetricsEnabled           = $True;
            MailTipsLargeAudienceThreshold        = 25;
            MailTipsMailboxSourcedTipsEnabled     = $True;
            Organization                          = $OrganizationName;
        }
        EXOMalwareFilterPolicy 1ac71ba0-4f84-431a-964a-214e93e6bf77
        {
            Action                                 = "DeleteMessage";
            AdminDisplayName                       = "";
            CustomAlertText                        = "";
            CustomExternalBody                     = "";
            CustomExternalSubject                  = "";
            CustomFromName                         = "";
            CustomInternalBody                     = "";
            CustomInternalSubject                  = "";
            CustomNotifications                    = $False;
            EnableExternalSenderAdminNotifications = $False;
            EnableExternalSenderNotifications      = $False;
            EnableFileFilter                       = $False;
            EnableInternalSenderAdminNotifications = $False;
            EnableInternalSenderNotifications      = $False;
            Ensure                                 = "Present";
            ExternalSenderAdminAddress             = "";
            FileTypes                              = @("ace","ani","app","docm","exe","jar","reg","scr","vbe","vbs");
            GlobalAdminAccount                     = $Credsglobaladmin;
            Identity                               = "Default";
            InternalSenderAdminAddress             = "";
            ZapEnabled                             = $True;
        }
        EXOMobileDeviceMailboxPolicy 9387e41c-d4f8-434a-b57d-19feda389e11
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
        EXOOrganizationConfig f5774744-39d5-4f68-b409-c12d0effc339
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
            DefaultPublicFolderIssueWarningQuota                      = "1.7 GB (1,825,361,920 bytes)";
            DefaultPublicFolderMaxItemSize                            = "Unlimited";
            DefaultPublicFolderMovedItemRetention                     = "7.00:00:00";
            DefaultPublicFolderProhibitPostQuota                      = "2 GB (2,147,483,648 bytes)";
            DirectReportsGroupAutoCreationEnabled                     = $False;
            DistributionGroupNameBlockedWordsList                     = @();
            DistributionGroupNamingPolicy                             = "";
            ElcProcessingDisabled                                     = $False;
            EndUserDLUpgradeFlowsDisabled                             = $False;
            ExchangeNotificationEnabled                               = $True;
            ExchangeNotificationRecipients                            = @();
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
        EXOOwaMailboxPolicy 943853fb-9f15-4d13-a458-c19c390f4745
        {
            ActionForUnknownFileAndMIMETypes                     = "Allow";
            ActiveSyncIntegrationEnabled                         = $True;
            AdditionalStorageProvidersAvailable                  = $True;
            AllAddressListsEnabled                               = $True;
            AllowCopyContactsToDeviceAddressBook                 = $True;
            AllowedFileTypes                                     = @(".rpmsg",".xlsx",".xlsm",".xlsb",".vstx",".vstm",".vssx",".vssm",".vsdx",".vsdm",".tiff",".pptx",".pptm",".ppsx",".ppsm",".docx",".docm",".zip",".xls",".wmv",".wma",".wav",".vtx",".vsx",".vst",".vss",".vsd",".vdx",".txt",".tif",".rtf",".pub",".ppt",".png",".pdf",".one",".mp3",".jpg",".gif",".doc",".csv",".bmp",".avi");
            AllowedMimeTypes                                     = @("image/jpeg","image/png","image/gif","image/bmp");
            BlockedFileTypes                                     = @(".settingcontent-ms",".printerexport",".appcontent-ms",".appref-ms",".vsmacros",".website",".msh2xml",".msh1xml",".diagcab",".webpnp",".ps2xml",".ps1xml",".mshxml",".gadget",".theme",".psdm1",".mhtml",".cdxml",".xbap",".vhdx",".pyzw",".pssc",".psd1",".psc2",".psc1",".msh2",".msh1",".jnlp",".aspx",".appx",".xnk",".xll",".wsh",".wsf",".wsc",".wsb",".vsw",".vhd",".vbs",".vbp",".vbe",".url",".udl",".tmp",".shs",".shb",".sct",".scr",".scf",".reg",".pyz",".pyw",".pyo",".pyc",".pst",".ps2",".ps1",".prg",".prf",".plg",".pif",".pcd",".osd",".ops",".msu",".mst",".msp",".msi",".msh",".msc",".mht",".mdz",".mdw",".mdt",".mde",".mdb",".mda",".mcf",".maw",".mav",".mau",".mat",".mas",".mar",".maq",".mam",".mag",".maf",".mad",".lnk",".ksh",".jse",".jar",".its",".isp",".ins",".inf",".htc",".hta",".hpj",".hlp",".grp",".fxp",".exe",".der",".csh",".crt",".cpl",".com",".cnt",".cmd",".chm",".cer",".bat",".bas",".asx",".asp",".app",".apk",".adp",".ade",".ws",".vb",".py",".pl",".js");
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
            ForceSaveFileTypes                                   = @(".svgz",".html",".xml",".swf",".svg",".spl",".htm",".dir",".dcr");
            ForceSaveMimeTypes                                   = @("Application/x-shockwave-flash","Application/octet-stream","Application/futuresplash","Application/x-director","application/xml","image/svg+xml","text/html","text/xml");
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
        EXORemoteDomain c7c5cdb1-390c-44c5-908a-2fbba030cec7
        {
            AllowedOOFType                       = "External";
            AutoForwardEnabled                   = $True;
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
        EXOSharingPolicy a9262a09-644a-4f91-ac74-30f8b0066d71
        {
            Default              = $True;
            Domains              = @("Anonymous:CalendarSharingFreeBusyReviewer","*:CalendarSharingFreeBusySimple");
            Enabled              = $True;
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Default Sharing Policy";
        }
        O365AdminAuditLogConfig 8f98f83e-417a-4475-9401-40c5e15b4418
        {
            Ensure                          = "Present";
            GlobalAdminAccount              = $Credsglobaladmin;
            IsSingleInstance                = "Yes";
            UnifiedAuditLogIngestionEnabled = "Disabled";
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
        SCFilePlanPropertyAuthority f24285cd-d3f5-4e31-8b5c-5ed6470d406e
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Business";
        }
        SCFilePlanPropertyAuthority 32a86548-2822-4740-b4ee-1d8a55839c2b
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Legal";
        }
        SCFilePlanPropertyAuthority 63357a66-5744-41fe-99fe-c7378836f184
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Regulatory";
        }
        SCFilePlanPropertyCategory 1d33a645-aec0-408d-bea8-4d9188feb9d8
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Accounts payable";
        }
        SCFilePlanPropertyCategory 6588f630-ac7f-445e-bd64-68659eda4828
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Accounts receivable";
        }
        SCFilePlanPropertyCategory b79e91b3-8d07-47bf-b35b-62602d8e53d9
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Administration";
        }
        SCFilePlanPropertyCategory 6b74c7e6-e357-4e11-a2fd-cec884b117b9
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Compliance";
        }
        SCFilePlanPropertyCategory 872d6425-1d72-4660-8ed2-59b164446061
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Contracting";
        }
        SCFilePlanPropertyCategory ac49428d-9ca1-467e-9f02-477cabd3d269
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Financial statements";
        }
        SCFilePlanPropertyCategory 62fe1998-aa2b-49a2-a941-ba7485fe144a
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Learning and development";
        }
        SCFilePlanPropertyCategory 4926ed63-2222-44da-821b-e0d77afda5dc
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Planning";
        }
        SCFilePlanPropertyCategory 109f546f-10cf-4bbb-984c-ea74f81ff8af
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Payroll";
        }
        SCFilePlanPropertyCategory b4f02e20-e814-4fcd-86f9-87a8067fca75
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Policies and procedures";
        }
        SCFilePlanPropertyCategory a32ec4c8-4edf-480b-97a3-92880c1c0d2d
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Procurement";
        }
        SCFilePlanPropertyCategory 8195fb99-c76b-404b-a53d-388dee753294
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Recruiting and hiring";
        }
        SCFilePlanPropertyCategory d1854df6-553e-4cd0-bf4b-b2e11dd8013f
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Research and development";
        }
        SCFilePlanPropertyCitation ad122621-2d68-428f-961e-4a487aab6c9a
        {
            CitationJurisdiction = "U.S. Futures Commodity Trading Commission (UCFTC)";
            CitationUrl          = "https://www.cftc.gov/LawRegulation/CommodityExchangeAct/index.htm";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Commodity Exchange Act";
        }
        SCFilePlanPropertyCitation 77089b65-251d-441a-b982-759e7090e412
        {
            CitationJurisdiction = "U.S. Securities and Exchange Commission (SEC)";
            CitationUrl          = "https://www.sec.gov/answers/about-lawsshtml.html#sox2002";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Sarbanes-Oxley Act of 2002";
        }
        SCFilePlanPropertyCitation c68e3f95-b6a5-49e6-b77b-c05f582bfc42
        {
            CitationJurisdiction = "Federal Trade Commission (FTC)";
            CitationUrl          = "https://www.ftc.gov/enforcement/statutes/truth-lending-act";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Truth in lending Act";
        }
        SCFilePlanPropertyCitation 5b88cbd7-5149-4ca2-88bc-a972c12c7027
        {
            CitationJurisdiction = "U.S. Department of Health & Human Services (HHS)";
            CitationUrl          = "https://aspe.hhs.gov/report/health-insurance-portability-and-accountability-act-1996";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Health Insurance Portability and Accountability Act of 1996";
        }
        SCFilePlanPropertyCitation a3b07c8e-391e-469c-baae-92ad4f1955c2
        {
            CitationJurisdiction = "U.S. Department of Labor (DOL)";
            CitationUrl          = "https://www.osha.gov/recordkeeping/index.html";
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "OSHA Injury and Illness Recordkeeping and Reporting Requirements";
        }
        SCFilePlanPropertyDepartment cbebd134-4aa6-484e-861e-244c49b612b1
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Finance";
        }
        SCFilePlanPropertyDepartment a151b4c7-c24b-4dbe-bd74-78b7c6063df0
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Human resources";
        }
        SCFilePlanPropertyDepartment f21ee5bc-c9b1-4b45-baba-35a7213d2d17
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Information technology";
        }
        SCFilePlanPropertyDepartment 53264d2b-3a54-41c2-b62e-bf70caf476b5
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Legal";
        }
        SCFilePlanPropertyDepartment c4818bba-76dd-4a17-aff9-ebb0c1e66c54
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Marketing";
        }
        SCFilePlanPropertyDepartment de5583b3-2a91-48e8-abe9-100a3b774bfb
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Operations";
        }
        SCFilePlanPropertyDepartment 12e1249a-6872-4caa-98c4-d12d1c49fd56
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Procurement";
        }
        SCFilePlanPropertyDepartment 6527fdac-633e-4df4-83e0-41b90e10fcf7
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Products";
        }
        SCFilePlanPropertyDepartment 5f4bd03a-819c-46c7-bb97-0493931b5f80
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Sales";
        }
        SCFilePlanPropertyDepartment e0a9641e-0955-475a-ac87-6e5ccacc30b5
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Name                 = "Services";
        }
        SCSensitivityLabel 8888b275-0181-4599-8fb5-5da889733bf5
        {
            Comment              = "";
            Disabled             = $False;
            DisplayName          = "License Plate Info";
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
                            Value = 'License Plate Info'
                        }
                        MSFT_SCLabelSetting
                        {
                            Key   = 'en-us'
                            Value = 'License Plate Info'
                        }
                        MSFT_SCLabelSetting
                        {
                            Key   = 'fr-ca'
                            Value = 'Information de plaque immatriculation'
                        }
                    )
                }
            );
            Name                 = "LicensePlateInfo";
            Priority             = 0;
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
        SPOHomeSite 359b85d3-b8c2-4248-a24b-b4cb75d2295f
        {
            Ensure               = "Absent";
            GlobalAdminAccount   = $Credsglobaladmin;
            IsSingleInstance     = "Yes";
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
        SPOTenantCDNPolicy e68257c1-e9f0-4964-9215-e2de1eaa3de7
        {
            CDNType                              = "Public";
            ExcludeRestrictedSiteClassifications = @();
            GlobalAdminAccount                   = $Credsglobaladmin;
            IncludeFileExtensions                = @();
        }
        SPOTenantCDNPolicy 793bac36-6e5b-431f-8547-f82e7a25e850
        {
            CDNType                              = "Private";
            ExcludeRestrictedSiteClassifications = @();
            GlobalAdminAccount                   = $Credsglobaladmin;
            IncludeFileExtensions                = @();
        }
        SPOTenantSettings efc76a70-cfbf-4eee-bd6e-655014e08b7a
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
            RequireAcceptingAccountMatchInvitedAccount    = $True;
            SearchResolveExactEmailOrUPN                  = $False;
            SignInAccelerationDomain                      = "";
            UseFindPeopleInPeoplePicker                   = $False;
            UsePersistentCookiesForExplorerView           = $False;
            UserVoiceForFeedbackEnabled                   = $True;
        }
        TeamsCallingPolicy da5650dc-ec91-4026-be93-0905087e899d
        {
            AllowCallForwardingToPhone = $True;
            AllowCallForwardingToUser  = $True;
            AllowCallGroups            = $True;
            AllowDelegation            = $True;
            AllowPrivateCalling        = $True;
            AllowVoicemail             = "UserOverride";
            BusyOnBusyEnabledType      = "Disabled";
            Ensure                     = "Present";
            GlobalAdminAccount         = $Credsglobaladmin;
            Identity                   = "Global";
            PreventTollBypass          = $False;
        }
        TeamsCallingPolicy 361a9878-85d1-4125-935f-35c1c8f4be79
        {
            AllowCallForwardingToPhone = $True;
            AllowCallForwardingToUser  = $True;
            AllowCallGroups            = $True;
            AllowDelegation            = $True;
            AllowPrivateCalling        = $True;
            AllowVoicemail             = "UserOverride";
            BusyOnBusyEnabledType      = "Disabled";
            Ensure                     = "Present";
            GlobalAdminAccount         = $Credsglobaladmin;
            Identity                   = "Tag:AllowCalling";
            PreventTollBypass          = $False;
        }
        TeamsCallingPolicy 86017a6a-8992-412b-a182-117d9cf5d443
        {
            AllowCallForwardingToPhone = $False;
            AllowCallForwardingToUser  = $False;
            AllowCallGroups            = $False;
            AllowDelegation            = $False;
            AllowPrivateCalling        = $False;
            AllowVoicemail             = "AlwaysDisabled";
            BusyOnBusyEnabledType      = "Disabled";
            Ensure                     = "Present";
            GlobalAdminAccount         = $Credsglobaladmin;
            Identity                   = "Tag:DisallowCalling";
            PreventTollBypass          = $False;
        }
        TeamsCallingPolicy 90abeef4-502b-433b-b56f-99a13102be92
        {
            AllowCallForwardingToPhone = $True;
            AllowCallForwardingToUser  = $True;
            AllowCallGroups            = $True;
            AllowDelegation            = $True;
            AllowPrivateCalling        = $True;
            AllowVoicemail             = "UserOverride";
            BusyOnBusyEnabledType      = "Disabled";
            Ensure                     = "Present";
            GlobalAdminAccount         = $Credsglobaladmin;
            Identity                   = "Tag:AllowCallingPreventTollBypass";
            PreventTollBypass          = $True;
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
        TeamsChannelsPolicy 0a3a70bd-334c-4a8c-a43f-9400374af3be
        {
            AllowOrgWideTeamCreation    = $True;
            AllowPrivateChannelCreation = $True;
            AllowPrivateTeamDiscovery   = $True;
            Ensure                      = "Present";
            GlobalAdminAccount          = $Credsglobaladmin;
            Identity                    = "Tag:Default";
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
        TeamsEmergencyCallingPolicy 30ee6d3e-7363-422a-9299-cc56804c0dd0
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Identity             = "Global";
        }
        TeamsEmergencyCallRoutingPolicy b1b24796-c89f-49a7-a537-6beefe6fe9b9
        {
            AllowEnhancedEmergencyServices = $False;
            Ensure                         = "Present";
            GlobalAdminAccount             = $Credsglobaladmin;
            Identity                       = "Global";
        }
        TeamsGuestCallingConfiguration ea780fd6-8bde-4973-b5d6-a00302b57364
        {
            AllowPrivateCalling  = $True;
            GlobalAdminAccount   = $Credsglobaladmin;
            Identity             = "Global";
        }
        TeamsGuestMeetingConfiguration e0b2062b-215e-4cce-a198-642362c1839e
        {
            AllowIPVideo         = $True;
            AllowMeetNow         = $True;
            GlobalAdminAccount   = $Credsglobaladmin;
            Identity             = "Global";
            ScreenSharingMode    = "EntireScreen";
        }
        TeamsGuestMessagingConfiguration 294cd26b-02f3-4c32-aac5-85fcbdfa0a1b
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
        TeamsMeetingBroadcastConfiguration 5bbd70cf-6f3e-4fe5-928b-f5497ef1a58e
        {
            AllowSdnProviderForBroadcastMeeting = $False;
            GlobalAdminAccount                  = $Credsglobaladmin;
            Identity                            = "Global";
            SdnApiTemplateUrl                   = "";
            SdnApiToken                         = $ConfigurationData.Settings.SdnApiToken;
            SdnLicenseId                        = "";
            SdnProviderName                     = "";
            SupportURL                          = "https://support.office.com/home/contact";
        }
        TeamsMeetingBroadcastPolicy b46e7bbf-5db6-45eb-b9c4-39c339593ed4
        {
            AllowBroadcastScheduling        = $True;
            AllowBroadcastTranscription     = $False;
            BroadcastAttendeeVisibilityMode = "EveryoneInCompany";
            BroadcastRecordingMode          = "AlwaysEnabled";
            Ensure                          = "Present";
            GlobalAdminAccount              = $Credsglobaladmin;
            Identity                        = "Global";
        }
        TeamsMeetingBroadcastPolicy e9510b97-4f1b-4f46-9f07-2aba3ba158ee
        {
            AllowBroadcastScheduling        = $True;
            AllowBroadcastTranscription     = $False;
            BroadcastAttendeeVisibilityMode = "EveryoneInCompany";
            BroadcastRecordingMode          = "AlwaysEnabled";
            Ensure                          = "Present";
            GlobalAdminAccount              = $Credsglobaladmin;
            Identity                        = "Tag:Default";
        }
        TeamsMeetingConfiguration e3b4cf9e-0c5f-402b-ae50-0a7d08ecef5c
        {
            ClientAppSharingPort        = 50040;
            ClientAppSharingPortRange   = 20;
            ClientAudioPort             = 50000;
            ClientAudioPortRange        = 20;
            ClientMediaPortRangeEnabled = $True;
            ClientVideoPort             = 50020;
            ClientVideoPortRange        = 20;
            DisableAnonymousJoin        = $False;
            EnableQoS                   = $False;
            GlobalAdminAccount          = $Credsglobaladmin;
            Identity                    = "Global";
        }
        TeamsMeetingPolicy 78ee193b-5ac3-4494-8c6f-68dfc2abdbc5
        {
            AllowAnonymousUsersToStartMeeting          = $False;
            AllowChannelMeetingScheduling              = $True;
            AllowCloudRecording                        = $True;
            AllowExternalParticipantGiveRequestControl = $False;
            AllowIPVideo                               = $True;
            AllowMeetNow                               = $True;
            AllowOutlookAddIn                          = $True;
            AllowParticipantGiveRequestControl         = $True;
            AllowPowerPointSharing                     = $True;
            AllowPrivateMeetingScheduling              = $True;
            AllowSharedNotes                           = $True;
            AllowTranscription                         = $False;
            AllowWhiteboard                            = $True;
            AutoAdmittedUsers                          = "EveryoneInCompany";
            Ensure                                     = "Present";
            GlobalAdminAccount                         = $Credsglobaladmin;
            Identity                                   = "Global";
            MediaBitRateKb                             = 50000;
            ScreenSharingMode                          = "EntireScreen";
        }
        TeamsMeetingPolicy 5bf67253-49b2-47db-aba1-b5dc4117a4f6
        {
            AllowAnonymousUsersToStartMeeting          = $False;
            AllowChannelMeetingScheduling              = $True;
            AllowCloudRecording                        = $True;
            AllowExternalParticipantGiveRequestControl = $False;
            AllowIPVideo                               = $True;
            AllowMeetNow                               = $True;
            AllowOutlookAddIn                          = $True;
            AllowParticipantGiveRequestControl         = $True;
            AllowPowerPointSharing                     = $True;
            AllowPrivateMeetingScheduling              = $True;
            AllowSharedNotes                           = $True;
            AllowTranscription                         = $False;
            AllowWhiteboard                            = $True;
            AutoAdmittedUsers                          = "EveryoneInCompany";
            Ensure                                     = "Present";
            GlobalAdminAccount                         = $Credsglobaladmin;
            Identity                                   = "Tag:Nik Demo Policy 1";
            MediaBitRateKb                             = 50000;
            ScreenSharingMode                          = "EntireScreen";
        }
        TeamsMeetingPolicy 05e1214d-0147-46c2-a8dd-f94d294fea40
        {
            AllowAnonymousUsersToStartMeeting          = $False;
            AllowChannelMeetingScheduling              = $True;
            AllowCloudRecording                        = $True;
            AllowExternalParticipantGiveRequestControl = $False;
            AllowIPVideo                               = $True;
            AllowMeetNow                               = $True;
            AllowOutlookAddIn                          = $True;
            AllowParticipantGiveRequestControl         = $True;
            AllowPowerPointSharing                     = $True;
            AllowPrivateMeetingScheduling              = $True;
            AllowSharedNotes                           = $True;
            AllowTranscription                         = $False;
            AllowWhiteboard                            = $True;
            AutoAdmittedUsers                          = "EveryoneInCompany";
            Ensure                                     = "Present";
            GlobalAdminAccount                         = $Credsglobaladmin;
            Identity                                   = "Tag:Nik Demo Policy 2";
            MediaBitRateKb                             = 50000;
            ScreenSharingMode                          = "EntireScreen";
        }
        TeamsMeetingPolicy 3a3ef899-e7f6-4a13-885e-aaa5a6e37138
        {
            AllowAnonymousUsersToStartMeeting          = $False;
            AllowChannelMeetingScheduling              = $True;
            AllowCloudRecording                        = $True;
            AllowExternalParticipantGiveRequestControl = $False;
            AllowIPVideo                               = $True;
            AllowMeetNow                               = $True;
            AllowOutlookAddIn                          = $True;
            AllowParticipantGiveRequestControl         = $True;
            AllowPowerPointSharing                     = $True;
            AllowPrivateMeetingScheduling              = $True;
            AllowSharedNotes                           = $True;
            AllowTranscription                         = $False;
            AllowWhiteboard                            = $True;
            AutoAdmittedUsers                          = "EveryoneInCompany";
            Description                                = "Do not assign. This policy is same as global defaults and would be deprecated";
            Ensure                                     = "Present";
            GlobalAdminAccount                         = $Credsglobaladmin;
            Identity                                   = "Tag:AllOn";
            MediaBitRateKb                             = 50000;
            ScreenSharingMode                          = "EntireScreen";
        }
        TeamsMeetingPolicy 50bbaa81-b130-4480-be25-6008b0af346b
        {
            AllowAnonymousUsersToStartMeeting          = $False;
            AllowChannelMeetingScheduling              = $True;
            AllowCloudRecording                        = $True;
            AllowExternalParticipantGiveRequestControl = $False;
            AllowIPVideo                               = $True;
            AllowMeetNow                               = $True;
            AllowOutlookAddIn                          = $True;
            AllowParticipantGiveRequestControl         = $True;
            AllowPowerPointSharing                     = $True;
            AllowPrivateMeetingScheduling              = $True;
            AllowSharedNotes                           = $True;
            AllowTranscription                         = $False;
            AllowWhiteboard                            = $True;
            AutoAdmittedUsers                          = "EveryoneInCompany";
            Description                                = "Do not assign. This policy is same as global defaults and would be deprecated";
            Ensure                                     = "Present";
            GlobalAdminAccount                         = $Credsglobaladmin;
            Identity                                   = "Tag:RestrictedAnonymousAccess";
            MediaBitRateKb                             = 50000;
            ScreenSharingMode                          = "EntireScreen";
        }
        TeamsMeetingPolicy 1b73164b-3f54-4c37-adac-e0a36288e6ed
        {
            AllowAnonymousUsersToStartMeeting          = $False;
            AllowChannelMeetingScheduling              = $False;
            AllowCloudRecording                        = $False;
            AllowExternalParticipantGiveRequestControl = $False;
            AllowIPVideo                               = $False;
            AllowMeetNow                               = $False;
            AllowOutlookAddIn                          = $False;
            AllowParticipantGiveRequestControl         = $False;
            AllowPowerPointSharing                     = $False;
            AllowPrivateMeetingScheduling              = $False;
            AllowSharedNotes                           = $False;
            AllowTranscription                         = $False;
            AllowWhiteboard                            = $False;
            AutoAdmittedUsers                          = "EveryoneInCompany";
            Ensure                                     = "Present";
            GlobalAdminAccount                         = $Credsglobaladmin;
            Identity                                   = "Tag:AllOff";
            MediaBitRateKb                             = 50000;
            ScreenSharingMode                          = "Disabled";
        }
        TeamsMeetingPolicy 32e4826d-6107-4ec7-9928-4b9886175b03
        {
            AllowAnonymousUsersToStartMeeting          = $False;
            AllowChannelMeetingScheduling              = $True;
            AllowCloudRecording                        = $False;
            AllowExternalParticipantGiveRequestControl = $False;
            AllowIPVideo                               = $True;
            AllowMeetNow                               = $False;
            AllowOutlookAddIn                          = $True;
            AllowParticipantGiveRequestControl         = $True;
            AllowPowerPointSharing                     = $True;
            AllowPrivateMeetingScheduling              = $True;
            AllowSharedNotes                           = $True;
            AllowTranscription                         = $False;
            AllowWhiteboard                            = $True;
            AutoAdmittedUsers                          = "EveryoneInCompany";
            Description                                = "Do not assign. This policy is similar to global defaults and would be deprecated";
            Ensure                                     = "Present";
            GlobalAdminAccount                         = $Credsglobaladmin;
            Identity                                   = "Tag:RestrictedAnonymousNoRecording";
            MediaBitRateKb                             = 50000;
            ScreenSharingMode                          = "EntireScreen";
        }
        TeamsMeetingPolicy e88dd111-d1ab-47c4-ba0c-adbf036e6388
        {
            AllowAnonymousUsersToStartMeeting          = $False;
            AllowChannelMeetingScheduling              = $True;
            AllowCloudRecording                        = $True;
            AllowExternalParticipantGiveRequestControl = $False;
            AllowIPVideo                               = $True;
            AllowMeetNow                               = $True;
            AllowOutlookAddIn                          = $True;
            AllowParticipantGiveRequestControl         = $True;
            AllowPowerPointSharing                     = $True;
            AllowPrivateMeetingScheduling              = $True;
            AllowSharedNotes                           = $True;
            AllowTranscription                         = $False;
            AllowWhiteboard                            = $True;
            AutoAdmittedUsers                          = "EveryoneInCompany";
            Ensure                                     = "Present";
            GlobalAdminAccount                         = $Credsglobaladmin;
            Identity                                   = "Tag:Default";
            MediaBitRateKb                             = 50000;
            ScreenSharingMode                          = "EntireScreen";
        }
        TeamsMeetingPolicy fc0403f8-be1f-42ec-a135-7f4450759337
        {
            AllowAnonymousUsersToStartMeeting          = $False;
            AllowChannelMeetingScheduling              = $False;
            AllowCloudRecording                        = $False;
            AllowExternalParticipantGiveRequestControl = $False;
            AllowIPVideo                               = $True;
            AllowMeetNow                               = $True;
            AllowOutlookAddIn                          = $False;
            AllowParticipantGiveRequestControl         = $True;
            AllowPowerPointSharing                     = $True;
            AllowPrivateMeetingScheduling              = $False;
            AllowSharedNotes                           = $True;
            AllowTranscription                         = $False;
            AllowWhiteboard                            = $True;
            AutoAdmittedUsers                          = "EveryoneInCompany";
            Ensure                                     = "Present";
            GlobalAdminAccount                         = $Credsglobaladmin;
            Identity                                   = "Tag:Kiosk";
            MediaBitRateKb                             = 50000;
            ScreenSharingMode                          = "EntireScreen";
        }
        TeamsMessagingPolicy 03cefa88-4794-4552-bf68-ed52b86f3609
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
            AllowUserTranslation          = $False;
            AudioMessageEnabledType       = "ChatsAndChannels";
            ChannelsInChatListEnabledType = "DisabledUserOverride";
            Ensure                        = "Present";
            GiphyRatingType               = "Moderate";
            GlobalAdminAccount            = $Credsglobaladmin;
            Identity                      = "Global";
            ReadReceiptsEnabledType       = "UserPreference";
        }
        TeamsMessagingPolicy 134e18cd-689d-4265-a481-91e8968f5388
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
            AllowUserTranslation          = $False;
            AudioMessageEnabledType       = "ChatsAndChannels";
            ChannelsInChatListEnabledType = "DisabledUserOverride";
            Ensure                        = "Present";
            GiphyRatingType               = "Moderate";
            GlobalAdminAccount            = $Credsglobaladmin;
            Identity                      = "Default";
            ReadReceiptsEnabledType       = "UserPreference";
        }
        TeamsMessagingPolicy c9844146-e3ce-45c2-849a-51eb229d5e41
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
            AllowUserTranslation          = $False;
            AudioMessageEnabledType       = "ChatsAndChannels";
            ChannelsInChatListEnabledType = "DisabledUserOverride";
            Ensure                        = "Present";
            GiphyRatingType               = "Strict";
            GlobalAdminAccount            = $Credsglobaladmin;
            Identity                      = "EduFaculty";
            ReadReceiptsEnabledType       = "UserPreference";
        }
        TeamsMessagingPolicy c64098ab-dd57-47ed-af5f-886d4fbad3d4
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
            AllowUserTranslation          = $False;
            AudioMessageEnabledType       = "ChatsAndChannels";
            ChannelsInChatListEnabledType = "DisabledUserOverride";
            Ensure                        = "Present";
            GiphyRatingType               = "Strict";
            GlobalAdminAccount            = $Credsglobaladmin;
            Identity                      = "EduStudent";
            ReadReceiptsEnabledType       = "UserPreference";
        }
        TeamsTenantDialPlan ba41b10d-31ec-42ab-b1de-c51a6063cecb
        {
            Ensure                = "Present";
            GlobalAdminAccount    = $Credsglobaladmin;
            Identity              = "Global";
            NormalizationRules    = @();
            OptimizeDeviceDialing = $False;
            SimpleName            = "DefaultTenantDialPlan";
        }
        TeamsUpgradeConfiguration 7a645223-c7f6-475d-a60c-75683c7d39bd
        {
            DownloadTeams        = $True;
            GlobalAdminAccount   = $Credsglobaladmin;
            IsSingleInstance     = "Yes";
            SfBMeetingJoinUx     = "NativeLimitedClient";
        }
        TeamsUpgradePolicy 4c6a80f0-19be-4a3c-be6f-652e5d5e8ca5
        {
            GlobalAdminAccount     = $Credsglobaladmin;
            Identity               = "Global";
            MigrateMeetingsToTeams = $False;
            Users                  = @();
        }
        TeamsUpgradePolicy dbd9ca45-fb3d-4971-b222-cde28b4cc834
        {
            GlobalAdminAccount     = $Credsglobaladmin;
            Identity               = "UpgradeToTeams";
            MigrateMeetingsToTeams = $False;
            Users                  = @();
        }
        TeamsUpgradePolicy e9860b99-18d3-4423-b487-5a77783ac3d8
        {
            GlobalAdminAccount     = $Credsglobaladmin;
            Identity               = "Islands";
            MigrateMeetingsToTeams = $False;
            Users                  = @();
        }
        TeamsUpgradePolicy 5a8f4a06-3235-426b-8e37-1bd71b90b952
        {
            GlobalAdminAccount     = $Credsglobaladmin;
            Identity               = "IslandsWithNotify";
            MigrateMeetingsToTeams = $False;
            Users                  = @();
        }
        TeamsUpgradePolicy 851e6935-6d74-498e-9d4a-98f4888c2fa1
        {
            GlobalAdminAccount     = $Credsglobaladmin;
            Identity               = "SfBOnly";
            MigrateMeetingsToTeams = $False;
            Users                  = @();
        }
        TeamsUpgradePolicy 5e511e76-ce3c-44b1-8b6c-924e23d75dca
        {
            GlobalAdminAccount     = $Credsglobaladmin;
            Identity               = "SfBOnlyWithNotify";
            MigrateMeetingsToTeams = $False;
            Users                  = @();
        }
        TeamsUpgradePolicy fbe28696-8285-423a-8faa-b978622003dd
        {
            GlobalAdminAccount     = $Credsglobaladmin;
            Identity               = "SfBWithTeamsCollab";
            MigrateMeetingsToTeams = $False;
            Users                  = @();
        }
        TeamsUpgradePolicy e6a4f7c6-9d0e-45be-bcb2-9a17d5f777ee
        {
            GlobalAdminAccount     = $Credsglobaladmin;
            Identity               = "SfBWithTeamsCollabWithNotify";
            MigrateMeetingsToTeams = $False;
            Users                  = @();
        }
        TeamsUpgradePolicy 9a168844-32f1-435a-b694-e685dd103808
        {
            GlobalAdminAccount     = $Credsglobaladmin;
            Identity               = "SfBWithTeamsCollabAndMeetings";
            MigrateMeetingsToTeams = $False;
            Users                  = @();
        }
        TeamsUpgradePolicy 6343b88a-aba3-4983-97ea-be2648ec2e52
        {
            GlobalAdminAccount     = $Credsglobaladmin;
            Identity               = "SfBWithTeamsCollabAndMeetingsWithNotify";
            MigrateMeetingsToTeams = $False;
            Users                  = @();
        }
        TeamsVoiceRoutingPolicy cf4b31a5-d289-4f8c-ae1a-2cdab222696f
        {
            Ensure               = "Present";
            GlobalAdminAccount   = $Credsglobaladmin;
            Identity             = "Global";
            OnlinePstnUsages     = @();
        }
    }
}
M365TenantConfig -ConfigurationData .\ConfigurationData.psd1 -GlobalAdminAccount $GlobalAdminAccount
