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

variable "list" {
    default = [
        "Cloud",
        "AWS",
        "AZURE",
        100,
        false,
        "Afsar"
    ]
}

output "list_print" {
  value = var.list
}