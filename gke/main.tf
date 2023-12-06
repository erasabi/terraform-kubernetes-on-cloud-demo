module "gke" {
  source                     = "terraform-google-modules/kubernetes-engine/google"
  version                    = "~> 29.0"
  project_id                 = "terraform-demo-407305"
  name                       = "gke-demo-1"
  region                     = "us-central1"
  zones                      = ["us-central1-a", "us-central1-b", "us-central1-f"]
  network                    = "default"
  subnetwork                 = "default"
  ip_range_pods              = ""
  ip_range_services          = ""
  http_load_balancing        = false
  horizontal_pod_autoscaling = true
  network_policy             = true

  # node_pools = [
  #   {
  #     name               = "default-node-pool"
  #     machine_type       = "e2-medium"
  #     node_locations     = "us-central1-a,us-central1-b,us-central1-c"
  #     min_count          = 1
  #     max_count          = 3
  #     disk_size_gb       = 10
  #     disk_type          = "pd-standard"
  #     image_type         = "COS"
  #     auto_repair        = true
  #     auto_upgrade       = true 
  #     preemptible        = false
  #     initial_node_count = 1
  #   },
  # ]

  # node_pools_oauth_scopes = {
  #   all = []

  #   default-node-pool = [
  #     "https://www.googleapis.com/auth/cloud-platform",
  #   ]
  # }

  # node_pools_labels = {
  #   all = {}

  #   default-node-pool = {
  #     default-node-pool = true
  #   }
  # }

  # node_pools_metadata = {
  #   all = {}

  #   default-node-pool = {
  #     node-pool-metadata-custom-value = "my-node-pool"
  #   }
  # }

  # node_pools_tags = {
  #   all = []

  #   default-node-pool = [
  #     "default-node-pool",
  #   ]
  # }
}