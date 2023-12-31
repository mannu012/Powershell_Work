#
# Module manifest for module 'HPiLOCmdlets'
#
# Generated on: 10/17/2013
#

@{

# Script module or binary module file associated with this manifest.
RootModule = 'HPiLOCmdlets.psm1'

# Version number of this module.
ModuleVersion = '1.2.0.0'

# ID used to uniquely identify this module
GUID = '05545ade-5f25-4696-bfcc-e1d67fe32519'

# Author of this module
Author = 'Hewlett-Packard Co.'

# Company or vendor of this module
CompanyName = 'Hewlett-Packard Co.'

# Copyright statement for this module
Copyright = '© Copyright 2013, 2014 Hewlett-Packard Development Company, L.P. All rights reserved.'

# Description of the functionality provided by this module
Description = 'Cmdlets to interface with HP iLO'

# Minimum version of the Windows PowerShell engine required by this module
PowerShellVersion = '3.0'

# Minimum version of the .NET Framework required by this module
DotNetFrameworkVersion = '4.0'

# Minimum version of the common language runtime (CLR) required by this module
CLRVersion = '4.0'

# List of all files packaged with this module
# FileList = @()

# HelpInfo URI of this module
HelpInfoURI = 'http://www.hp.com/go/powershell/updatehelp'

# Functions to export from this module
FunctionsToExport = @(
    "Add-HPiLOSSORecord",
    "Add-HPiLOUser",
    "Clear-HPiLOAHSData",
    "Clear-HPiLOEventLog",
    "Clear-HPiLOIML",
    "Clear-HPiLOPowerOnTime",
    "Convert-OLiPHRIBCLToPSObject",
    "Disable-HPiLOERSIRSConnection",
    "Disable-HPiLOSecurityMessage",
    "Dismount-HPiLOVirtualMedia",
    "Enable-HPiLOFIPS",
    "Enable-HPiLOERSIRSConnection",
    "Enable-HPiLOSecurityMessage",
    "Find-HPiLO",
    "Get-HPiLOAHSStatus",
    "Get-HPiLOAssetTag",
    "Get-HPiLOCertificateSigningRequest",
    "Get-HPiLODefaultLanguage",
    "Get-HPiLODirectory",
    "Get-HPiLODriveInfo",
    "Get-HPiLOERSSetting",
    "Get-HPiLOEventLog",
    "Get-HPiLOFan",
    "Get-HPiLOFIPSStatus",
    "Get-HPiLOFirmwareInfo",
    "Get-HPiLOFirmwareVersion",
    "Get-HPiLOGlobalSetting",
    "Get-HPiLOHealthSummary",
    "Get-HPiLOHostAPO",
    "Get-HPiLOHostData",
    "Get-HPiLOHostPower",
    "Get-HPiLOHostPowerMicroVersion",
    "Get-HPiLOHostPowerSaver",
    "Get-HPiLOHotkeyConfig",
    "Get-HPiLOIML",
    "Get-HPiLOLanguage",
    "Get-HPiLOLicense",
    "Get-HPiLOMemoryInfo",
    "Get-HPiLOModuleVersion",
    "Get-HPiLONetworkSetting",
    "Get-HPiLONICInfo",
    "Get-HPiLOOAInfo",
    "Get-HPiLOOneTimeBootOrder",
    "Get-HPiLOPersistentBootOrder",
    "Get-HPiLOPowerAlertThreshold",
    "Get-HPiLOPowerCap",
    "Get-HPiLOPowerOnTime",
    "Get-HPiLOPowerReading",
    "Get-HPiLOPowerSupply",
    "Get-HPiLOProcessor",
    "Get-HPiLOProfile",
    "Get-HPiLOProfileApplyResult",
    "Get-HPiLORackSetting",
    "Get-HPiLOSecurityMessage",
    "Get-HPiLOServerInfo",
    "Get-HPiLOServerName",
    "Get-HPiLOSNMPIMSetting",
    "Get-HPiLOSpatial",
    "Get-HPiLOSSOSetting",
    "Get-HPiLOStorageController",
    "Get-HPiLOTemperature",
    "Get-HPiLOUIDStatus",
    "Get-HPiLOUser",
    "Get-HPiLOUserInfo",
    "Get-HPiLOUserList",
    "Get-HPiLOVMStatus",
    "Get-HPiLOVRM",
    "Import-HPiLOCertificate",
    "Import-HPiLOSSHKey",
    "Invoke-HPiLOProfileApply",
    "Invoke-HPiLOProfileDownload",
    "Mount-HPiLOVirtualMedia",
    "Remove-HPiLOProfile",
    "Remove-HPiLOSSORecord",
    "Remove-HPiLOUser",
    "Remove-HPiLOUserSSHKey",
    "Reset-HPiLOAdministratorPassword",
    "Reset-HPiLORIB",
    "Reset-HPiLOServer",
    "Set-HPiLOAHSStatus",
    "Set-HPiLOAssetTag",
    "Set-HPiLOBrownout",
    "Set-HPiLOComputerLockConfig",
    "Set-HPiLODefaultLanguage",
    "Set-HPiLODirectory",
    "Set-HPiLOFactoryDefault",
    "Set-HPiLOGlobalSetting",
    "Set-HPiLOHostAPO",
    "Set-HPiLOHostPower",
    "Set-HPiLOHostPowerSaver",
    "Set-HPiLOHotkeyConfig",
    "Set-HPiLOKerberosConfig",
    "Set-HPiLOLicenseKey",
    "Set-HPiLOLockConfiguration",
    "Set-HPiLONetworkSetting",
    "Set-HPiLOIPv6NetworkSetting",
    "Set-HPiLOOneTimeBootOrder",
    "Set-HPiLOPassword",
    "Set-HPiLOPersistentBootOrder",
    "Set-HPiLOPowerAlertThreshold",
    "Set-HPiLOPowerCap",
    "Set-HPiLORBSUPOSTIP",
    "Set-HPiLOSchemalessDirectory",
    "Set-HPiLOServerName",
    "Set-HPiLOSharedNetworkPort",
    "Set-HPiLOSNMPIMSetting",
    "Set-HPiLOSSOSetting",
    "Set-HPiLOUIDStatus",
    "Set-HPiLOUser",
    "Set-HPiLOVirtualPowerButton",
    "Set-HPiLOVLAN",
    "Set-HPiLOVMStatus",
    "Set-HPiLOVMPortSetting",
    "Start-HPiLOERSAHSSubmission",
    "Start-HPiLOL2Collection",
    "Start-HPiLOTestEvent",
    "Update-HPiLOFirmware",
	"Update-HPiLOModuleVersion"
    )
#UNUSED items

# Name of the Windows PowerShell host required by this module
# PowerShellHostName = ''

# Minimum version of the Windows PowerShell host required by this module
# PowerShellHostVersion = ''

# Processor architecture (None, X86, Amd64) required by this module
# ProcessorArchitecture = ''

# Modules that must be imported into the global environment prior to importing this module
# RequiredModules = @()

# Assemblies that must be loaded prior to importing this module
# RequiredAssemblies = @()

# Script files (.ps1) that are run in the caller's environment prior to importing this module.
# ScriptsToProcess = @()

# Type files (.ps1xml) to be loaded when importing this module
# TypesToProcess = @()

# Format files (.ps1xml) to be loaded when importing this module
# FormatsToProcess = @()

# Modules to import as nested modules of the module specified in RootModule/ModuleToProcess
# NestedModules = @()

# Cmdlets to export from this module
# CmdletsToExport = '*'

# Variables to export from this module
# VariablesToExport = '*'

# Aliases to export from this module
# AliasesToExport = '*'

# List of all modules packaged with this module.
# ModuleList = @()

# Private data to pass to the module specified in RootModule/ModuleToProcess
# PrivateData = ''

# Default prefix for commands exported from this module. Override the default prefix using Import-Module -Prefix.
# DefaultCommandPrefix = ''

}


# SIG # Begin signature block
# MIIZGAYJKoZIhvcNAQcCoIIZCTCCGQUCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUQeM5SdeqQ3JTSdCMK+oNAsNk
# EWOgghPzMIID7jCCA1egAwIBAgIQfpPr+3zGTlnqS5p31Ab8OzANBgkqhkiG9w0B
# AQUFADCBizELMAkGA1UEBhMCWkExFTATBgNVBAgTDFdlc3Rlcm4gQ2FwZTEUMBIG
# A1UEBxMLRHVyYmFudmlsbGUxDzANBgNVBAoTBlRoYXd0ZTEdMBsGA1UECxMUVGhh
# d3RlIENlcnRpZmljYXRpb24xHzAdBgNVBAMTFlRoYXd0ZSBUaW1lc3RhbXBpbmcg
# Q0EwHhcNMTIxMjIxMDAwMDAwWhcNMjAxMjMwMjM1OTU5WjBeMQswCQYDVQQGEwJV
# UzEdMBsGA1UEChMUU3ltYW50ZWMgQ29ycG9yYXRpb24xMDAuBgNVBAMTJ1N5bWFu
# dGVjIFRpbWUgU3RhbXBpbmcgU2VydmljZXMgQ0EgLSBHMjCCASIwDQYJKoZIhvcN
# AQEBBQADggEPADCCAQoCggEBALGss0lUS5ccEgrYJXmRIlcqb9y4JsRDc2vCvy5Q
# WvsUwnaOQwElQ7Sh4kX06Ld7w3TMIte0lAAC903tv7S3RCRrzV9FO9FEzkMScxeC
# i2m0K8uZHqxyGyZNcR+xMd37UWECU6aq9UksBXhFpS+JzueZ5/6M4lc/PcaS3Er4
# ezPkeQr78HWIQZz/xQNRmarXbJ+TaYdlKYOFwmAUxMjJOxTawIHwHw103pIiq8r3
# +3R8J+b3Sht/p8OeLa6K6qbmqicWfWH3mHERvOJQoUvlXfrlDqcsn6plINPYlujI
# fKVOSET/GeJEB5IL12iEgF1qeGRFzWBGflTBE3zFefHJwXECAwEAAaOB+jCB9zAd
# BgNVHQ4EFgQUX5r1blzMzHSa1N197z/b7EyALt0wMgYIKwYBBQUHAQEEJjAkMCIG
# CCsGAQUFBzABhhZodHRwOi8vb2NzcC50aGF3dGUuY29tMBIGA1UdEwEB/wQIMAYB
# Af8CAQAwPwYDVR0fBDgwNjA0oDKgMIYuaHR0cDovL2NybC50aGF3dGUuY29tL1Ro
# YXd0ZVRpbWVzdGFtcGluZ0NBLmNybDATBgNVHSUEDDAKBggrBgEFBQcDCDAOBgNV
# HQ8BAf8EBAMCAQYwKAYDVR0RBCEwH6QdMBsxGTAXBgNVBAMTEFRpbWVTdGFtcC0y
# MDQ4LTEwDQYJKoZIhvcNAQEFBQADgYEAAwmbj3nvf1kwqu9otfrjCR27T4IGXTdf
# plKfFo3qHJIJRG71betYfDDo+WmNI3MLEm9Hqa45EfgqsZuwGsOO61mWAK3ODE2y
# 0DGmCFwqevzieh1XTKhlGOl5QGIllm7HxzdqgyEIjkHq3dlXPx13SYcqFgZepjhq
# IhKjURmDfrYwggSjMIIDi6ADAgECAhAOz/Q4yP6/NW4E2GqYGxpQMA0GCSqGSIb3
# DQEBBQUAMF4xCzAJBgNVBAYTAlVTMR0wGwYDVQQKExRTeW1hbnRlYyBDb3Jwb3Jh
# dGlvbjEwMC4GA1UEAxMnU3ltYW50ZWMgVGltZSBTdGFtcGluZyBTZXJ2aWNlcyBD
# QSAtIEcyMB4XDTEyMTAxODAwMDAwMFoXDTIwMTIyOTIzNTk1OVowYjELMAkGA1UE
# BhMCVVMxHTAbBgNVBAoTFFN5bWFudGVjIENvcnBvcmF0aW9uMTQwMgYDVQQDEytT
# eW1hbnRlYyBUaW1lIFN0YW1waW5nIFNlcnZpY2VzIFNpZ25lciAtIEc0MIIBIjAN
# BgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAomMLOUS4uyOnREm7Dv+h8GEKU5Ow
# mNutLA9KxW7/hjxTVQ8VzgQ/K/2plpbZvmF5C1vJTIZ25eBDSyKV7sIrQ8Gf2Gi0
# jkBP7oU4uRHFI/JkWPAVMm9OV6GuiKQC1yoezUvh3WPVF4kyW7BemVqonShQDhfu
# ltthO0VRHc8SVguSR/yrrvZmPUescHLnkudfzRC5xINklBm9JYDh6NIipdC6Anqh
# d5NbZcPuF3S8QYYq3AhMjJKMkS2ed0QfaNaodHfbDlsyi1aLM73ZY8hJnTrFxeoz
# C9Lxoxv0i77Zs1eLO94Ep3oisiSuLsdwxb5OgyYI+wu9qU+ZCOEQKHKqzQIDAQAB
# o4IBVzCCAVMwDAYDVR0TAQH/BAIwADAWBgNVHSUBAf8EDDAKBggrBgEFBQcDCDAO
# BgNVHQ8BAf8EBAMCB4AwcwYIKwYBBQUHAQEEZzBlMCoGCCsGAQUFBzABhh5odHRw
# Oi8vdHMtb2NzcC53cy5zeW1hbnRlYy5jb20wNwYIKwYBBQUHMAKGK2h0dHA6Ly90
# cy1haWEud3Muc3ltYW50ZWMuY29tL3Rzcy1jYS1nMi5jZXIwPAYDVR0fBDUwMzAx
# oC+gLYYraHR0cDovL3RzLWNybC53cy5zeW1hbnRlYy5jb20vdHNzLWNhLWcyLmNy
# bDAoBgNVHREEITAfpB0wGzEZMBcGA1UEAxMQVGltZVN0YW1wLTIwNDgtMjAdBgNV
# HQ4EFgQURsZpow5KFB7VTNpSYxc/Xja8DeYwHwYDVR0jBBgwFoAUX5r1blzMzHSa
# 1N197z/b7EyALt0wDQYJKoZIhvcNAQEFBQADggEBAHg7tJEqAEzwj2IwN3ijhCcH
# bxiy3iXcoNSUA6qGTiWfmkADHN3O43nLIWgG2rYytG2/9CwmYzPkSWRtDebDZw73
# BaQ1bHyJFsbpst+y6d0gxnEPzZV03LZc3r03H0N45ni1zSgEIKOq8UvEiCmRDoDR
# EfzdXHZuT14ORUZBbg2w6jiasTraCXEQ/Bx5tIB7rGn0/Zy2DBYr8X9bCT2bW+IW
# yhOBbQAuOA2oKY8s4bL0WqkBrxWcLC9JG9siu8P+eJRRw4axgohd8D20UaF5Mysu
# e7ncIAkTcetqGVvP6KUwVyyJST+5z3/Jvz4iaGNTmr1pdKzFHTx/kuDDvBzYBHUw
# ggVIMIIEMKADAgECAhBqJba6oqOIHrqYnJL4yw+NMA0GCSqGSIb3DQEBBQUAMIG0
# MQswCQYDVQQGEwJVUzEXMBUGA1UEChMOVmVyaVNpZ24sIEluYy4xHzAdBgNVBAsT
# FlZlcmlTaWduIFRydXN0IE5ldHdvcmsxOzA5BgNVBAsTMlRlcm1zIG9mIHVzZSBh
# dCBodHRwczovL3d3dy52ZXJpc2lnbi5jb20vcnBhIChjKTEwMS4wLAYDVQQDEyVW
# ZXJpU2lnbiBDbGFzcyAzIENvZGUgU2lnbmluZyAyMDEwIENBMB4XDTE0MDYyNTAw
# MDAwMFoXDTE2MDcyNDIzNTk1OVowejELMAkGA1UEBhMCVVMxEzARBgNVBAgTCkNh
# bGlmb3JuaWExEjAQBgNVBAcTCVBhbG8gQWx0bzEgMB4GA1UEChQXSGV3bGV0dC1Q
# YWNrYXJkIENvbXBhbnkxIDAeBgNVBAMUF0hld2xldHQtUGFja2FyZCBDb21wYW55
# MIIBIjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEAvZW91eEe8mEoae5frPX+
# WBFsHw7bkrECc3UANelrP89ZRW64IjR2S/dCUnIpqbMfDXSohVNy/9j8E+Ga8n1M
# wC/IMKigMGRk0AdqjkTML6YhGv5lUFP/c8YOiyEGhx+N/0joXFo8YeN+9xGE82UR
# MGhWJAZjDls+I7VQcCs7UpBuV0egu0tOzufDIgqvWUyTqWAu+lAHsmdS90P+vi82
# Jfv5rEYS6Y1ca2CPMJm7HniDl54QK1By2JEAb5m97VNqyuYKC69D+xDW1GIdGPfr
# v3Ko7NAE5yWg8W8bfIxC5dS+GNh/0alWz1Ke23Uu6Mah+fgO62wxzSd8r1g2VBnw
# NQIDAQABo4IBjTCCAYkwCQYDVR0TBAIwADAOBgNVHQ8BAf8EBAMCB4AwKwYDVR0f
# BCQwIjAgoB6gHIYaaHR0cDovL3NmLnN5bWNiLmNvbS9zZi5jcmwwZgYDVR0gBF8w
# XTBbBgtghkgBhvhFAQcXAzBMMCMGCCsGAQUFBwIBFhdodHRwczovL2Quc3ltY2Iu
# Y29tL2NwczAlBggrBgEFBQcCAjAZFhdodHRwczovL2Quc3ltY2IuY29tL3JwYTAT
# BgNVHSUEDDAKBggrBgEFBQcDAzBXBggrBgEFBQcBAQRLMEkwHwYIKwYBBQUHMAGG
# E2h0dHA6Ly9zZi5zeW1jZC5jb20wJgYIKwYBBQUHMAKGGmh0dHA6Ly9zZi5zeW1j
# Yi5jb20vc2YuY3J0MB8GA1UdIwQYMBaAFM+Zqep7JvRLyY6P1/AFJu/j0qedMB0G
# A1UdDgQWBBSxY0RmDskHVeL3426xzdgBWbGuFDARBglghkgBhvhCAQEEBAMCBBAw
# FgYKKwYBBAGCNwIBGwQIMAYBAQABAf8wDQYJKoZIhvcNAQEFBQADggEBAKoA6naf
# BZ3b4qJVW21/IRNtWounIheL5YD5B5aYaQcPZ3I44gwz5jH90C8DTAvsjUn+NWpO
# gLQ53XcskrY8VSUD8eXfK7M8wTmkTuKZBCaX1l/ejt6nnNfzrGHlGwTa2la98Y6d
# IaMwV6+Hv36gQq/Dh6IdjsjNgFExPOc34AsP/yMK89s3PlHphVEXu7C4/CqPzq1n
# 9l/j/2IOJLoKVDeGjvcuD9rtAoeqowChPmKWjdHmjXNd/PKFdlo085yMWZLuZWHj
# KGgddvWJqnRNCti1WrztJUPS4kGTvsuu0sK9eXOK+VKE+uHxIc6bIyZJAJxS3uPw
# jmnBQuPnl1RDZHwwggYKMIIE8qADAgECAhBSAOWqJVb8GobtlsnUSzPHMA0GCSqG
# SIb3DQEBBQUAMIHKMQswCQYDVQQGEwJVUzEXMBUGA1UEChMOVmVyaVNpZ24sIElu
# Yy4xHzAdBgNVBAsTFlZlcmlTaWduIFRydXN0IE5ldHdvcmsxOjA4BgNVBAsTMShj
# KSAyMDA2IFZlcmlTaWduLCBJbmMuIC0gRm9yIGF1dGhvcml6ZWQgdXNlIG9ubHkx
# RTBDBgNVBAMTPFZlcmlTaWduIENsYXNzIDMgUHVibGljIFByaW1hcnkgQ2VydGlm
# aWNhdGlvbiBBdXRob3JpdHkgLSBHNTAeFw0xMDAyMDgwMDAwMDBaFw0yMDAyMDcy
# MzU5NTlaMIG0MQswCQYDVQQGEwJVUzEXMBUGA1UEChMOVmVyaVNpZ24sIEluYy4x
# HzAdBgNVBAsTFlZlcmlTaWduIFRydXN0IE5ldHdvcmsxOzA5BgNVBAsTMlRlcm1z
# IG9mIHVzZSBhdCBodHRwczovL3d3dy52ZXJpc2lnbi5jb20vcnBhIChjKTEwMS4w
# LAYDVQQDEyVWZXJpU2lnbiBDbGFzcyAzIENvZGUgU2lnbmluZyAyMDEwIENBMIIB
# IjANBgkqhkiG9w0BAQEFAAOCAQ8AMIIBCgKCAQEA9SNLXqXXirsy6dRX9+/kxyZ+
# rRmY/qidfZT2NmsQ13WBMH8EaH/LK3UezR0IjN9plKc3o5x7gOCZ4e43TV/OOxTu
# htTQ9Sc1vCULOKeMY50Xowilq7D7zWpigkzVIdob2fHjhDuKKk+FW5ABT8mndhB/
# JwN8vq5+fcHd+QW8G0icaefApDw8QQA+35blxeSUcdZVAccAJkpAPLWhJqkMp22A
# jpAle8+/PxzrL5b65Yd3xrVWsno7VDBTG99iNP8e0fRakyiF5UwXTn5b/aSTmX/f
# ze+kde/vFfZH5/gZctguNBqmtKdMfr27Tww9V/Ew1qY2jtaAdtcZLqXNfjQtiQID
# AQABo4IB/jCCAfowEgYDVR0TAQH/BAgwBgEB/wIBADBwBgNVHSAEaTBnMGUGC2CG
# SAGG+EUBBxcDMFYwKAYIKwYBBQUHAgEWHGh0dHBzOi8vd3d3LnZlcmlzaWduLmNv
# bS9jcHMwKgYIKwYBBQUHAgIwHhocaHR0cHM6Ly93d3cudmVyaXNpZ24uY29tL3Jw
# YTAOBgNVHQ8BAf8EBAMCAQYwbQYIKwYBBQUHAQwEYTBfoV2gWzBZMFcwVRYJaW1h
# Z2UvZ2lmMCEwHzAHBgUrDgMCGgQUj+XTGoasjY5rw8+AatRIGCx7GS4wJRYjaHR0
# cDovL2xvZ28udmVyaXNpZ24uY29tL3ZzbG9nby5naWYwNAYDVR0fBC0wKzApoCeg
# JYYjaHR0cDovL2NybC52ZXJpc2lnbi5jb20vcGNhMy1nNS5jcmwwNAYIKwYBBQUH
# AQEEKDAmMCQGCCsGAQUFBzABhhhodHRwOi8vb2NzcC52ZXJpc2lnbi5jb20wHQYD
# VR0lBBYwFAYIKwYBBQUHAwIGCCsGAQUFBwMDMCgGA1UdEQQhMB+kHTAbMRkwFwYD
# VQQDExBWZXJpU2lnbk1QS0ktMi04MB0GA1UdDgQWBBTPmanqeyb0S8mOj9fwBSbv
# 49KnnTAfBgNVHSMEGDAWgBR/02Wnwt3su/AwCfNDOfoCrzMxMzANBgkqhkiG9w0B
# AQUFAAOCAQEAViLmNKTEYctIuQGtVqhkD9mMkcS7zAzlrXqgIn/fRzhKLWzRf3Ea
# fOxwqbHwT+QPDFP6FV7+dJhJJIWBJhyRFEewTGOMu6E01MZF6A2FJnMD0KmMZG3c
# cZLmRQVgFVlROfxYFGv+1KTteWsIDEFy5zciBgm+I+k/RJoe6WGdzLGQXPw90o2s
# Qj1lNtS0PUAoj5sQzyMmzEsgy5AfXYxMNMo82OU31m+lIL006ybZrg3nxZr3obQh
# kTNvhuhYuyV8dA5Y/nUbYz/OMXybjxuWnsVTdoRbnK2R+qztk7pdyCFTwoJTY68S
# DVCHERs9VFKWiiycPZIaCJoFLseTpUiR0zGCBI8wggSLAgEBMIHJMIG0MQswCQYD
# VQQGEwJVUzEXMBUGA1UEChMOVmVyaVNpZ24sIEluYy4xHzAdBgNVBAsTFlZlcmlT
# aWduIFRydXN0IE5ldHdvcmsxOzA5BgNVBAsTMlRlcm1zIG9mIHVzZSBhdCBodHRw
# czovL3d3dy52ZXJpc2lnbi5jb20vcnBhIChjKTEwMS4wLAYDVQQDEyVWZXJpU2ln
# biBDbGFzcyAzIENvZGUgU2lnbmluZyAyMDEwIENBAhBqJba6oqOIHrqYnJL4yw+N
# MAkGBSsOAwIaBQCggYwwGQYJKoZIhvcNAQkDMQwGCisGAQQBgjcCAQQwHAYKKwYB
# BAGCNwIBCzEOMAwGCisGAQQBgjcCARUwIwYJKoZIhvcNAQkEMRYEFIylPXRue4zj
# ZWXMf7haGHyhwZu1MCwGCisGAQQBgjcCAQwxHjAcoBqAGABIAFAAaQBMAE8AQwBt
# AGQAbABlAHQAczANBgkqhkiG9w0BAQEFAASCAQAGZkqLnexu5vprzqXNZMrgphgV
# grUAx7WP4ZBuN08ozB0HfABsjxGsKykGhd5yxaeB1Kh+04TJABHJN90F/GLcRqwW
# ubCZ8oa0XBHwp8KCijjizdRxZNMF1DlmnHM/STNB2jz/vpY281aEcnM3rw2BuQK1
# 4uTrqSUc53SwamqUoVb207V3rQehtBQmpCmPmwflK4YVQzo4S5K2G3/z3bUeT91N
# 3bRvVNNwL4L9yxepXq7DDorFVcg9n4VjDKdZF26bAQoP8eEIYc6qfVP88MKK9IkC
# gExkdSUNQ9gHctTV6h7NQUIqDajQaQmJH63wZkdpCoOZ8cT4h+dLFdGXZB2JoYIC
# CzCCAgcGCSqGSIb3DQEJBjGCAfgwggH0AgEBMHIwXjELMAkGA1UEBhMCVVMxHTAb
# BgNVBAoTFFN5bWFudGVjIENvcnBvcmF0aW9uMTAwLgYDVQQDEydTeW1hbnRlYyBU
# aW1lIFN0YW1waW5nIFNlcnZpY2VzIENBIC0gRzICEA7P9DjI/r81bgTYapgbGlAw
# CQYFKw4DAhoFAKBdMBgGCSqGSIb3DQEJAzELBgkqhkiG9w0BBwEwHAYJKoZIhvcN
# AQkFMQ8XDTE1MDEwNzA4MjU0NFowIwYJKoZIhvcNAQkEMRYEFH6qsb1nzBPqt+rJ
# GwumPEKSluATMA0GCSqGSIb3DQEBAQUABIIBAAD42F9UvZe2IT68YDf5u2eY5GFS
# hU7l/OfobSVcisfTgBEI9hI+Mfd5Gf3050TlZ/ajhz+qFFaZIXLdB/A0liSx8Mnp
# XziLxzl63kbR5DVgZDCilKGyna/WmQ0jzZnDURG/hMiBJ5L6fh3OhNvJVT4uit3z
# 6Ev8PLgzhrYHYIPT2ZwCMj5Nd3C1fEQYp74sS7/L2J+ggZF7kObrc/e5Wa3YC7G/
# HNI+osmEQrXFrOsPSfzNDQ4XyG/47gbQkedGreB1T43ZvzNQZCERFd1Py+XYTgQP
# 96bb7oKyPiVgA+mSGCd4otOCbdnwYENeFJUWnadxuqQCTdMRDrW4qwAKMDE=
# SIG # End signature block
