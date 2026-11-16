terraform {
  backend "s3" {
    bucket       = "uhtred03"                  # created by Infra/bootstrap
    key          = "project/terraform.tfstate" # unique per stack
    region       = "us-east-1"                 # region of the bucket
    encrypt      = true
    use_lockfile = true # S3-native state locking (no DynamoDB needed)
  }
}
