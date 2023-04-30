# Variable contenant une map de plusieurs objets modélisant des utilisateurs
variable "map_users" {
  type = map(object({
    name = string
    display_name = string
    password = string
  }))
}

# Contient le Tenant dans lequel les utilisateurs doivent être déployé
variable "domain" {
  default = "oliviertissot21gmail.onmicrosoft.com"
}
