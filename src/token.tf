variable "token" {
  type        = string
  default     = file("~/token")
  description = "OAuth-token; https://cloud.yandex.ru/docs/iam/concepts/authorization/oauth-token"
}