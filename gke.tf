provider "google" {
  project = "bootcamp-project-361711"
  region  = "europe-west3"
  zone    = "europe-west3-a"
}

resource "google_compute_network" "vpc_network" {
  name = "bcp-network"
  auto_create_subnetworks = "true"
}

resource "google_container_cluster" "bootcamp_project" {
  name = "bcp-gke"
  
  remove_default_node_pool = true
  initial_node_count = 1

  network = google_compute_network.vpc_network.name
}

resource "google_service_account" "nodepool" {
  account_id   = "bcp-serviceaccount"
  display_name = "BCP Service Account"
}

resource "google_container_node_pool" "primary_preemptible_nodes" {
  name       = "bcp-node-pool"
  cluster    = google_container_cluster.bootcamp_project.name
  node_count = 3

  node_config {
    preemptible  = true
    machine_type = "e2-medium"

    service_account = google_service_account.nodepool.email
    oauth_scopes    = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]
  }
}