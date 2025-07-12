# to create an s3 bucket
resource "aws_s3_bucket" "my-s3-bucket" {
    bucket = "my-s3-bucket"
}
# to create a bucket policy
resource "aws_s3_bucket_policy" "my-s3-bucket-policy" {
    bucket = aws_s3_bucket.my-s3-bucket.id
    policy = data.aws_iam_policy_document.my-s3-bucket-policy.json
}