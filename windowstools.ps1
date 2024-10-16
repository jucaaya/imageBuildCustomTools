Write-Output "Starting installation of Azure CLI, JQ, .NET SDK, and Terraform using Scoop..."

# 1. Install Scoop

if (-not (Get-Command scoop -ErrorAction SilentlyContinue)) {
    Write-Output "Scoop not found. Installing Chocolatey..."
    # Install Scoop as Admin
    iex "& {$(irm get.scoop.sh)} -RunAsAdmin"
} else {
    Write-Output "Scoop is already installed."
}

# 2. Install Git for Scoop Update
Write-Output "Installing Git..."
scoop install git
git --version

# 3. Update Scoop to ensure the latest package information
Write-Output "Updating Scoop..."
scoop update

# 4. Install Azure CLI
Write-Output "Installing Azure CLI..."
scoop install azure-cli
az --version
Write-Output "Azure CLI installed successfully."

# 5. Install JQ
Write-Output "Installing JQ..."
scoop install jq
jq --version
Write-Output "JQ installed successfully."

# 6. Install .NET SDK
Write-Output "Installing .NET SDK..."
scoop install dotnet-sdk
dotnet --info
Write-Output ".NET SDK installed successfully."

# 7. Install Terraform
Write-Output "Installing Terraform..."
scoop install terraform
terraform --version
Write-Output "Terraform installed successfully."

Write-Output "All installations completed successfully."
