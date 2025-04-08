output "v1" {
    value = var.v1
    }

output "v2" {
    value = element(var.v2, 4)
    }
# when you wanna call the index which is not there then you can give element key word

output "v3" {
    value = lookup(var.v3 ,"abc1","none")
    }
# when you have not defined key (abc1) in variable but you dont want to fail the output you will give lookup so it will take some default value

output "fruits" {
    value =("fruits - quantity - ${var.fruits["apple"]["quantity"]}")
    }
# when the variable is called inside the string we will define it in ${}