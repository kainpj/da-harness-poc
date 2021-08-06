// VARIABLE DEFINITIONS
variable "policy_statement" {
  type        = string
  description = "The policy statement of the instance profile (must be valid json)"
}

variable "assume_role_policy" {
  type        = string
  description = "The assume role policy statement of the instance profile (must be valid json)"
}