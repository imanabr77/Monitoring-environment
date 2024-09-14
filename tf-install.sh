#!/bin/bash

# Function to print usage information
print_usage() {
    echo "Usage: $0 [-h]"
    echo "Option:"
    echo "  -h     Show this help message"
}

# Check if help option is provided
if [[ "$#" -eq 0 || "$1" == "-h" ]]; then
    print_usage
    exit 0
fi

# Function to handle errors
handle_error() {
    echo "An error occurred. Exiting."
    exit 1
}

# Function to install Terraform
install_terraform() {
    echo "Tapping HashiCorp's Tap repository..."
    brew tap hashicorp/tap || handle_error

    echo "Installing Terraform..."
    brew install hashicorp/tap/terraform || handle_error

    echo "Terraform installation completed successfully!"
}

# Main execution
echo "Starting Terraform installation using Homebrew..."

install_terraform

echo "Installation complete. You may need to restart your terminal or run 'source ~/.zshrc' (or equivalent) to update your PATH."
