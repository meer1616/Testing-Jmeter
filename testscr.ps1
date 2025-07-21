# Enable WinRM
Enable-PSRemoting -Force

# Add localhost to trusted hosts (needed even for local test)
Set-Item WSMan:\localhost\Client\TrustedHosts -Value "localhost" -Force

# Allow unencrypted connections
Set-Item WSMan:\localhost\Client\AllowUnencrypted -Value $true

# Enable basic auth (only for testing)
Set-Item WSMan:\localhost\Client\Auth\Basic -Value $true

# Test credentials
$secpasswd = ConvertTo-SecureString "KSP135246@m" -AsPlainText -Force
$creds = New-Object System.Management.Automation.PSCredential("Meer", $secpasswd)

# Test remoting
Invoke-Command -ComputerName localhost -Credential $creds -ScriptBlock { hostname } -Authentication Negotiate
