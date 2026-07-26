# kata-azure-terraform

This project is a minimal Terraform configuration for provisioning Azure resources using the HashiCorp Azurerm provider.

## What this project contains

- `providers.tf` - Terraform required version, provider source, and Azurerm provider configuration
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
4. Review the planned changes:
   ```bash
   terraform plan
   ```
5. Apply the configuration:
   ```bash
   terraform apply
   ```

## Notes

This repository currently contains the provider setup only. Add your Azure resource definitions to the Terraform configuration as needed.
