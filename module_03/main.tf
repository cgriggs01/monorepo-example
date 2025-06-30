variable "trigger" {
  description = "The trigger value for the `null_resource` resource in this module."
  default     = "one"
}

resource "null_resource" "resource_03" {
  triggers = {
    number = "${var.trigger}"

  tag = "demo"
  }
}

output "null_resource_id" {
  description = "The `id` of the `null_resource` resource in this module."
  value       = "${null_resource.resource.id}"
}

module "null_module_01" {
  source = "../module_01"
}
