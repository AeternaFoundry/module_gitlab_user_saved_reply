resource "gitlab_user_saved_reply" "user_saved_replies" {
  for_each = var.user_saved_replies

  content = each.value.content
  name    = each.value.name
}

