resource "azurerm_virtual_network" "vnet_name_a8" {
  name                = "vnet_azure_portal"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg_name_a8.location
  resource_group_name = azurerm_resource_group.rg_name_a8.name
}

resource "azurerm_subnet" "subnet_name_a8" {
  name                 = "subnet_azure_portal"
  resource_group_name  = azurerm_resource_group.rg_name_a8.name
  virtual_network_name = azurerm_virtual_network.vnet_name_a8.name
  address_prefixes     = ["10.0.2.0/24"]
}

resource "azurerm_network_interface" "nic_name_a8" {
  name                = "nic_azure_portal"
  location            = azurerm_resource_group.rg_name_a8.location
  resource_group_name = azurerm_resource_group.rg_name_a8.name

  ip_configuration {
    name                          = "ip_azure_portal"
    subnet_id                     = azurerm_subnet.subnet_name_a8.id
    private_ip_address_allocation = "Dynamic"
  }
}

resource "azurerm_virtual_machine" "vm_name_a8" {
  name                  = "vm_azure_portal"
  location              = azurerm_resource_group.rg_name_a8.location
  resource_group_name   = azurerm_resource_group.rg_name_a8.name
  network_interface_ids = [azurerm_network_interface.nic_name_a8.id]
  vm_size               = "Standard_DS1_v2"

  storage_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "16.04-LTS"
    version   = "latest"
  }
  storage_os_disk {
    name              = "myosdisk1"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }
  os_profile {
    computer_name  = "mycomputer"
    admin_username = "mycomputer"
    admin_password = "mycoputer123!"
  }
  os_profile_linux_config {
    disable_password_authentication = false
  }
  tags = {
    environment = "staging"
  }
}