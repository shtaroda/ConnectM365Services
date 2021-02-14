$orgName =(Read-Host テナント名を入力してください。)
$credential = Get-Credential

# MSOL
Connect-MsolService -Credential $credential

# SPO
Import-Module Microsoft.Online.SharePoint.PowerShell -DisableNameChecking
Connect-SPOService -Url https://$orgName-admin.sharepoint.com -credential $credential

# Exchanege
Connect-ExchangeOnline -Credential $credential -ShowProgress $true
Connect-PnPOnline -Url https://$orgName-admin.sharepoint.com -Credentials $credential

