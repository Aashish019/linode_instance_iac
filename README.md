# Terraform Linode Setup

## Overview

This Terraform configuration automates the deployment of Linode instances using the Linode provider. The `terraform.tfvars` file contains necessary variables such as authentication token, root password, region, instance type, and OS image.

## Prerequisites

- Terraform installed ([Download Terraform](https://developer.hashicorp.com/terraform/downloads))
- A Linode account ([Sign up here](https://www.linode.com/))
- Linode API Token

## Files

- `main.tf` - Defines the infrastructure configuration
- `variables.tf` - Declares required variables
- `terraform.tfvars` - Stores sensitive configuration variables (DO NOT commit this file)

## Configuration

### 1. Create a `terraform.tfvars` file

```hcl
linode_token = "your-linode-token"
root_pass    = "Aashi@gmail.com"
region       = "us-east"
type         = "g6-nanode-1"
image        = "linode/ubuntu22.04" # Change if needed
```

### 2. Initialize Terraform

```sh
terraform init
```

### 3. Plan the Deployment

```sh
terraform plan
```

### 4. Apply the Configuration

```sh
terraform apply -auto-approve
```

Alternatively, apply with a variable file:

```sh
terraform apply -var-file="terraform.tfvars
```

### 5. Destroy the Resources (if needed)

```sh
terraform destroy -auto-approve
```

## Notes

- Keep your `terraform.tfvars` file secure to avoid exposing credentials.
- Change `root_pass` to a strong password before deploying.
- Adjust the region, type, and image as required for your use case.

## References

- [Terraform Linode Provider](https://registry.terraform.io/providers/linode/linode/latest/docs)
- [Linode API Documentation](https://www.linode.com/docs/api/)

