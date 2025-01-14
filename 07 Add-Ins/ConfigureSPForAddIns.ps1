if ((Get-PSSnapin "Microsoft.SharePoint.PowerShell" -ErrorAction SilentlyContinue) -eq $null) {
    Add-PSSnapin "Microsoft.SharePoint.PowerShell"
}

# Configure Subscription Settings

$account = Get-SPManagedAccount "devdom\spservice" 

$appPoolSubSvc = New-SPServiceApplicationPool -Name SettingsServiceAppPool -Account $account
$appSubSvc = New-SPSubscriptionSettingsServiceApplication –ApplicationPool $appPoolSubSvc –Name SubscriptionSettingsServiceApp –DatabaseName "SubscriptionDB"
$proxySubSvc = New-SPSubscriptionSettingsServiceApplicationProxy –ServiceApplication $appSubSvc

# Configure App Management Service

$appPoolAppSvc = New-SPServiceApplicationPool -Name AppServiceAppPool -Account $account
$appAppSvc = New-SPAppManagementServiceApplication -ApplicationPool $appPoolAppSvc -Name AppServiceApp -DatabaseName "AppServiceDB"
$proxyAppSvc = New-SPAppManagementServiceApplicationProxy -ServiceApplication $appAppSvc


#Create App Catalog

New-SPSite -Url http://sp2019/sites/AppCatalog -OwnerAlias "devdom\administrator" -Name "App Catalog site" -Template "APPCATALOG#0" 

#App Domain

Set-SPAppDomain -AppDomain spapps.local

#App Prefix

Set-SPAppSiteSubscriptionName -Name "app" -Confirm:$false