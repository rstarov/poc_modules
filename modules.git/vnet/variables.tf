# Network Security Group definition
variable "resource_group_name" {
  description = "(Required) Name of the resource group"
}

variable "project" {
  type        = map(string)
  description = "(Required) Project name"
}

variable "virtualnetwork_cidr" {
  type        = list(string)
  description = "The address space that is used by the virtual network."
  default     = ["10.0.0.0/16"]
}

# If no values specified, this defaults to Azure DNS 
variable "dns_servers" {
  description = "(Optional) The DNS servers to be used with vNet."
  default     = []
}

variable "subnet_prefixes" {
  description = "The address prefix to use for the subnet."
  default     = ["10.0.1.0/24"]
}

variable "subnet_names" {
  description = "A list of public subnets inside the vNet."
  #default = ["subnet1"]
  # Do not create subnet by the default
  default = []
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "(Optional) A mapping of tags to assign to the resource."
}
