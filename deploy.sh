echo $1
export GOOGLE_CLOUD_PROJECT=$1 
gcloud services enable iamcredentials.googleapis.com --project $1
sed -i "s/PROJECT_ID/$1/g" checkred.tf
terraform init
terraform plan
terraform apply -auto-approve
