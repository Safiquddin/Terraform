/******************************************
	Create VPC and Subnets
 *****************************************/
module "env_networking" {
  source                = "../modules/01-vpc"
  vpc_cidr              = var.vpc_cidr
  vpc_name              = var.vpc_name
  public_web_subnet-1   = var.public_web_subnet-1
  availability_zone-1   = var.availability_zone-1
  public_web_subnet-2   = var.public_web_subnet-2
  availability_zone-2   = var.availability_zone-2
  private_app_subnet-1  = var.private_app_subnet-1
  private_app_subnet-2  = var.private_app_subnet-2
  private_db_subnet-1   = var.private_db_subnet-1
  private_db_subnet-2   = var.private_db_subnet-2
}

/******************************************
	Create Security Group
 *****************************************/

module "security_group" {
  source        = "../modules/02-security_group"
  vpc_id        = module.env_networking.vpc_id
}

/******************************************
	Create WEB Server
 *****************************************/

module "web_server" {
  source                  = "../modules/03-web_server"
  instance_name           = var.instance_name
  web_server_ami          = var.web_server_ami
  web_instance_type       = var.web_instance_type
  availability_zone-1     = var.availability_zone-1
  availability_zone-2     = var.availability_zone-2
  webserver_sg_id         = module.security_group.web_server_sg_id
  webserver_subnet_id_1   = module.env_networking.web_sub_1
  webserver_subnet_id_2   = module.env_networking.web_sub_2
}

/******************************************
	Create Load Balancer
 *****************************************/

module "load_balancer" {
  source                  = "../modules/04-load_balancer"
  webserver_sg            = module.security_group.web_server_sg_id
  webserver_subnet_id_1   = module.env_networking.web_sub_1
  webserver_subnet_id_2   = module.env_networking.web_sub_2
  webserver_instance1_id  = module.web_server.web_server_id_1
  webserver_instance2_id  = module.web_server.web_server_id_2
  webserver_instance1     = module.web_server.web_server_instance1
  webserver_instance2     = module.web_server.web_server_instance2
  vpc_id        = module.env_networking.vpc_id
} 

/******************************************
	Create RDS DB
 *****************************************/

module "rds_db" {
  source              = "../modules/05-rds"
  allocated_storage   = var.allocated_storage
  db_engine           = var.db_engine
  engine_version      = var.engine_version
  instance_class      = var.instance_class
  db_name             = var.db_name
  db_username         = var.db_username
  db_password         = var.db_password
  db_sg_id            = module.security_group.db_sg_id
  db_sub1_id          = module.env_networking.db_sub1_id
  db_sub2_id          = module.env_networking.db_sub2_id
}
