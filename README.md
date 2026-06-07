# 🏗️ Terraform Projects

> Beginner-friendly Terraform projects to learn Infrastructure as Code (IaC) on AWS.

## 📁 Projects

| # | Project | Description |
|---|---------|-------------|
| 01 | [s3-bucket](./01-s3-bucket/) | Create an S3 bucket with versioning enabled |
| 02 | [ec2-instance](./02-ec2-instance/) | Launch a basic EC2 instance on AWS |
| 03 | [variables-and-outputs](./03-variables-and-outputs/) | Master Terraform variables, locals, and outputs |

## 🚀 Prerequisites

- [Terraform](https://developer.hashicorp.com/terraform/install) installed
- [AWS CLI](https://aws.amazon.com/cli/) configured with credentials
- An AWS account (Free Tier works for all projects)

```bash
# Configure AWS credentials
aws configure

# Verify Terraform installation
terraform version
```

## 📚 Concepts Covered

- `main.tf`, `variables.tf`, `outputs.tf` file structure
- Terraform providers and resources
- `terraform init`, `plan`, `apply`, `destroy` workflow
- Input variables and output values
- Locals for computed values

## 🔄 Basic Terraform Workflow

```bash
# 1. Initialize — download providers
terraform init

# 2. Plan — preview what will change
terraform plan

# 3. Apply — create the infrastructure
terraform apply

# 4. Destroy — tear everything down
terraform destroy
```

---
*Part of my DevOps learning journey 🚀*
