module "ec2" {
    source = "../terraform-aws-ec2"
    sg_id = "sg-07308b861b3a69673"
    instance_type = "t3.micro"
}

output "public_ip" {
    value = module.ec2.public_ip
}