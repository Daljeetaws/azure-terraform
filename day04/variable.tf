variable "environment" {
  type        = string
  description = "the env type"
  default     = "staging"
}
variable "resource_tags" {
  type        = map(string)
  description = "tags to apply to the resources"
  default = {
    "environment" = "staging"
    "managed_by"  = "terraform"
    "department"  = "devops"
  }
}
variable "storage_account_name" {
  type    = list(string)
  #type = set(string)
  default = ["techtutorials1101", "techtutorials1102"]
}
variable "allowed_locations" {
  type        = list(string)
  description = "list of allowed locations"
  default     = ["UK West", "North Europe", "UK South"]

}