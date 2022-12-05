terraform {
  backend "s3" {
    bucket = "b51-tf-remote-state-bucket-afs"
    key    = "sample/terraform.tfstate"
    region = "us-east-1"
  }
}