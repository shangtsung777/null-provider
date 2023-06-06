#### NULL PROVIDER ####
terraform {
  required_providers {
    null = {
      source = "hashicorp/null"
      version = "3.2.1"
    }
  }
  required_version = "~> 1.1.0"
}

resource "null_resource" "screen_output" {

  provisioner "local-exec" {
    command = <<EOT
    echo 'Hello'
    EOT
  }
}
