# Learning App with Terraform

This repository contains the ASP.NET `learningapp` project together with the Terraform files used to provision the supporting Azure SQL infrastructure.

## Structure

- `learningapp/` - ASP.NET web application
- `learningapp.sln` - solution file
- `*.tf` - Terraform configuration
- `01.sql` - SQL script executed during local setup

## Local setup

1. Copy `terraform.tfvars.example` to `terraform.tfvars`.
2. Fill in your real SQL admin password, allowed client IP, and Azure provider credentials.
3. Run `terraform init` and `terraform apply`.

Sensitive local files such as `terraform.tfvars`, Terraform state, provider downloads, and generated .NET build artifacts are intentionally ignored by Git.
