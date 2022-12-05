variable "sample" {
  default = "Hello world"
}

output "print-output" {
  value = var.sample
}

output "stmt" {
  value = "The value needs to print ${var.sample}"
}


output "out-numeric" {
  value = "The value of numeric is ${var.numneric}"
}


output "list_print" {
  value = var.list
}

output "lits_print" {
  value="The value is first two ${var.list[0]}  ${var.list[1]} the value of last two ${var.list[4]} ${var.list[5]}"
}

# Map Variable 

variable "ex-map" {
    default = {
        Duration = 105 
        Timing   = "0730AMIST"
        BATCH    = 51 
        
    }
  
}

output "ex-map" {
  value = "The value is first two ${var.ex-map["Duration"]} and  ${var.ex-map["BATCH"]}"
}