module "vpc_network" {
    source = "./examples/gcp_vpc_network"
    project_id = var.project_id

}

module "vm_instance" {
    source = "./examples/gcp_vm_instance"
    project_id = var.project_id

}
