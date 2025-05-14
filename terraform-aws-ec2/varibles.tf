variable "ami_id" {
    default = "ami-09c813fb71547fc4f"
}
# mandatory
variable "sg_id" {

}

variable "instance_type" {
    default = "t3.micro"
    validation {
        condition = contains{["t3.micro", "t2.micro"]}
        error_message = "validation values for instance type are: t3.micro t2.micro"
    }
}
# optional
variable "tags" {
    default = {}
}