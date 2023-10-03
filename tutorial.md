# CheckRed's CSPM GCP Integration

## Project Setup

Google Cloud Platform organizes resources into projects.
Select your GCP project to integrate with CheckRed Platform
<walkthrough-project-setup></walkthrough-project-setup>

<walkthrough-footnote>COPYRIGHT © 2023-24 CheckRed LLC</walkthrough-footnote>

## Enable IAM API for generating short-lived credentials & impersonating service accounts. 
```bash
sh deploy.sh <walkthrough-project-id/> <CHECKRED_SERVICE_ACCOUNT_EMAIL>
```

Click on **Copy to Cloud Shell** <walkthrough-cloud-shell-icon></walkthrough-cloud-shell-icon> button and replace the <CHECKRED_SERVICE_ACCOUNT_EMAIL> with CheckRed email address 


NOTE: Please copy the output **service_account_email** and paste into the CheckRed GCP Impersonation account on CheckRed platform

<walkthrough-footnote>COPYRIGHT © 2023-24 CheckRed LLC</walkthrough-footnote>

## Congratulations

<walkthrough-conclusion-trophy></walkthrough-conclusion-trophy>

You’re all set!

<walkthrough-footnote>COPYRIGHT © 2023-24 CheckRed LLC</walkthrough-footnote>
