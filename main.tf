provider "aws" {
  access_key = "${var.access_key}"
  secret_key = "${var.secret_key}"
  region     = "us-east-1"
}

resource "aws_instance" "example"  {
        ami = "ami-4fffc834"
        instance_type = "t2.micro"
      #  security_groups = ["allow_all"]
        tags {
        Name="Terraform-Jenkins"
        }
}
