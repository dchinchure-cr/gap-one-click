# CheckRed's GCPM GCP Integration

## Project Setup

Google Cloud Platform organizes resources into projects.
Select your GCP project to integrate with CheckRed Platform
<walkthrough-project-setup></walkthrough-project-setup>

## Enable IAM API for generating short-lived credentials & impersonating service accounts. 
```bash
gcloud services enable iamcredentials.googleapis.com --project=<walkthrough-project-id/>
```
## Create service account for CheckRed platform integration
```bash
gcloud iam service-accounts create checkred-integration-account --display-name "CheckRed Integration" --project=<walkthrough-project-id/>
```

## Add IAM policy to service account 
```bash
gcloud projects add-iam-policy-binding <walkthrough-project-id/> \
  --member="serviceAccount:<your-service-account>@<walkthrough-project-id/>.iam.gserviceaccount.com" \
  --role="roles/iam.viewer" --project=<walkthrough-project-id/>
```

```bash
gcloud projects add-iam-policy-binding $(PROJECT_ID) \
  --member="test-sts-checkred-external-aco@checkred-external-app.iam.gserviceaccount.com" \
  --role="roles/iam.serviceAccountTokenCreator" --project=<walkthrough-project-id/>
```

## Congratulations

<walkthrough-conclusion-trophy></walkthrough-conclusion-trophy>

You’re all set!
