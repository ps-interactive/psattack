<# Build Domain Admin Credentials#>
$domainUser="globomantics\Administrator"
$domainPass = "12qwaszx!@QWASZX"
$secDomainPass = ConvertTo-SecureString $domainPass -AsPlainText -Force
$domainAdminCredential = New-Object System.Management.Automation.PSCredential($domainUser, $secDomainPass)

<# Enumerate AD #>
Start-Process "nltest" -ArgumentList "domain_trusts /all_trusts" -Credential $domainAdminCredential
Start-Process "nltest" -ArgumentList "/dclist:globomantics" -Credential $domainAdminCredential