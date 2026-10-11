variable "user_saved_replies" {
  description = <<EOT
Map of user_saved_replies, attributes below
Required:
    - content
    - name
EOT

  type = map(object({
    content = string
    name    = string
  }))
}

