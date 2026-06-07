# 02 — EC2 Instance with Terraform

Launch a real EC2 instance on AWS running Nginx, provisioned entirely with Terraform.

## 📋 What You'll Learn

- Using `data` sources to fetch dynamic values (latest AMI)
- Creating Security Groups with ingress/egress rules
- Launching EC2 instances with `user_data` bootstrap scripts
- Resource dependencies (Terraform resolves automatically)
- Reading outputs after apply (public IP, DNS)

## 📁 Project Structure

```
02-ec2-instance/
├── main.tf        # EC2 instance, security group, AMI data source
├── variables.tf   # Instance type, region, name
├── outputs.tf     # Public IP, DNS, instance ID
├── .gitignore     # Ignore state files
└── README.md
```

## 🚀 How to Run

> ⚠️ This creates real AWS resources. Use `t2.micro` (free tier) and `destroy` when done!

**1. Initialize:**
```bash
terraform init
```

**2. Preview:**
```bash
terraform plan
```

**3. Apply:**
```bash
terraform apply
```

**4. Get the public IP:**
```bash
terraform output public_ip
```

Then visit `http://<public-ip>` in your browser — you'll see the Nginx welcome page!

**5. Always destroy when done:**
```bash
terraform destroy
```

## 💡 What Gets Created

| Resource | Details |
|----------|---------|
| Security Group | Allows SSH (22) and HTTP (80) |
| EC2 Instance | `t2.micro`, Amazon Linux 2023 |
| Nginx | Installed via `user_data` on boot |

## ⚠️ Cost Warning

`t2.micro` is free tier eligible — but always run `terraform destroy` when you're done to avoid charges!
