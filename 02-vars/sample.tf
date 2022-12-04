variable "sample" {
  default = "Hello world"
}

output "print-output" {
  value = var.sample
}