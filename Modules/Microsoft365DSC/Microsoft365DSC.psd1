#
# Module manifest for module 'Microsoft365DSC'
#
# Generated by: Microsoft Corporation
#
# Generated on: 2024-01-25

@{

  # Script module or binary module file associated with this manifest.
  # RootModule = ''

  # Version number of this module.
  ModuleVersion     = '1.24.124.1'

  # Supported PSEditions
  # CompatiblePSEditions = @()

  # ID used to uniquely identify this module
  GUID              = '39f599a6-d212-4480-83b3-a8ea2124d8cf'

  # Author of this module
  Author            = 'Microsoft Corporation'

  # Company or vendor of this module
  CompanyName       = 'Microsoft Corporation'

  # Copyright statement for this module
  Copyright         = '(c) 2024 Microsoft Corporation. All rights reserved.'

  # Description of the functionality provided by this module
  Description       = 'This DSC module is used to configure and monitor Microsoft tenants, including SharePoint Online, Exchange, Teams, etc.'

  # Minimum version of the PowerShell engine required by this module
  PowerShellVersion = '5.1'

  # Name of the PowerShell host required by this module
  # PowerShellHostName = ''

  # Minimum version of the PowerShell host required by this module
  # PowerShellHostVersion = ''

  # Minimum version of Microsoft .NET Framework required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
  # DotNetFrameworkVersion = ''

  # Minimum version of the common language runtime (CLR) required by this module. This prerequisite is valid for the PowerShell Desktop edition only.
  # CLRVersion = ''

  # Processor architecture (None, X86, Amd64) required by this module
  # ProcessorArchitecture = ''

  # Modules that must be imported into the global environment prior to importing this module
  RequiredModules   = @()

  # Assemblies that must be loaded prior to importing this module
  # RequiredAssemblies = @()

  # Script files (.ps1) that are run in the caller's environment prior to importing this module.
  # ScriptsToProcess = @()

  # Type files (.ps1xml) to be loaded when importing this module
  # TypesToProcess = @()

  # Format files (.ps1xml) to be loaded when importing this module
  # FormatsToProcess = @()

  # Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
  NestedModules     = @(
    'modules\M365DSCAgent.psm1',
    'modules\M365DSCDocGenerator.psm1',
    'modules\M365DSCErrorHandler.psm1',
    'modules\M365DSCLogEngine.psm1',
    'modules\M365DSCPermissions.psm1',
    'modules\M365DSCReport.psm1',
    'modules\M365DSCReverse.psm1',
    'modules\M365DSCStubsUtility.psm1',
    'modules\M365DSCTelemetryEngine.psm1',
    'modules\M365DSCUtil.psm1',
    'modules\M365DSCDRGUtil.psm1',
    'modules\EncodingHelpers\M365DSCEmojis.psm1',
    'modules\EncodingHelpers\M365DSCStringEncoding.psm1'
  )

  # Functions to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no functions to export.
  #FunctionsToExport = @()

  # Cmdlets to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no cmdlets to export.
  CmdletsToExport   = @('Assert-M365DSCBlueprint',
    'Compare-M365DSCConfigurations',
    'Confirm-M365DSCDependencies',
    'Export-M365DSCConfiguration',
    'Export-M365DSCDiagnosticData',
    'Get-M365DSCNotificationEndPointRegistration',
    'Import-M365DSCDependencies',
    'New-M365DSCDeltaReport',
    'New-M365DSCNotificationEndPointRegistration',
    'New-M365DSCReportFromConfiguration',
    'New-M365DSCStubFiles',
    'Remove-M365DSCNotificationEndPointRegistration',
    'Set-M365DSCAgentCertificateConfiguration',
    'Start-M365DSCConfiguration',
    'Test-M365DSCAgent',
    'Test-M365DSCDependenciesForNewVersions',
    'Test-M365DSCModuleValidity',
    'Uninstall-M365DSCOutdatedDependencies',
    'Update-M365DSCAllowedGraphScopes',
    'Update-M365DSCAzureAdApplication',
    'Update-M365DSCDependencies',
    'Update-M365DSCModule',
    'Update-M365DSCResourceDocumentationPage',
    'Update-M365DSCResourcesSettingsJSON'
  )

  # Variables to export from this module
  # VariablesToExport = @()

  # Aliases to export from this module, for best performance, do not use wildcards and do not delete the entry, use an empty array if there are no aliases to export.
  AliasesToExport   = @()

  # List of all modules packaged with this module
  # ModuleList = @()

  # List of all files packaged with this module
  # FileList = @()

  # Private data to pass to the module specified in RootModule/ModuleToProcess. This may also contain a PSData hashtable with additional module metadata used by PowerShell.
  PrivateData       = @{

    PSData = @{
      # Tags applied to this module. These help with module discovery in online galleries.
      Tags         = 'DesiredStateConfiguration', 'DSC', 'DSCResourceKit', 'DSCResource', 'Microsoft365'

      # A URL to the license for this module.
      LicenseUri   = 'https://github.com/Microsoft/Microsoft365DSC/blob/master/LICENSE'

      # A URL to the main website for this project.
      ProjectUri   = 'https://github.com/Microsoft/Microsoft365DSC'

      # A URL to an icon representing this module.
      IconUri      = 'https://github.com/microsoft/Microsoft365DSC/blob/Dev/Modules/Microsoft365DSC/Dependencies/Images/Logo.png?raw=true'

      # ReleaseNotes of this module
      ReleaseNotes = '* AADAuthenticationMethodPolicyAuthenticator
      * Remove the logic path to create a new instance in favor of the update flow.
    * AADAuthenticationMethodPolicyEmail
      * Remove the logic path to create a new instance in favor of the update flow.
    * AADAuthenticationMethodPolicyFido2
      * Remove the logic path to create a new instance in favor of the update flow.
    * AADAuthenticationMethodPolicySms
      * Remove the logic path to create a new instance in favor of the update flow.
    * AADAuthenticationMethodPolicySoftware
      * Remove the logic path to create a new instance in favor of the update flow.
    * AADAuthenticationMethodPolicyTemporary
      * Remove the logic path to create a new instance in favor of the update flow.
    * AADAuthenticationMethodPolicyVoice
      * Remove the logic path to create a new instance in favor of the update flow.
    * AADAuthenticationMethodPolicyX509
      * Remove the logic path to create a new instance in favor of the update flow.
    * AADConditionalAccessPolicy
      * Fix issue when not all parameters are specified
        FIXES [[#4202](https://github.com/microsoft/Microsoft365DSC/issues/4202)]
    * AADCrossTenantAccessPolicy
      * Removed the ability to specify a value of Absent for the Ensure property.
    * AADCrossTenantAccessPolicyCOnfigurationDefault
      * Removed the ability to specify a value of Absent for the Ensure property.
    * AADGroup
      * Changed Set logic to restore groups from the deleted list if a match by
        DisplayName is found.
    * EXOActiveSyncDeviceAccessRule
      * Changed the way Identity is determined by using a combination of the
        QueryString and Characteristic parameters.
    * EXOAddressList
      * Fixed an issue trying to create a new instance when DisplayName is empty.
    * EXOApplicationAccessPolicy
      * Changed the logic to retrieve existing instances based on Scope.
    * EXODataClassification
      * DEPRECATED Resource.
    * SCAutoSensitivityLabelRule
      * Correct export indentation, which caused an issue with report conversion to JSON.
        FIXES [[#4240](https://github.com/microsoft/Microsoft365DSC/issues/4240)]
    * SPOSharingSettings
      * Fixed an Issue where the MySiteSharingCapability could be returned as an
        empty string instead of a null value from the Get method.
    * TeamsAppPermissionPolicy, TeamsAppSetupPolicy, TeamsCallHoldPolicy,
      TeamsIPPhonePolicy, TeamsMobilityPolicy, TeamsNetworkRoamingPolicy,
      TeamsShiftsPolicy, TeamsTenantNetworkRegion, TeamsTenantNetworkSite,
      TeamsTenantNetworkSubnet, TeamsTenantTrustedIPAddress, TeamsTranslationRule,
      TeamsUnassignedNumberTreatment, TeamsVdiPolicy, TeamsWorkloadPolicy
      * Fix condition when resource is absent
        FIXES [#4227](https://github.com/microsoft/Microsoft365DSC/issues/4227)
    * TeamsAudioConferencingPolicy
      * Fix condition in Test-TargetResource when resource is absent
        FIXES [#4215](https://github.com/microsoft/Microsoft365DSC/issues/4215)
    * TeamsCallParkPolicy
      * Fix condition in Test-TargetResource when resource is absent
        FIXES [#4210](https://github.com/microsoft/Microsoft365DSC/issues/4210)
    * TeamsComplianceRecordingPolicy
      * Fix condition in Test-TargetResource when resource is absent
        FIXES [#4212](https://github.com/microsoft/Microsoft365DSC/issues/4212)
    * TeamsCortanaPolicy
      * Fix condition in Test-TargetResource when resource is absent
        FIXES [#4208](https://github.com/microsoft/Microsoft365DSC/issues/4208)
    * TeamsEnhancedEncryptionPolicy
      * Fix condition when resource is absent
        FIXES [#4221](https://github.com/microsoft/Microsoft365DSC/issues/4221)
    * TeamsEventsPolicy
      * Add missing attributes
        FIXES [#4242](https://github.com/microsoft/Microsoft365DSC/issues/4242)
    * TeamsFeedbackPolicy
      * Fix condition when resource is absent
        FIXES [#4223](https://github.com/microsoft/Microsoft365DSC/issues/4223)
    * TeamsFilesPolicy
      * Fix condition when resource is absent
        FIXES [#4225](https://github.com/microsoft/Microsoft365DSC/issues/4225)
    * TeamsGroupPolicyAssignment
      * Ensure assignment can still be created if GroupId is not found by trying to
        search by DisplayName afterwards
        FIXES [#4248](https://github.com/microsoft/Microsoft365DSC/issues/4248)
    * TeamsMeetingBroadcastPolicy
      * Fix deletion of resource
        FIXES [#4231](https://github.com/microsoft/Microsoft365DSC/issues/4231)
    * TeamsMobilityPolicy
      * Validate string set on parameter MobileDialerPreference
    * DEPENDENCIES
      * Updated Microsoft.Graph dependencies to version 2.12.0.
      * Updated MicrosoftTeams dependencies to version 5.9.0.'

      # Flag to indicate whether the module requires explicit user acceptance for install/update
      # RequireLicenseAcceptance = $false

      # External dependent modules of this module
      # ExternalModuleDependencies = @()

    } # End of PSData hashtable

  } # End of PrivateData hashtable

  # HelpInfo URI of this module
  # HelpInfoURI = ''

  # Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
  # DefaultCommandPrefix = ''
}
