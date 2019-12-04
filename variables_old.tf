variable "base_workspace_variables" {
  description = "List of variables for the workspace"
  type        = list

  default = [
    {
      key       = "name"
      value     = "awsreinvent2K19"
      category  = "terraform"
      hcl       = "false"
      sensitive = "false"
    },
    {
      key       = "azs"
      value     = "eu-west-1a,eu-west-1b,eu-west-1c"
      category  = "terraform"
      hcl       = "true"
      sensitive = "false"
    },
    {
      key       = "internet_gateway"
      value     = "true"
      category  = "terraform"
      hcl       = "false"
      sensitive = "false"
    },
    {
      key       = "single_nat_gateway"
      value     = "true"
      category  = "terraform"
      hcl       = "false"
      sensitive = "false"
    },
    {
      key       = "one_nat_gateway_per_az"
      value     = "false"
      category  = "terraform"
      hcl       = "false"
      sensitive = "false"
    },
    {
      key       = "vpc_cidr_block"
      value     = "10.0.0.0/16"
      category  = "terraform"
      hcl       = "false"
      sensitive = "false"
    },
    {
      key       = "vpc_public_subnet_cidr_block"
      value     = "10.0.1.0/24,10.0.2.0/24,10.0.3.0/24"
      category  = "terraform"
      hcl       = "true"
      sensitive = "false"
    },
    {
      key       = "vpc_private_subnet_cidr_block"
      value     = "10.0.10.0/24,10.0.11.0/24,10.0.12.0/24"
      category  = "terraform"
      hcl       = "true"
      sensitive = "false"
    },
    {
      key       = "public_zone_name"
      value     = "demoaws.my-v-world.com"
      category  = "terraform"
      hcl       = "true"
      sensitive = "false"
    },
    {
      key       = "comment_public"
      value     = "Used for HashiCorp Demos"
      category  = "terraform"
      hcl       = "true"
      sensitive = "false"
    },
    {
      key       = "private_zone_name"
      value     = "internal.my-v-world.com"
      category  = "terraform"
      hcl       = "true"
      sensitive = "false"
    },
    {
      key       = "comment_private"
      value     = "Used internally for HashiCorp Demos"
      category  = "terraform"
      hcl       = "true"
      sensitive = "false"
    },
    {
      key       = "AWS_ACCESS_KEY_ID"
      value     = "AKIA266GU7ZPAOGYCWPW"
      category  = "env"
      hcl       = "false"
      sensitive = "true"
    },
    {
      key       = "AWS_SECRET_ACCESS_KEY"
      value     = "YS8BsudG5MucKaDy3U8UKR5ws7f/WADWnNhT/U+K"
      category  = "env"
      hcl       = "false"
      sensitive = "true"
    },
    {
      key       = "AWS_DEFAULT_REGION"
      value     = "eu-west-1"
      category  = "env"
      hcl       = "false"
      sensitive = "false"
    },
  ]
}

variable "instance_workspace_variables" {
  description = "List of variables for the instance workspace"
  type        = list

  default = [
    {
      key       = "prefix"
      value     = "reinvent"
      category  = "terraform"
      hcl       = "false"
      sensitive = "false"
    },
    {
      key       = "ssh_public_key"
      value     = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC4oo5BbgZwTRrm9H0gVBveYV6Rx/7ORskgz0MGcAfTRFlYfkpnZFDEox9B1xBavWUCpIKwTLgHwzcepiQ9+8hK280pMpCqnp5Q3e2EGJ3tHji6vPhZFNFjhq2b8nhY1aQFxt31L3pX2kZwjPa5cfRkeyUCwxqbbyar5sks8JxBA2l+KhelM1fR8jcXHF9MUWHfxL8bjw9AmD24p3j35UmU3yQZGShITvFdEgnLOaOXjwqylrTK0XzV4R0AO7sJrse97xZaD3jYUEFCxqf1xo2rRSD2y2goQ8WnVv66Ep9CVg/jMG99UCWNCfKZSCsopM4xBP5h5YOSC6QyBDBjXfT/ nicolas@MacBook-Pro-de-Nicolas.local"
      category  = "terraform"
      hcl       = "false"
      sensitive = "true"
    },
    {
      key       = "instance_type"
      value     = "t2.micro"
      category  = "terraform"
      hcl       = "false"
      sensitive = "false"
    },
    {
      key       = "placeholder"
      value     = "placekitten.com"
      category  = "terraform"
      hcl       = "false"
      sensitive = "false"
    },
    {
      key       = "width"
      value     = "400"
      category  = "terraform"
      hcl       = "false"
      sensitive = "false"
    },
    {
      key       = "height"
      value     = "600"
      category  = "terraform"
      hcl       = "false"
      sensitive = "false"
    },
    {
      key       = "AWS_ACCESS_KEY_ID"
      value     = "AKIA266GU7ZPAOGYCWPW"
      category  = "env"
      hcl       = "false"
      sensitive = "true"
    },
    {
      key       = "AWS_SECRET_ACCESS_KEY"
      value     = "YS8BsudG5MucKaDy3U8UKR5ws7f/WADWnNhT/U+K"
      category  = "env"
      hcl       = "false"
      sensitive = "true"
    },
    {
      key       = "AWS_DEFAULT_REGION"
      value     = "eu-west-1"
      category  = "env"
      hcl       = "false"
      sensitive = "false"
    },
  ]
}
