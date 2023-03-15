module "ec2_instance" {
  source                      = "github.com/sanijoi/MODULES/modules/ec2_module"
  ami_id                      = "ami-0557a15b87f6559cf"
  instance_type               = "t2.micro"
  vpc_security_group_ids      = ["sg-0a6964789e2d5ac34"]
  subnet_id                   = "subnet-088121577a178d9e2"
  associate_public_ip_address = true
  key_name                    = "iman"
  tags = {
    Name = "PLG"
  }
}