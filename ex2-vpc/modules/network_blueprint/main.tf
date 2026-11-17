resource "local_file" "network_blueprint" {
  filename = "${path.root}/network_blueprint.txt"
  content  = <<-EOT
    --- Cartographie réseau VPC (${var.environment}) ---
    Zones de disponibilité : ${join(", ", var.availability_zones)}
    Zone principale        : ${var.availability_zones[0]}
    Sous-reseaux declares  : ${join(", ", keys(var.subnet_cidrs))}
    Detail des CIDR        : ${jsonencode(var.subnet_cidrs)}
  EOT
}