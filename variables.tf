variable "rgname" { 
    type = string
    description = "Resource group name"
    }

variable "location" {
    type = string
    description = "location"
 }

variable "vnet" {
    type = string
    description = "vnet name"
 }

variable "cidr" { 
    type = string
        description = "CIDR Address space"
}

variable "dnsserver" { 
    type = list
        description = "DNS Server address"
}

variable "subnet1" { 
    type = string
        description = "subnet1 name"
}

variable "subnet1addr" { 
    type = string
        description = "subnet1_addr space"
}
