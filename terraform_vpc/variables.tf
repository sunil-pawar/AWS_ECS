# main creds for AWS connection
/* variable "aws_access_key_id" {
  description = "AWS access key"
} */

/*variable "aws_secret_access_key" {
  description = "AWS secret access key"
} */


/* variable "ecs_key_pair_name" {
  description = "ECS key pair name"
} */

/* variable "region" {
  description = "AWS region"
} */

variable "availability_zone" {
  description = "availability zone used for the demo, based on region"
  default = {
    us-east-1 = "us-east-1"
  }
}

########################### Test VPC Config ################################

variable "test_vpc" {
  description = "VPC for Test environment"
}

variable "vpc_cidr" {
    default = "10.0.0.0/16"
}

variable "test_public_01_cidr" {
  description = "Public 0.0 CIDR for externally accessible subnet"
  default = "10.0.1.0/24"
}

variable "test_public_03_cidr" {
  description = "Public 0.0 CIDR for externally accessible subnet"
  default = "10.0.3.0/24"
}
variable "test_private_04_cidr" {
  description = "private  0.0 CIDR for inetrnally accessible subnet"
  default = "10.0.4.0/24"
}

variable "test_private_02_cidr" {
  description = "Private  0.0 CIDR for internally accessible subnet"
  default = "10.0.2.0/24" 
  }


####################################### general tags ########################

variable "billing_tag" { default = "001" }
variable "stage" { default = "production" } 
variable "cluster_name" { default = "techtest" } 
 

########################################## images map ######################
variable "instance_map"  { 
  type = map
   default = { 
    "t2.micro" = "1" ,
    "t2.micro" = "2"
      } 
} 
######################################### capacity autoscaling###################3

variable "maximsize" {
  default=2
}
variable "minimsize" {
  default=1
}
variable "desire"{
  default=1
}

########################################Cluster variable ###########################

variable "ecs_cluster_name" {
  default = "test_ecs_cluster"
}
