<#
This example creates a new Device Enrollment Platform Restriction.
#>

Configuration Example
{
    param(
        [Parameter(Mandatory = $true)]
        [PSCredential]
        $credsGlobalAdmin
    )
    Import-DscResource -ModuleName Microsoft365DSC

    node localhost
    {
        IntuneDeviceEnrollmentPlatformRestriction 'DeviceEnrollmentPlatformRestriction'
        {
            AndroidForWorkRestriction         = MSFT_DeviceEnrollmentPlatformRestriction{
                platformBlocked = $False
                personalDeviceEnrollmentBlocked = $False
            };
            AndroidRestriction                = MSFT_DeviceEnrollmentPlatformRestriction{
                platformBlocked = $False
                personalDeviceEnrollmentBlocked = $False
            };
            Assignments                       = @(
                MSFT_DeviceManagementConfigurationPolicyAssignments{
                    deviceAndAppManagementAssignmentFilterType = 'none'
                    dataType = '#microsoft.graph.allDevicesAssignmentTarget'
                });
            Credential                        = $credsGlobalAdmin
            Description                       = "This is the default Device Type Restriction applied with the lowest priority to all users regardless of group membership.";
            DeviceEnrollmentConfigurationType = "platformRestrictions";
            DisplayName                       = "All users and all devices";
            Ensure                            = "Present";
            Identity                          = "5b0e1dba-4523-455e-9fdd-e36c833b57bf_DefaultPlatformRestrictions";
            IosRestriction                    = MSFT_DeviceEnrollmentPlatformRestriction{
                platformBlocked = $False
                personalDeviceEnrollmentBlocked = $False
            };
            MacOSRestriction                  = MSFT_DeviceEnrollmentPlatformRestriction{
                platformBlocked = $False
                personalDeviceEnrollmentBlocked = $False
            };
            MacRestriction                    = MSFT_DeviceEnrollmentPlatformRestriction{
                platformBlocked = $False
                personalDeviceEnrollmentBlocked = $False
            };
            WindowsHomeSkuRestriction         = MSFT_DeviceEnrollmentPlatformRestriction{
                platformBlocked = $False
                personalDeviceEnrollmentBlocked = $False
            };
            WindowsMobileRestriction          = MSFT_DeviceEnrollmentPlatformRestriction{
                platformBlocked = $True
                personalDeviceEnrollmentBlocked = $False
            };
            WindowsRestriction                = MSFT_DeviceEnrollmentPlatformRestriction{
                platformBlocked = $False
                personalDeviceEnrollmentBlocked = $False
            };
        }
    }
}
