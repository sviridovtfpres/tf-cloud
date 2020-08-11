# variable "project_web_id" {
#   default  = "sviridov-tf-cloud-web-dev"
# }

variable "project_web_id" {
  type = "map"

  default = {
    dev  = "sviridov-tf-cloud-web-dev"
    stg  = "sviridov-tf-cloud-web-stg"
  }
}


# variable "env" {
#   default             = "dev"
# }

variable "env" {
  type = "map"

  default = {
    dev  = "dev"
    stg  = "stg"
  }
}

variable "web_machine_type" {
  default = "f1-micro"
}

variable "region" {
  default = "us-central1"
}
