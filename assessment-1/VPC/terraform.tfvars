project                   = "terraform-vpx"
project-id                = "terraform-009"
region                    = "europe-west1"
network                   = "demo-vpc"
public-subnetwork         = "demo-public-subnetwork"
private-subnetwork        = "demo-private-subnetwork"
public-firewall           = "demo-public-firewall"
private-firewall          = "demo-private-firewall"
public-subnetwork-cidr    = "10.0.1.0/24"
private-subnetwork-cidr   = "10.0.2.0/24"
public-firewall-ports     = ["22", "80", "443", "8080"]
private-firewall-ports    = ["22"]
