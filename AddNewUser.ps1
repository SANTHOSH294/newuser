# Define the username and password for the new user
$username = "ocfgq"
$password = ConvertTo-SecureString "P@ssw0rd" -AsPlainText -Force

# Create the new user account
New-LocalUser -Name $username -Password $password -FullName "New User" -Description "Created via Azure Custom Script Extension" -PasswordNeverExpires:$true -UserMayNotChangePassword:$false

# Add the new user to the Administrators group
Add-LocalGroupMember -Group "Administrators" -Member $username
