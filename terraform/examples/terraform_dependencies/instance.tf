resource "google_compute_instance" "terraform_instance" {
  name         = "terraform-instance"
  machine_type = "e2-micro"
  tags         = ["web", "dev"]


  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    # Example for implicit dependency on `terraform_network`
    network = google_compute_network.terraform_network.self_link
    access_config {
      nat_ip = google_compute_address.terraform_instance_static_ip.address
    }
  }
}

resource "google_compute_address" "terraform_instance_static_ip" {
  name = "terraform-static-ip"
}
