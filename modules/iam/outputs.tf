output "rolename" {
    value = "${aws_iam_role.ec2_role.name}"
  
}

output instprofile {
  value = "${aws_iam_instance_profile.test_profile.name}"
}