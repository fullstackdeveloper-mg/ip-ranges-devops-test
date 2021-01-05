data "http" "ip-ranges" {
  url = var.ip-ranges-url

  request_headers = {
    Accept = "application/json"
  }
}
