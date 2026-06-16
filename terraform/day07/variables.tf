variable "subnets" {
    default = {
        "public-1a" = "10.0.1.0/24"
        "public-1b" = "10.0.2.0/24"
        "private-1a" = "10.0.3.0/24"
    }
}

variable "vpc_cidr" {
    default = {
        "dev" = "10.0.0.0/16"
        "staging" = "10.1.0.0/16"
        "prod" = "10.2.0.0/16"
    }
}