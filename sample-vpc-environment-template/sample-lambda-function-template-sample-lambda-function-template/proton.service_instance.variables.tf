/*
This file is managed by AWS Proton. Any changes made directly to this file will be overwritten the next time AWS Proton performs an update.

To manage this resource, see AWS Proton Resource: arn:aws:proton:us-east-1:990828982247:service/sample-lambda-function-template/service-instance/sample-lambda-function-template

If the resource is no longer accessible within AWS Proton, it may have been deleted and may require manual cleanup.
*/

variable "environment" {
  type = object({
    account_id = string
    name       = string
    outputs    = map(string)
  })
  default = null
}

variable "service" {
  type = object({
    name                      = string
    branch_name               = string
    repository_connection_arn = string
    repository_id             = string
  })
}

variable "service_instance" {
  type = object({
    name       = string
    inputs     = map(string)
    components = map(any)
  })
  default = null
}

variable "proton_tags" {
  type    = map(string)
  default = null
}
