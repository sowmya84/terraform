resource "aws_instance" "this" {
  ami                    = var.ami_id # This is our devops-practice AMI ID
  vpc_security_group_ids = [var.sg_id]
  instance_type          = var.instance_type
  tags = var.tags
}
