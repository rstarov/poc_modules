# Network Security Group definition
variable "resource_group_name" {
  description = "(Required) Name of the resource group"
}

variable "project" {
    type = map(string)
    description = "(Required) Project name"
}

variable "tags" {
  type        = map(string)
  default     = {}
  description = "(Optional) A mapping of tags to assign to the resource."
}

# Optional variables for future use
# e.g. in next version of module 

# Predefined rules   
variable "predefined_rules" {
  type    = list(any)
  default = []
}

# Custom security rules
# [priority, direction, access, protocol, source_port_range, destination_port_range, description]
# All the fields are required.
variable "custom_rules" {
  description = "Security rules for the network security group using this format name = [priority, direction, access, protocol, source_port_range, destination_port_range, source_address_prefix, destination_address_prefix, description]"
  type        = list(any)
  default     = []
}

# source address prefix to be applied to all rules
variable "source_address_prefix" {
  type    = list(string)
  default = ["*"]

  # Example ["10.0.3.0/24"] or ["VirtualNetwork"]
}

# Destination address prefix to be applied to all rules
variable "destination_address_prefix" {
  type    = list(string)
  default = ["*"]

  # Example ["10.0.3.0/32","10.0.3.128/32"] or ["VirtualNetwork"] 
}
