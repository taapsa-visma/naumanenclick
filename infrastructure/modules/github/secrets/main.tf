resource "github_actions_secret" "secret" {
  repository      = "naumanenclick"
  secret_name     = var.secret_name
  plaintext_value = var.secret_value
}