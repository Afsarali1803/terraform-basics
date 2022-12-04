variable "sample" {
  default = "Hello world"
}

output "print-output" {
  value = var.sample
}

output "stmt" {
  value = "The value needs to print ${var.sample}"
}

variable "numneric" {
  default = 100
}

output "out-numeric" {
  value = "The value of numeric is ${var.numneric}"
}