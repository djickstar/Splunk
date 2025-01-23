# Create VPC LAB-1-VPC
resource "aws_vpc" "LAB-1-VPC" {
  cidr_block       = "10.10.0.0/16"
  instance_tenancy = "default"


  tags = {
    Name = "LAB-1-VPC"
  }
}

# Splunk EC2 Instance
resource "aws_instance" "Splunk-EC2-Instance" {
  ami               = "ami-0df8c184d5f6ae949"
  instance_type     = "t2.micro"
  availability_zone = "us-east-1a"
  #associate_public_ip_address = 
  disable_api_stop = true
  #key_name = 
  #monitoring = false
  #private_ip = 
  #security_groups =
  #user_data = 
  #iam_instance_profile = 
  tags = {
    Name = "Terraform-webserver"
  }
}
output "InstanceLabinfo" {
  value = resource.aws_instance.Splunk-EC2-Instance.id

}