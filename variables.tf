#Defining the AZs that I want to create the subnets (private-subnets)
variable "public_azs" {
  type = list(string)
  default = ["us-east-1d", "us-east-1e", "us-east-1f"]
}

variable "vpc_id" {
  type = string
  default = "vpc-07846064f27eb2140"
}