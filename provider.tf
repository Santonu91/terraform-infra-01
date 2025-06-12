#aws

provider "aws" {
  # Configuration options
  region     = "us-east-1"  # Change to your desired region
}

data "aws_caller_identity" "current" {}

output "account_id" {
  value = data.aws_caller_identity.current.account_id
}


resource "aws_instance" "ec2" {
  ami           = "ami-09e6f87a47903347c"
   # Amazon Linux 2 AMI (change based on region)
  instance_type = "t2.micro"

  tags = {
    Name = "Terraform_EC2"
  }
}

# Azure

# provider "azurerm" {
#   features {}
#    resource_provider_registrations = "none"

#   # Optional: specify subscription ID, tenant ID, client ID, and client secret here
#   # or set them as environment variables


# }


# data "azurerm_client_config" "current" {}

# output "client_id" {
#   value = data.azurerm_client_config.current.client_id
# }

# output "subscription_id" {
#   value = data.azurerm_client_config.current.subscription_id
# }

# output "tenant_id" {
#   value = data.azurerm_client_config.current.tenant_id
# }