module "prod_ec2" {
  source = "./modules/ec2"
  imagename = "ami-04505e74c0741db8d"
  subnet1 = "${module.prod-vpc.subnet_1}"
  sg = "${module.prod-vpc.sg_1}"
  instance_type = "t2.nano"
  vpcname = "${module.prod-vpc.vpc_name}"
  iam_instance_profile = "${module.prod_iam.instprofile}"
}

module "dev_ec2" {
  source = "./modules/ec2"
  imagename = "ami-04505e74c0741db8d"
  subnet1 = "${module.dev-vpc.subnet_1}"
  sg = "${module.dev-vpc.sg_1}" 
  instance_type = "t2.micro"
  vpcname = "${module.dev-vpc.vpc_name}"
  iam_instance_profile = "${module.dev_iam.instprofile}"
}

module "stage_ec2" {
  source = "./modules/ec2"
  imagename = "ami-04505e74c0741db8d"
  subnet1 = "${module.stage-vpc.subnet_1}" 
  sg = "${module.stage-vpc.sg_1}" 
  instance_type = "t3.nano"
  vpcname = "${module.stage-vpc.vpc_name}"
  iam_instance_profile = "${module.stage_iam.instprofile}"
}