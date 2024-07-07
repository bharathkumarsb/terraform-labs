
output "aws_iam_user" {

  value = [aws_iam_user.example.*.arn]

}