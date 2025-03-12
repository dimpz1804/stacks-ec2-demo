
component "ec2" {
  for_each = var.regions

  source = "./ec2"

  inputs = {
    region = each.value
    infra_env = each.value
  }

  providers = {
    aws    = provider.aws.configurations[each.value]
  }
}