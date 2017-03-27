provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_elastic_beanstalk_application" "tacoapp" {
  name = "tacoapp"
  description = "a basic CRUD application for storing tacos"
}

resource "aws_elastic_beanstalk_configuration_template" "tacoapp-config-template" {
  name                = "tacoapp-template-config"
  application         = "${aws_elastic_beanstalk_application.tacoapp.name}"
  solution_stack_name = "64bit Amazon Linux 2016.09 v4.0.0 running Node.js"
}

resource "aws_elastic_beanstalk_environment" "tacoapp-env" {
  name                = "tacoapp-env"
  application         = "${aws_elastic_beanstalk_application.tacoapp.name}"
  solution_stack_name = "64bit Amazon Linux 2016.09 v4.0.0 running Node.js"
}
