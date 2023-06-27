data "aws_iam_instance_profile" "ssm-profile" {
  name = var.aws_iam_instance_profile_name
}

resource "aws_instance" "ssm-test" {
  instance_type          = "t2.micro"
  ami                    = var.ami_id
  vpc_security_group_ids = [aws_security_group.web-pub-sg.id]
  subnet_id              = aws_subnet.public.id
  iam_instance_profile   = aws_iam_instance_profile.ssm-profile.name
  key_name               = "jan"
  associate_public_ip_address = false
  tags = {
    Name = "ssm-test-terraform"
  }
}