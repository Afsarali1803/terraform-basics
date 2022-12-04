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

output "lits_print" {
  value="The value is first two ${var.list[0]}  ${var.list[1]} the value of last two ${var.list[-2]} ${var.list[-1]}"
}