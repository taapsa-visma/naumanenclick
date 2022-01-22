data "aws_iam_policy_document" "s3policy" {
  statement {
    actions = [
      "s3:GetObject"
      ]

    resources = [
      aws_s3_bucket.bucket.arn,
      "${aws_s3_bucket.bucket.arn}/*"
    ]

    principals {
      type        = "AWS"
      identifiers = [var.oai_arn]
    }
  }
}