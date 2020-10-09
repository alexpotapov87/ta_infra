resource "google_container_cluster" "primary" {
  name               = "cluster-0"
  location           = "us-central1-a"
  project            = "premium-portal-279303"
  initial_node_count = 1



  node_config {
      machine_type = "g1-small"
      disk_size_gb = 20

    metadata = {
      disable-legacy-endpoints = "true"
    }

    labels = {
      foo = "gke-node"
    }

    tags = ["gke-node"]
  }

  timeouts {
    create = "30m"
    update = "40m"
  }
    #Configure local gcloud to connect to newly created cluster-0
  provisioner "local-exec" {
    command = "gcloud container clusters get-credentials cluster-0 --zone us-central1-a --project premium-portal-279303"
  }

}


