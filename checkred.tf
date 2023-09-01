resource "google_service_account" "checkred_integration" {
  account_id   = "checkred-integration-account"
  display_name = "CheckRed Integration"
  project      = "peak-sunset-338102"
}

# Output the email of the service account
output "service_account_email" {
  value = google_service_account.checkred_integration.email
}

resource "google_project_iam_binding" "viewer_binding" {
  project = "peak-sunset-338102"
  role    = "roles/iam.viewer"

  # Reference the email of the service account from the output
  members = [
    "serviceAccount:${google_service_account.checkred_integration.email}",
  ]
}

resource "google_project_iam_binding" "token_creator_binding" {
  project = "peak-sunset-338102"
  role    = "roles/iam.serviceAccountTokenCreator"

  members = [
    "serviceAccount:test-sts-checkred-external-aco@checkred-external-app.iam.gserviceaccount.com",
  ]
}
