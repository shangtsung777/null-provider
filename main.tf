#### NULL PROVIDER ####
terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.2.1"
    }
  }
}

provider "null" {
  # Configuration options
}
variable "some_id" {}
resource "null_resource" "screen_output" {
  
  triggers = {
    value = var.some_id
  }

  provisioner "local-exec" {
    command = <<EOT
    echo 'Hello'
    EOT
  }
}
