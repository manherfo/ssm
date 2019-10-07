resource "random_string" "user" {
  count  = var.user_enabled == "true" ? 0 : 1
  length = 5
}

resource "random_password" "password" {
  count  = var.password_enabled == "true" ? 0 : 1
  length = 10
}