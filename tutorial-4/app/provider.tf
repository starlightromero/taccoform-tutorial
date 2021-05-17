
# This tells terraform which cloud provider (or other hosted service) to expect to interaface with and
# which version of terraform is required
terraform {
  backend "remote" {
    organization = "starlightromero"

    workspaces {
      name = "taccoform-tutorial"
    }
  }

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0.0"
    }

  }
  required_version = ">= 0.13"
}

# This is how authentication to digital ocean is called
provider "digitalocean" {
  token = var.do_token
}
