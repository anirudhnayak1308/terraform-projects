# 03 — Variables, Locals & Outputs in Terraform

Master Terraform's variable system — the key to writing **reusable, environment-aware** infrastructure code.

## 📋 What You'll Learn

- Defining input `variable`s with types, defaults, and validation
- Using `locals` for computed/reusable values
- Defining `output`s to expose resource attributes
- Conditional expressions in Terraform (`condition ? true : false`)
- Overriding variables at runtime with `-var` flag or `.tfvars` files

## 📁 Project Structure

```
03-variables-and-outputs/
├── main.tf        # Resources using vars and locals
├── variables.tf   # All input variable definitions
├── outputs.tf     # Outputs exposed after apply
├── .gitignore     # Ignore state files
└── README.md
```

## 🚀 How to Run

**Default (dev environment):**
```bash
terraform init
terraform apply
```

**Production environment (versioning enabled):**
```bash
terraform apply -var="environment=production" -var="project_name=myservice"
```

**Using a .tfvars file (create prod.tfvars):**
```hcl
environment  = "production"
project_name = "myservice"
owner_name   = "anirudh"
```
```bash
terraform apply -var-file="prod.tfvars"
```

**See outputs after apply:**
```bash
terraform output
terraform output bucket_name
```

## 💡 Variable Types

```hcl
variable "example_string" { type = string }
variable "example_number" { type = number }
variable "example_bool"   { type = bool   }
variable "example_list"   { type = list(string) }
variable "example_map"    { type = map(string) }
```

## 🔄 Variable Precedence (highest → lowest)

1. `-var` flag in CLI
2. `.tfvars` file (`-var-file`)
3. `terraform.tfvars` (auto-loaded)
4. Default value in `variable` block
5. Interactive prompt (if no default)

## 📤 Locals vs Variables

| | `variable` | `local` |
|-|-----------|---------|
| Set by | User / CLI | You (in config) |
| Use case | User input | Computed/derived values |
| Override | Yes | No |
