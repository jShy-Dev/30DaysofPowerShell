# Defines a function called Get-MockedADUser that takes a username and returns a hashtable details.

function Get-MockedADUser {
    param([string]$Username)

    # Mocked user info
    return @{
        Name = $Username
        Email = "$Username@example.com"
        Department = "IT"
    }
}

# Example use case via terminal
Get-MockedADUser -Username "jdoe"
