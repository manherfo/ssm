resource "aws_ssm_parameter" "username" {
  count  = "${var.user_enabled == "true" ? 0 : 1}"
  name        = "/empresa/${var.environment}/${var.user_name}"
  type        = "String"
  value       = var.username_value
}
resource "aws_ssm_parameter" "password" {
  count  = "${var.password_enabled == "true" ? 0 : 1}"
  name        = "/empresa/${var.environment}/${var.password_name}"
  type        = "String"
  value       = var.password_value
}