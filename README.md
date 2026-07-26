# kata-azure-terraform

This project is a minimal Terraform configuration for provisioning Azure resources using the HashiCorp Azurerm provider.

## What this project contains

- `providers.tf` - Terraform required version, provider source, and Azurerm provider configuration
- `main.tf` - defines a basic Azure resource group using the provided variables
- `variables.tf` - input variables for the resource group, location, owner metadata, and deletion date
- `.terraform.lock.hcl` - pinned provider dependency versions for reproducible Terraform runs
- `.gitignore` - ignores local Terraform working files and state artifacts

## Prerequisites

- Terraform v1.5.0 or later
- An Azure account
- Azure credentials configured for Terraform authentication

## Getting started

1. Install Terraform.
2. Authenticate to Azure for Terraform, for example with the Azure CLI:
   ```bash
   az login
   ```
3. Initialize the working directory:
   ```bash
   terraform init
   ```
4. Create a local `terraform.tfvars` file from the example template and fill in your values:
   ```bash
   cp terraform.tfvars.example terraform.tfvars
   ```
5. Review the planned changes:
   ```bash
   terraform plan
   ```
6. Apply the configuration:
   ```bash
   terraform apply \
     -var 'owner_email=you@example.com' \
     -var 'owner_platform=platform-name' \
     -var 'date_delete_after=2026-12-31'
   ```
7. Teardown the infrastructure when you no longer need it:
   ```bash
   terraform destroy \
     -var 'owner_email=you@example.com' \
     -var 'owner_platform=platform-name' \
     -var 'date_delete_after=2026-12-31'
   ```

## Notes

This repository currently provisions a simple Azure resource group. You can extend it with additional Azure resources as needed.
