
######### Azure authentication variables #########

variable subscription_id  		{}
variable client_id				{}
variable client_secret  		{}
variable tenant_id				{}


#########   Common Variables   ##########
variable tag 					{default = "k.skenderidis@f5.com"}
variable username		  		{default = "azureuser"}
variable password		  		{default = "Kostas123"}
variable location				{default = "eastus"}
variable rg_prefix				{default = "KS-"}


###########   F5  Variables   ############
variable f5_rg_name				{default = "bigip-rg" }
variable f5_vnet_name  			{default = "secure_vnet"}
variable f5_vnet_cidr  			{default = "10.1.0.0/16" }

variable mgmt_subnet_name		{default = "management"}
variable int_subnet_name  		{default = "internal"}
variable ext_subnet_name  		{default = "external" }

variable mgmt_subnet_cidr		{default = "10.1.1.0/24" }
variable int_subnet_cidr  		{default = "10.1.20.0/24" }
variable ext_subnet_cidr  		{default = "10.1.10.0/24" }

variable self_ip_mgmt_01  		{default = "10.1.1.4"}
variable self_ip_ext_01  		{default = "10.1.10.4"}
variable app_ip_01        		{default = "10.1.10.10"}
variable app_ip_02        		{default = "10.1.10.20"}
variable app_ip_03        		{default = "10.1.10.30"}
variable app_ip_04        		{default = "10.1.10.40"}

variable self_ip_int_01  		{default = "10.1.20.4"}
variable prefix_bigip  			{default = "bigip"}

variable allowedIPs				{default = ["0.0.0.0/0"]}


##################   F5 Image related	 ##############

variable f5_version 			{default = "15.1.400000"}
variable f5_image_name 			{default = "f5-bigip-virtual-edition-200m-best-hourly" }
variable f5_product_name 		{default = "f5-big-ip-best"}
variable f5_instance_type 		{default = "Standard_DS4_v2"}

variable do_url 				{default = "https://github.com/F5Networks/f5-declarative-onboarding/releases/download/v1.25.0/f5-declarative-onboarding-1.25.0-7.noarch.rpm"}
variable as3_url 				{default = "https://github.com/F5Networks/f5-appsvcs-extension/releases/download/v3.32.0/f5-appsvcs-3.32.0-4.noarch.rpm"}
variable ts_url 				{default = "https://github.com/F5Networks/f5-telemetry-streaming/releases/download/v1.24.0/f5-telemetry-1.24.0-3.noarch.rpm" }
variable cfe_url 				{default = "https://github.com/F5Networks/f5-cloud-failover-extension/releases/download/v1.8.0/f5-cloud-failover-1.8.0-0.noarch.rpm" }
variable fast_url 				{default = "https://github.com/F5Networks/f5-appsvcs-templates/releases/download/v1.9.0/f5-appsvcs-templates-1.9.0-1.noarch.rpm" }
variable init_url               {default = "https://github.com/F5Networks/f5-bigip-runtime-init/releases/download/1.3.2/f5-bigip-runtime-init-1.3.2-1.gz.run"}


###########   k8s  Variables   ############

variable k8s_ip_master  		{default = "10.1.20.10"}
variable k8s_ip_node01  		{default = "10.1.20.20"}
variable k8s_ip_node02  		{default = "10.1.20.30"}
variable k8s_ip_node03  		{default = "10.1.20.40"}
variable k8s_ip_node04  		{default = "10.1.20.50"}
variable k8s_ip_node05  		{default = "10.1.20.60"}

variable k8s_prefix_master		{default = "master"}
variable k8s_prefix_node01		{default = "node01"}
variable k8s_prefix_node02		{default = "node02"}
variable k8s_prefix_node03		{default = "node03"}
variable k8s_prefix_node04		{default = "node04"}
variable k8s_prefix_node05		{default = "node05"}
variable k8s_vm-size			{default = "Standard_D8_v4"}

###########   client  Variables   ############

variable client01       {default = "10.1.10.101"}
variable client02       {default = "10.1.10.102"}

variable client_prefix_01       {default = "client01"}
variable client_prefix_02       {default = "client02"}

