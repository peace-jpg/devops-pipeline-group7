terraform {
  required_version = ">= 1.0"
  
  required_providers {
    null = {
      source  = "hashicorp/null"
      version = "~> 3.0"
    }
  }
}

# Minimal configuration for workflow validation
resource "null_resource" "example" {
  triggers = {
    timestamp = timestamp()
  }
}
