---
external help file: RocketCyberAPI-help.xml
grand_parent: Account
Module Name: RocketCyberAPI
online version: https://celerium.github.io/RocketCyber-PowerShellWrapper/site/Account/Get-RocketCyberAccount.html
parent: GET
schema: 2.0.0
title: Get-RocketCyberAccount
---

# Get-RocketCyberAccount

## SYNOPSIS
Gets account information for a given ID.

## SYNTAX

```powershell
Get-RocketCyberAccount [-accountId <Int64>] [-details] [<CommonParameters>]
```

## DESCRIPTION
The Get-RocketCyberAccount cmdlet gets account information all
accounts or for a given ID from the RocketCyber API.

## EXAMPLES

### EXAMPLE 1
```powershell
Get-RocketCyberAccount
```

Account data will be retrieved from all accounts accessible
by the bearer token

### EXAMPLE 2
```powershell
Get-RocketCyberAccount -accountId 12345
```

Account data will be retrieved for the account with the accountId 12345.

### EXAMPLE 3
```powershell
12345 | Get-RocketCyberAccount
```

Account data will be retrieved for the account with the accountId 12345.

## PARAMETERS

### -accountId
The account ID to pull data for.

If not provided, data will be pulled for all accounts
accessible by the bearer token.

```yaml
Type: Int64
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: 0
Accept pipeline input: True (ByValue)
Accept wildcard characters: False
```

### -details
Should additional details for each sub-accounts be displayed
in the return data.

```yaml
Type: SwitchParameter
Parameter Sets: (All)
Aliases:

Required: False
Position: Named
Default value: False
Accept pipeline input: False
Accept wildcard characters: False
```

### CommonParameters
This cmdlet supports the common parameters: -Debug, -ErrorAction, -ErrorVariable, -InformationAction, -InformationVariable, -OutVariable, -OutBuffer, -PipelineVariable, -Verbose, -WarningAction, and -WarningVariable. For more information, see [about_CommonParameters](http://go.microsoft.com/fwlink/?LinkID=113216).

## INPUTS

## OUTPUTS

## NOTES
N\A

## RELATED LINKS

[https://github.com/Celerium/RocketCyber-PowerShellWrapper](https://github.com/Celerium/RocketCyber-PowerShellWrapper)

