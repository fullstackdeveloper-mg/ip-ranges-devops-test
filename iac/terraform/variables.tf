variable "ip-ranges-url" {
  type = string
  description = "URL of the IP ranges"

  validation {
    condition = can(regex("^https?://.+", var.ip-ranges-url))
    error_message = "Please provide a valid http URL."
  }
}
