module "dev_iam" {
    source = "./module/iam"
    rolename = "dev_role_for_ec2"
    envname = "${module.dev-vpc.env_name}"
    instanceprofilename = "dev-ins-profile"
    attachroles = "${module.dev-vpc.rolename}"
  
}

module "prod_iam" {
    source = "./module/iam"
    rolename = "prod_role_for_ec2"
    envname = "${module.prod-vpc.env_name}"
    instanceprofilename = "prod-ins-profile"
    attachroles = "${module.prod-vpc.rolename}"
  
}

module "stage_iam" {
    source = "./module/iam"
    rolename = "stage_role_for_ec2"
    envname = "${module.stage-vpc.env_name}"
    instanceprofilename = "stage-ins-profile"
    attachroles = "${module.stage-vpc.rolename}"
  
}