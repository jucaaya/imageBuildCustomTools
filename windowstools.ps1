Write-Output "Starting installation of Azure CLI, JQ, .NET SDK, and Terraform using Scoop..."

# 1. Install Scoop

if (-not (Get-Command scoop -ErrorAction SilentlyContinue)) {
    Write-Output "Scoop not found. Installing Scoop..."
    # Install Scoop as Admin
    iex "& {$(irm get.scoop.sh)} -RunAsAdmin"
} else {
    Write-Output "Scoop is already installed."
}

# 2. Install Git for Scoop Update
Write-Output "Installing Git..."
scoop install git
if (-not (Get-Command git -ErrorAction SilentlyContinue)) {
    Write-Output "git not found...."

} else {
    Write-Output "Git installed successfully."
    git --version
}


# 3. Update Scoop to ensure the latest package information
Write-Output "Updating Scoop..."
scoop update

# 4. Install Azure CLI
Write-Output "Installing Azure CLI..."
scoop install azure-cli
if (-not (Get-Command az -ErrorAction SilentlyContinue)) {
    Write-Output "Azure CLI not found...."

} else {
    Write-Output "Azure CLI installed successfully."
    az --version
}

# 5. Install JQ
Write-Output "Installing JQ..."
scoop install jq
if (-not (Get-Command jq -ErrorAction SilentlyContinue)) {
    Write-Output "jq not found...."

} else {
    Write-Output "JQ installed successfully."
    jq --version
}

# 6. Install JID
Write-Output "Installing JID..."
scoop install jid
if (-not (Get-Command jid -ErrorAction SilentlyContinue)) {
    Write-Output "jid not found...."

} else {
    Write-Output "JID installed successfully."
    jid --version
}

# 7. Install .NET SDK
Write-Output "Installing .NET SDK..."
scoop install dotnet-sdk
if (-not (Get-Command dotnet -ErrorAction SilentlyContinue)) {
    Write-Output "dotnet not found...."

} else {
    Write-Output ".NET SDK installed successfully."
    dotnet --info
}


# 8. Install Terraform
Write-Output "Installing Terraform..."
scoop install terraform
if (-not (Get-Command terraform -ErrorAction SilentlyContinue)) {
    Write-Output "terraform not found...."

} else {
    Write-Output "Terraform installed successfully."
    terraform --version
}


Write-Output "All installations completed successfully."

Start-Sleep -Seconds 60