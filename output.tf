#outputs for prod_VPC
output "prod_vpc_id" {
  value = "${module.prod-vpc.vpc_id}"  
}
output "prod_subnet1_id" {
  value = "${module.prod-vpc.subnet_1}"  
}
output "prod_sg_id" {
  value = "${module.prod-vpc.sg_1}"  
}
output "prod_instprofile" {
  value = "${module.prod_iam.instprofile}"  
}


#outputs for dev_VPC
output "dev_vpc_id" {
  value = "${module.dev-vpc.vpc_id}" 
}
output "dev_subnet1_id" {
  value = "${module.dev-vpc.subnet_1}" 
}
output "dev_sg_id" {
  value = "${module.dev-vpc.sg_1}"  
}
output "dev_instprofile" {
  value = "${module.dev_iam.instprofile}"  
}

#outputs for stage_VPC
output "stage_vpc_id" {
  value = "${module.stage-vpc.vpc_id}"
}
output "stage_subnet1_id" {
  value = "${module.stage-vpc.subnet_1}" 
}
output "stage_sg_id" {
  value = "${module.stage-vpc.sg_1}"  
}
output "stage_instprofile" {
  value = "${module.stage_iam.instprofile}"  
}