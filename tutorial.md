# CheckRed's GCPM GCP Integration

## Project Setup

Google Cloud Platform organizes resources into projects.
Select your GCP project to integrate with CheckRed Platform
<walkthrough-project-setup></walkthrough-project-setup>

## Enable IAM API for generating short-lived credentials & impersonating service accounts. 
```bash
sh deploy.sh <walkthrough-project-id/>
```

Please copy the service account email and paste into the CheckRed GCP Impersonation. 

## Congratulations

<walkthrough-conclusion-trophy></walkthrough-conclusion-trophy>

You’re all set!
