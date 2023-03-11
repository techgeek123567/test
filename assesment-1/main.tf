module "dev_cluster" {
    source     = "./module"
    env_name   = "dev"
    project_id = "${var.project_id}"
    instance_type = "e2-medium"
}
 
module "staging_cluster" {
    source     = "./module"
    env_name   = "staging"
    project_id = "${var.project_id}"
    instance_type = "e2-medium"
}
 
module "prod_cluster" {
    source     = "./module"
    env_name   = "prod"
    project_id = "${var.project_id}"
    instance_type = "n2-highmem-2"
}
 
variable "project_id" {
  description = "The project ID to host the cluster in"
}
