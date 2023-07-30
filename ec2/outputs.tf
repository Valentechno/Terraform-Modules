# Use command "terraform output -raw private_key" to get output from private key
output "private_key" {
  value     = tls_private_key.private-key.private_key_pem
  sensitive = true
}
