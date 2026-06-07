# 01 — S3 Bucket with Terraform

Create an AWS S3 bucket with versioning and public access blocking using Terraform.

## 📋 What You'll Learn

- Terraform project structure (`main.tf`, `variables.tf`, `outputs.tf`)
- Configuring the AWS provider
- Creating S3 bucket resources
- Enabling bucket versioning
- Applying security best practices (block public access)
- The `init → plan → apply → destroy` workflow

## 📁 Project Structure

```
01-s3-bucket/
├── main.tf        # Resources: S3 bucket, versioning, access block
├── variables.tf   # Input variables (region, bucket name)
├── outputs.tf     # Output values (bucket name, ARN)
├── .gitignore     # Ignore .tfstate and .terraform/
└── README.md
```

## 🚀 How to Run

**Prerequisites:** AWS CLI configured (`aws configure`)

**1. Initialize Terraform:**
```bash
terraform init
```

**2. Preview changes:**
```bash
terraform plan
```

**3. Create the bucket:**
```bash
terraform apply
```
Type `yes` when prompted.

**4. See outputs:**
```bash
terraform output
```

**5. Destroy when done:**
```bash
terraform destroy
```

## ⚙️ Customizing Variables

Pass different values without editing files:
```bash
terraform apply -var="bucket_name=my-unique-bucket-name-123" -var="aws_region=us-west-2"
```

## 💡 Key Terraform Concepts

| File | Purpose |
|------|---------|
| `main.tf` | Provider config and resource definitions |
| `variables.tf` | Input variables with types and defaults |
| `outputs.tf` | Values to display after apply |
| `.terraform/` | Downloaded providers (auto-generated, don't commit) |
| `terraform.tfstate` | Current state of resources (don't commit!) |
