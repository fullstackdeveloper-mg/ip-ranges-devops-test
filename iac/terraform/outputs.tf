locals {
  ip-ranges = jsondecode(data.http.ip-ranges.body).items
}

output "cidrs" {
  value = matchkeys(local.ip-ranges.*.cidr, local.ip-ranges.*.mask_len, list(32))
}
