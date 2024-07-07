resource "aws_s3_bucket" "test" {

  bucket = var.buccket_name

  versioning {

    enabled = true

  }

  lifecycle {
    prevent_destroy = false
  }

}