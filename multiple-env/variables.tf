variable "project"{
    default = "expense"
}

variable "environment"{
  
}

variable "instances"{
  default = ["mysql", "backend", "frontend"]
}

variable "zone_id" {
  default     = "Z00146862SGSOGHGEE3CL"
}

variable "domain_name" {
  default     = "sdaws-82s.online"
}

variable "common_tags" {
   type = map
   default = {
       Project = "expense"
       Terraform = "true"
   }

}
