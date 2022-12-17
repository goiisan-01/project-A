resource "aws_iam_group" "developers" {
  name = "developers"
}

resource "aws_iam_group" "devops" {
  name = "devops"
}

resource "aws_iam_group" "admin" {
  name = "admin"
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