output "random_pasword_result" {
  value = random_password.password[0].result
}
output "random_user_result" {
  value = random_string.user[0].result
}