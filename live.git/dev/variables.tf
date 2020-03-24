#TODO: add correct variable descriptions
variable "area" {
  type        = string
  description = "(Required) Project area (digital, analytics etc.)"
}
variable "project" {
  type        = map(string)
  description = "(Required) Project name"
}
variable "env" {
  type        = string
  description = "(Required) Project environment: dev, pre, pro"
}
variable "region" {
  type        = map(string)
  description = "(Required) The location where the resource group should be created."
}
variable "common_tags" {
  type        = map(string)
  default     = {}
  description = "(Optional) A mapping of tags to assign to the resource."
}
variable "virtualnetwork_cidr" {
  description = "The address space that is used by the virtual network."
  default     = "10.0.0.0/16"
}
# If no values specified, this defaults to Azure DNS
variable "dns_servers" {
  description = "(Optional) The DNS servers to be used with vNet."
  default     = ""
}
