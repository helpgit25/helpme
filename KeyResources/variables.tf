#Resource Group
variable "RG_NAME" {
    default = "tf_rg_Feb22"
}
variable "RG_LOCATION" {
    default = "centralus"
}
#Vnet
variable "TF_VNET_NAME" {
    default = "tf-vnet"
}
variable "VNET_ADDRESS_SPACE" {
    default = "192.168.0.0/16"
}
variable "VNET_SUBNET_ADDRESS_PREFIX" {
    default = "192.168.0.0/24"
}
variable "SUBNET_NAME" {
    default = "tf-subnet"
}
# NSG
variable "NSG_NAME" {
    default = "tf-nsg"
}
