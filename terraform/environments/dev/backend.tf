terraform {
  backend "s3" {
    bucket       = "ezeh-lilian"
    key          = "petclinic/dev/terraform.tfstate"
    region       = "eu-central-1"
    use_lockfile = true
    encrypt      = true
  }
}
