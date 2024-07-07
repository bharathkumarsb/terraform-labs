resource "aws_sns_topic" "name" {

  name = "cloudlabs"
}

resource "aws_sns_topic_subscription" "name" {

  topic_arn = aws_sns_topic.name.arn
  protocol  = "email"
  endpoint  = var.email_endpoint

}