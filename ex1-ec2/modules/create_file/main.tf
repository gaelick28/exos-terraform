resource "local_file" "aws_deployment" {
  filename = "${path.root}/aws_deployment.txt"
  content  = <<-EOT
    Région AWS            : ${var.aws_region}
    Instances EC2         : ${var.instance_count}
    Monitoring CloudWatch : ${var.enable_monitoring ? "actif" : "inactif"}
  EOT
}