/*
# Step 8 - Add variables
variable "default_tags" {
  default = {
    "Owner" = "acs730"
    "App"   = "Web"
  }
  type        = map(any)
  description = "Default tags to be appliad to all AWS resources"
}

# Step 8 - Add variables
variable "prefix" {
  default     = "week3"
  type        = string
  description = "Name prefix"
}

# Step 13 - Provision multiple resources of the same type
variable "cidr_block" {
  default     = "172.31.97.0/24"
  type        = string
  description = "Subnet CIDR"
}
*/

# Provision public subnets in custom VPC
variable "public_cidr_blocks" {
  default     = ["10.20.0.0/24", "10.20.1.0/24"]
  type        = list(string)
  description = "Public Subnet CIDRs"
}
# VPC CIDR range
variable "vpc_cidr" {
  default     = "10.20.0.0/16"
  type        = string
  description = "VPC to host static web site"
}
# Default tags
variable "default_tags" {
  default     = {}
  type        = map(any)
  description = "Default tags to be appliad to all AWS resources"
}

# Prefix to identify resources
variable "prefix" {
  default     = "week7"
  type        = string
  description = "Name prefix"
}


# Variable to signal the current environment 
variable "env" {
#  default     = "dev"
  type        = string
  description = "Deployment Environment"
}