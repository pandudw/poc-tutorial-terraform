provider "google" {
    credentials = file("/home/pandudw/terraform/n")
    project = " "
    region  = "us-central1"
}

terraform {
    backend "gcs" {
         bucket = "devops-tfstate"
         prefix = "terraform/state"
    }
}

resource "google_compute_network" "network" {
    name                    = "vm-network"
    auto_create_subnetworks = true
}

resource "google_compute_instance" "vm_instance" {
    name         = "vm-poc"
    machine_type = "e2-medium"
    zone         = "us-central1-a"

    boot_disk {
        initialize_params {
            image = "debian-cloud/debian-10"
            size  = 100
        }
    }

    network_interface {
        network = google_compute_network.network.self_link
    }
}
    tags = ["http-server", "https-server", "ssh-server"]

resource "google_compute_firewall" "allow_http_https_ssh" {
    name    = "allow-http-https-ssh"
    network = "default"

    allow {
      protocol = "tcp"
      ports    = ["80", "443", "22"]
    }

    source_ranges = ["0.0.0.0/0"] 
    target_tags   = ["http-server", "https-server", "ssh-server"]
}
