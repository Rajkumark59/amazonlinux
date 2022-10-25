module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "single-instance"
  instance_count = 1

  ami                    = "ami-0b920b0594b5288fb"
  instance_type          = "t2.micro"
  subnet_id              = "subnet-0e89d9543ad43cdc0"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

