resource "local_file" "compliance_status" {
  filename = "${path.root}/compliance_status.txt"
  content  = <<-EOT
    --- Statut de conformite (Simulation) ---
    Environnement : ${var.aws_environment}
    Stockage      : ${var.storage_size_gb} Go
    Conformite    : OK
  EOT
}
