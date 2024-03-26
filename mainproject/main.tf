resource "aws_s3_bucket" "dev_bucket" {
  bucket = "my-tf-cookiefield-test-bucket"

  tags = {
    Name        = "My cookiefield Dev bucket"
    Environment = "Dev"
  }
}
//applies an s3 bucket acl resource to s3_backend
resource "aws_s3_bucket_acl" "s3_acl" {
  bucket     = aws_s3_bucket.dev_bucket.id
  acl        = "private"
  depends_on = [aws_s3_bucket_ownership_controls.dev_bucket_acl_ownership]
}
# Resource to avoid error "AccessControlListNotSupported: The bucket does not allow ACLs"
resource "aws_s3_bucket_ownership_controls" "dev_bucket_acl_ownership" {
  bucket = aws_s3_bucket.dev_bucket.id
  rule {
    object_ownership = "ObjectWriter"
  }
}
