output "user_saved_replies_id" {
  description = "Map of id values across all user_saved_replies, keyed the same as var.user_saved_replies except keys with no id are omitted"
  value       = { for k, v in gitlab_user_saved_reply.user_saved_replies : k => v.id if v.id != null && length(v.id) > 0 }
}
output "user_saved_replies_content" {
  description = "Map of content values across all user_saved_replies, keyed the same as var.user_saved_replies except keys with no content are omitted"
  value       = { for k, v in gitlab_user_saved_reply.user_saved_replies : k => v.content if v.content != null && length(v.content) > 0 }
}
output "user_saved_replies_name" {
  description = "Map of name values across all user_saved_replies, keyed the same as var.user_saved_replies except keys with no name are omitted"
  value       = { for k, v in gitlab_user_saved_reply.user_saved_replies : k => v.name if v.name != null && length(v.name) > 0 }
}

