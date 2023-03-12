
resource "google_compute_instance" "application-server" {
  name         = var.instance_name
  machine_type = var.machine-type
  zone         = var.region-zone
  tags         = ["web"]
  description  = "custom_compute_instance"
  boot_disk {
    initialize_params {
      image = var.image
      labels = {
        my_label = "public-vm"
      }
    }
  }

  // Local SSD disk
  scratch_disk {
    interface = "SCSI"
  }

  network_interface {
    network    = var.network
    subnetwork = var.subnetwork ###this will Enable Private IP Address 
    access_config {}    ##This will Enable Public IP address
    // Ephemeral public IP
  }

  metadata = {
    foo = "bar"
  }

  metadata_startup_script = var.metadata-script
}
