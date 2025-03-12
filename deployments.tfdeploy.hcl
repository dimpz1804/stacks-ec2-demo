
identity_token "aws" {
  audience = ["aws.workload.identity"]
}

deployment "development" {
  inputs = {
    regions        = ["us-east-1"]
    role_arn       = "arn:aws:iam::661900185749:role/stacks-dimpy_test-stacks-test-dimpy-stack01"
    identity_token = identity_token.aws.jwt
    default_tags   = { stacks-preview-example = "ec2-demo-stack" }
    infra_env      = "dev"
  }
}

deployment "production" {
  inputs = {
    regions        = ["us-east-1", "us-west-1"]
    role_arn       = "arn:aws:iam::661900185749:role/stacks-dimpy_test-stacks-test-dimpy-stack01"
    identity_token = identity_token.aws.jwt
    default_tags   = { stacks-preview-example = "ec2-demo-stack" }
    infra_env      = ["prod","prod"]
  }
}
