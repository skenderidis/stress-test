#!/usr/bin/env bash
# Filename: deploy.sh
#cd tf
#terraform init
#terraform apply --auto-approve


cd ansible
ansible-playbook create-inventories-5nodes.yml
ansible-playbook setup-k8s.yml -i k8s-inventory.ini
ansible-playbook setup-flannel.yml -i k8s-inventory.ini
ansible-playbook deploy-nginx-cis.yml -i k8s-inventory.ini
ansible-playbook setup-clients.yml -i k8s-inventory.ini


######################################################################################### 
###                 Only if you have the DNS zone deployed in Azure.                  ###
###     You will need to define the Resource Group and Zone name on the variables.tf  ###
######################################################################################### 
#cd terraform/azure/dns/k8s
#terraform init
#terraform apply --auto-approve

#cd terraform/azure/dns/f5-standalone
#terraform init
#terraform apply --auto-approve
######################################################################################### 

