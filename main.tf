module "jx" {
  source  = "jenkins-x/jx/google"
  version = "1.10.1"
  # insert the 1 required variable here
  gcp_project = "jenkins-x-314018"
  cluster_name = "jenkins-x"
}

terraform {
  backend "gcs" {
      bucket = "jenkins-x-terraform-state-files"
      prefix = "terraform/state"
  }
}