variable "instances" {
    type = map
    default = {
        mysql = "t3.micro"
        backend = "t2.micro"
        frontend = "t3.micro"
    }
}

variable "domain_name" {
    default = "sdaws-82s.online"
}

variable "zone_id" {
  default     = "Z00146862SGSOGHGEE3CL"
}


