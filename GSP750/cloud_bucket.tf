resource "google_storage_bucket" "example_bucket" {
  name     = "pras-test-bucket-v5"
  location = "US"

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
}


resource "google_compute_instance" "terraform_instance_2" {
  # Example for explicit dependency
  depends_on = [google_storage_bucket.example_bucket]

  name         = "terraform-instance-2"
  machine_type = "e2-micro"

  boot_disk {
    initialize_params {
      image = "cos-cloud/cos-stable"
    }
  }

  network_interface {
    network = google_compute_network.terraform_network.self_link
    access_config {
    }
  }
}
