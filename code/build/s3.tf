provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    yor_name             = "dev_s3"
    yor_trace            = "f0997581-7837-4f89-ae16-7a25b9fae4c3"
    git_commit           = "1bd539f9f4aa6076ea1cf1e77feb53b1949dcf06"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-01-22 15:24:26"
    git_last_modified_by = "31545518+ssanchez80@users.noreply.github.com"
    git_modifiers        = "31545518+ssanchez80"
    git_org              = "ssanchez80"
    git_repo             = "prisma-cloud-devsecops-workshop"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
