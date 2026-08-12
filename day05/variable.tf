variable "environment" {
    type = string
    description = "the env type"
    default = "prod"
}
variable "allowed_locations" {
    type = list(string)
    description = "list of allowed locations"
    default = [ "UK South", "North Europe" , "East US" ]
  
}
variable "location" {
  default = "UK South"
  type = string
  
}
variable "resource_tags" {
    type = map(string)
    description = "tags to apply to the resources"
    default = {
      "environment" = "staging"
      "managed_by" = "terraform"
      "department" = "devops"
    }
  
}
# Tuple type
variable "network_config" {
  type        = tuple([string, string, number])
  description = "Network configuration (VNET address, subnet address, subnet mask)"
  default     = ["10.0.0.0/16", "10.0.2.0", 24]
}
variable "allowed_vm_sizes" {
  type        = list(string)
  description = "Allowed VM sizes"
  default     = ["Standard_DS1_v2", "Standard_DS2_v2", "Standard_DS3_v2"]
}
variable "storage_account_name" {
  type = set(string)
  default = [ "techtutorials1101", "techtutorials1102" ]

  
}