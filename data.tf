data "aws_iam_policy_document" "appconfig_policy" {
  statement {
    actions = [
      "appconfig:Get*",
      "appconfig:Create*",
      "appconfig:Update*",
      "appconfig:Delete*",
      "appconfig:List*",
      "appconfig:Start*",
      "appconfig:Stop*",
    ]

    resources = ["*"]
  }
}