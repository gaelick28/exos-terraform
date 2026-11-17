locals {
  resource_prefix = "${var.environment}-${var.project_name}"

  common_tags = {
    Project     = var.project_name
    Environment = var.environment
    Owner       = var.owner
  }
}

resource "local_file" "aws_tags_report" {
  filename = "${path.root}/aws_tags_report.txt"
  content  = <<-EOT
    --- Rapport de tags AWS (Simulation) ---
    Prefixe normalise : ${local.resource_prefix}

    Tags standardises :
      Project     : ${local.common_tags["Project"]}
      Environment : ${local.common_tags["Environment"]}
      Owner       : ${local.common_tags["Owner"]}
  EOT
}