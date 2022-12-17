# Azure Deployment With Using Terraform
PURPOSE:  Creating an environment using terraform

references:
https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs
-----------------------------------------------------------------
FILES:
*provider
*resource_group
*storage
*vm
*rg_portal_a8.png
*.gitignore
-----------------------------------------------------------------
#EXPLANATION OF FILES:

# PROVIDER--> A provider in Terraform is a plugin that enables interaction with an API. This includes Cloud providers and Software-as-a-service providers. The providers are specified in the Terraform configuration code. They tell Terraform which services it needs to interact with.


# RESOURCE_GROUP-->A resource group is a container that holds related resources for an Azure solution. The resource group can include all the resources for the solution, or only those resources that you want to manage as a group

# STORAGE-->Terraform Module to create an Azure storage account with a set of containers (and access level), set of file shares (and quota), tables, queues, Network policies and Blob lifecycle management.

# VM-->Terraform enables the definition, preview, and deployment of cloud infrastructure. Using Terraform, you create configuration files using HCL syntax. The HCL syntax allows you to specify the cloud provider - such as Azure - and the elements that make up your cloud infrastructure.

# RG_PORTAL_A8.PNG-->This file is a visualized version of the product.This is a PNG file format.

# .GITIGNORE-->Gitignore file specifies intentionally untracked files that Git should ignore
