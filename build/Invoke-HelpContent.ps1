<#
.NOTES
    Copyright 2020-2023 Celerium

    NAME: Invoke-HelpContent.ps1
    Type: PowerShell

        AUTHOR:  David Schulte
        DATE:    2022-11-26
        EMAIL:   celerium@celerium.org
        Updated:
        Date:

    VERSION HISTORY:
    0.1 - 2022-11-26 - Initial Release

    TODO:
    N\A

.SYNOPSIS
    Calls the Update-HelpContent script to update module markdown help files

.DESCRIPTION
    The Update-HelpContent script calls the Update-HelpContent script to
    update module markdown help files

.EXAMPLE
    .\Update-HelpContent.ps1
        -moduleName RocketCyberAPI
        -helpDocsPath "C:\Celerium\Projects\RocketCyber-PowerShellWrapper\docs"
        -csvFilePath "C:\Celerium\Projects\RocketCyber-PowerShellWrapper\docs\S1-Endpoints-v2.1.csv"
        -githubPageUri "https://celerium.github.io/RocketCyber-PowerShellWrapper"

    Updates markdown docs and external help files

    No progress information is sent to the console while the script is running.

.INPUTS
    helpDocsPath

.OUTPUTS
    N\A

.LINK
    https://celerium.org

#>

<############################################################################################
                                        Code
############################################################################################>
#Requires -Version 5.0

if ( [bool](Get-Command -Name Update-HelpContent -ErrorAction SilentlyContinue) ){

    $parameters = @{
        moduleName      = 'RocketCyberAPI'
        helpDocsPath    = "C:\Celerium\Projects\_API\RocketCyber-PowerShellWrapper\docs"
        csvFilePath     = "C:\Celerium\Projects\_API\RocketCyber-PowerShellWrapper\docs\RC-Endpoints-v3.0.csv"
        githubPageUri   = "https://celerium.github.io/RocketCyber-PowerShellWrapper"
        verbose         = $true
    }

    Update-HelpContent @parameters

}
else{
    Write-Error "The [ Update-HelpContent ] function was not found. Please import the function first"
}