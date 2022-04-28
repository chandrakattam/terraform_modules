provider "aws" {
    access_key = "AKIA5JXGZUQ6FKZFHLHU"
    secret_key = "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"
    region = "us-east-1"  
}

terraform {
  backend "s3" {
      bucket = "modules3bucket"
      key = "module.tfstate"
      region = "us-east-1"
  }
}

module "prod-vpc" {
source = "./modules/vpc"
vpc_cidr = "10.130.0.0/16"
vpc_name = "Module_Prod_VPC"
IGW_name = "Module_Prod_IGW"
environment = "PROD"
public_subnet1_cidr = "10.130.10.0/24"
public_subnet2_cidr = "10.130.20.0/24"
public_subnet3_cidr = "10.130.30.0/24"
public_subnet1_name = "Module_Prod_VPC_Subnet-1"
public_subnet2_name = "Module_Prod_VPC_Subnet-2"
public_subnet3_name = "Module_Prod_VPC_Subnet-3"
Main_Routing_Table = "Module_Prod_VPC_MAIN_RT"
} 

module "dev-vpc" {
source = "./modules/vpc"
vpc_cidr = "10.130.0.0/16"
vpc_name = "Module_dev_VPC"
IGW_name = "Module_dev_IGW"
environment = "DEV"
public_subnet1_cidr = "10.130.10.0/24"
public_subnet2_cidr = "10.130.20.0/24"
public_subnet3_cidr = "10.130.30.0/24"
public_subnet1_name = "Module_dev_VPC_Subnet-1"
public_subnet2_name = "Module_dev_VPC_Subnet-2"
public_subnet3_name = "Module_dev_VPC_Subnet-3"
Main_Routing_Table = "Module_dev_VPC_MAIN_RT"
} 

module "stage-vpc" {
source = "./modules/vpc"
vpc_cidr = "10.130.0.0/16"
vpc_name = "Module_Stage_VPC"
IGW_name = "Module_Stage_IGW"
environment = "STAGE"
public_subnet1_cidr = "10.130.10.0/24"
public_subnet2_cidr = "10.130.20.0/24"
public_subnet3_cidr = "10.130.30.0/24"
public_subnet1_name = "Module_Stage_VPC_Subnet-1"
public_subnet2_name = "Module_Stage_VPC_Subnet-2"
public_subnet3_name = "Module_Stage_VPC_Subnet-3"
Main_Routing_Table = "Module_Stage_VPC_MAIN_RT"
} 

