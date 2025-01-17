data "digitalocean_ssh_key" "root" {
  name = "taccoform-tutorial"
}

resource "digitalocean_droplet" "web" {
  image     = "ubuntu-20-04-x64"
  name      = "web-burrito-prod"
  region    = "sfo3"
  size      = "s-1vcpu-1gb"
  ssh_keys  = [data.digitalocean_ssh_key.root.id]
  user_data = templatefile("templates/user_data_nginx.yaml", { hostname = "web-burrito-prod" })
}

output "droplet_public_ip" {
  value = digitalocean_droplet.web.ipv4_address
}