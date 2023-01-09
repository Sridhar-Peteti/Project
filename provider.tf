provider "aws" {
  shared_credentials_file = "$HOME/.aws/credentials"
  shared_config_file = "$HOME/.aws/config"
  profile = "default"
}
