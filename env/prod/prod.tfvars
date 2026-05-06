rg_name  = "prod-rg"
location = "Korea Central"

vnet_name     = "vnet"
address_space = ["10.10.0.0/16"]

subnet_name   = "subnet"
subnet_prefix = ["10.10.1.0/24"]

aks_name       = "prodaks"
dns_prefix     = "aksdns"
node_count     = 2
vm_size        = "Standard_D2s_v3"
service_cidr   = "10.3.0.0/16"
dns_service_ip = "10.3.0.10"
