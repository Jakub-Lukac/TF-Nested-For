# key-value pair
# i - key (int this case it is a index of a element in the array(list))
# v - value
output "data-output-list" {
  value = [for i, v in var.data : "${i}-${v}"]
}

output "data-output-map" {
  value = { for i, v in var.data : i => v }
}

output "expected_output" {
  value = local.expected_output
}