variable "v1" {
    default = "Hello World"
    }

variable "v2" {
    default = [ "Hi",123,true ]
    }

variable "v3" {
    default= {
        abc = 100
        xyz = "five hundred"
        }
    }

variable "fruits"{
    default = {
        apple = {
            price    = 5
            quantity = 100
            }
        banana ={
            price = 20
            quantity = 50
            }
        }
    }