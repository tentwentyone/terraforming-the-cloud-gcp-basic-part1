# Used to store cloud function code
resource "google_storage_bucket" "terraform_state" {
  # checkov:skip=CKV_GCP_62: Bucket should log access
  name          = "${data.google_project.this.project_id}-tf-state"
  location      = var.region
  force_destroy = true

  uniform_bucket_level_access = true
  public_access_prevention    = "enforced"
  versioning {
    enabled = true
  }
}
