# Terraform Templates

This directory contains reusable templates for creating new Terraform modules and environments following best practices.

## Directory Structure

```
_templates_/
├── environments/
│   ├── general/          # Template for general environment
│   └── production/       # Template for production environment
└── modules/
    └── vpc/             # Template for VPC module
```

## Usage Instructions

### Creating a New Module

1. Copy the `modules/vpc` directory structure:
   ```bash
   cp -r _templates_/modules/vpc your-module-name/
   ```

2. Update the module files:
   - `main.tf`: Define your resources
   - `variables.tf`: Define input variables with validation
   - `outputs.tf`: Define output values
   - `versions.tf`: Set Terraform and provider versions

3. Update module source in environment `main.tf` files

### Creating a New Environment

1. Copy the environment template:
   ```bash
   cp -r _templates_/environments/general your-environment-name/
   # or
   cp -r _templates_/environments/production your-environment-name/
   ```

2. Update the environment files:
   - `main.tf`: Reference your modules
   - `variables.tf`: Define environment-specific variables
   - `providers.tf`: Configure AWS provider
   - `outputs.tf`: Define environment outputs
   - `versions.tf`: Set Terraform and provider versions

3. Create a `.tfvars` file for your values (DO NOT COMMIT THIS FILE)

## Security Checklist

Before deploying any module or environment, ensure:

- [ ] **No hardcoded credentials** in any `.tf` files
- [ ] **Use least privilege policies** - avoid AdministratorAccess when possible
- [ ] **Enable password reset requirements** for IAM users
- [ ] **Add input validation** to all variables
- [ ] **Use proper tagging** for resource management
- [ ] **No sensitive data in version control** - use `.tfvars` files (not committed)
- [ ] **Use AWS provider configuration** instead of passing credentials to modules

## Best Practices

### Variable Management
- **Modules**: Should only contain variables specific to the module's functionality
- **Environments**: Should contain provider configuration and environment-specific variables
- **Never pass credentials to modules** - use provider configuration instead

### Resource Naming
- Use consistent naming conventions
- Include environment and project tags
- Use descriptive names for resources

### Validation
- Add validation blocks to all variables
- Validate email addresses, CIDR blocks, and other critical inputs
- Use appropriate default values

### Documentation
- Include descriptions for all variables and outputs
- Document any special requirements or dependencies
- Keep README files updated

## Example Usage

### Module Variables
```hcl
variable "name" {
  type        = string
  description = "Name of the resource"
  
  validation {
    condition     = length(var.name) > 0
    error_message = "Name cannot be empty."
  }
}
```

### Environment Configuration
```hcl
# providers.tf
provider "aws" {
  region     = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

# main.tf
module "example" {
  source = "../../modules/example"
  
  name = var.name
  tags = var.tags
}
```

### Tags
```hcl
variable "tags" {
  type        = map(string)
  description = "Tags to apply to all resources"
  default = {
    Environment = "production"
    Project     = "saac03-course"
    ManagedBy   = "terraform"
  }
}
```

## Security Warnings

⚠️ **CRITICAL**: Never commit `.tfvars` files containing real credentials to version control.

⚠️ **CRITICAL**: Always use least privilege policies for IAM users and roles.

⚠️ **CRITICAL**: Enable password reset requirements for IAM users.

⚠️ **CRITICAL**: Rotate any exposed credentials immediately. 