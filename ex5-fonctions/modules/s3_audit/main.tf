locals {
  bucket_clean    = lower(trimspace(var.bucket_name))
  bucket_short    = substr(local.bucket_clean, 0, 15)
  instance_count  = length(var.instance_types)
  instance_choice = element(var.instance_types, 1)
  private_gateway = lookup(var.network_private, "gateway", "aucune-gateway")
  network_merged  = merge(var.network_public, var.network_private)
}

resource "local_file" "s3_and_infra_audit" {
  filename = "${path.root}/s3_and_infra_audit.txt"
  content  = <<-EOT
    --- Audit S3 et infrastructure (Simulation) ---
    Bucket nettoye        : ${local.bucket_clean}
    Bucket court (15 car) : ${local.bucket_short}
    Nb types d'instances  : ${local.instance_count}
    Instance choisie      : ${local.instance_choice}
    Gateway privee        : ${local.private_gateway}
    Reseau fusionne       : subnet=${local.network_merged["subnet"]}, gateway=${local.network_merged["gateway"]}
    Cles du reseau        : ${join(", ", keys(local.network_merged))}
    Reseau en JSON        : ${jsonencode(local.network_merged)}
  EOT
}
