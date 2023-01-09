provider "aws" {
  region = "ap-south-1"
  shared_credentials_files = ["$HOME/.aws/credentials"]
  profile = "default"
}
