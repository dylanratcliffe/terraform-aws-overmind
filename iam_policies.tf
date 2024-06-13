resource "aws_iam_policy" "this" {
  name        = "overmind"
  path        = "/"
  description = "Allow Overmind read-only access to resource status"

  policy = jsonencode({
    "Version": "2012-10-17",
    "Statement": [
      {
        "Effect": "Allow",
        "Action": [
          "autoscaling:Describe*",
          "cloudfront:Get*",
          "cloudfront:List*",
          "cloudwatch:Describe*",
          "cloudwatch:ListTagsForResource",
          "directconnect:Describe*",
          "dynamodb:Describe*",
          "dynamodb:List*",
          "ec2:Describe*",
          "ecs:Describe*",
          "ecs:List*",
          "eks:Describe*",
          "eks:List*",
          "elasticfilesystem:Describe*",
          "elasticloadbalancing:Describe*",
          "iam:Get*",
          "iam:List*",
          "lambda:Get*",
          "lambda:List*",
          "network-firewall:Describe*",
          "network-firewall:List*",
          "networkmanager:Describe*",
          "networkmanager:Get*",
          "networkmanager:List*",
          "rds:Describe*",
          "rds:ListTagsForResource",
          "route53:Get*",
          "route53:List*",
          "s3:GetBucket*",
          "s3:ListAllMyBuckets",
          "sns:Get*",
          "sns:List*",
          "sqs:Get*",
          "sqs:List*"
        ],
        "Resource": "*"
      }
    ]
  })
}
