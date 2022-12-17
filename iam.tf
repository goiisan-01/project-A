resource "aws_iam_group" "developers" {
  name = "developers"
}

resource "aws_iam_group_policy" "developer_policy" {
  name  = "developer_policy"
  group = aws_iam_group.developers.name

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "s3:*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}

resource "aws_iam_group" "devops" {
  name = "devops"
}

resource "aws_iam_group_policy" "devops_policy" {
  name  = "devops_policy"
  group = aws_iam_group.devops.name

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "s3:*",
          "vpc:*",
          "ec2:*",
          "iam:*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
}

resource "aws_iam_group" "admin" {
  name = "admin"
}

resource "aws_iam_group_policy" "admin_policy" {
  name  = "admin_policy"
  group = aws_iam_group.admin.name

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [
      {
        Action = [
          "s3:*",
          "iam:*",
        ]
        Effect   = "Allow"
        Resource = "*"
      },
    ]
  })
} 

resource "aws_iam_user" "main" {
  name = "Test-User"
}

resource "aws_iam_user_group_membership" "main" {
  user = aws_iam_user.main.name

  groups = [
    aws_iam_group.developers.name,
    aws_iam_group.devops.name,
    aws_iam_group.admin.name,
  ]
}