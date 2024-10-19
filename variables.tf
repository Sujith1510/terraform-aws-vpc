variable project_name {
    type = string
}

variable environment {
    type = string
}

variable vpc_cidr {
  default     = "10.0.0.0/16"
}

variable enable_dns_hostnames {
  default     = true
}

variable common_tags {
  default     = {}
}

variable vpc_tags {
  default     = {}
}

variable public_subnet_tags {
  default     = {}
}

variable private_subnet_tags {
  default     = {}
}

variable database_subnet_tags {
  default     = {}
}

variable public_subnet_cidrs {
    type = list(string)
    validation {
    condition     = length(var.public_subnet_cidrs) == 2
    error_message = "enter 2 public_subnet_cidrs"
  }    
}

variable private_subnet_cidrs {
    type = list(string)
    validation {
    condition     = length(var.private_subnet_cidrs) == 2
    error_message = "enter 2 private_subnet_cidrs"
  }    
}

variable database_subnet_cidrs {
    type = list(string)
    validation {
    condition     = length(var.database_subnet_cidrs) == 2
    error_message = "enter 2 database_subnet_cidrs"
  }    
}