provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "dev_s3" {
  bucket_prefix = "dev-"

  tags = {
    Environment          = "Dev"
    git_commit           = "818ba7f7cccfbd06d2328fb4dcd93227e68c9ce8"
    git_file             = "code/build/s3.tf"
    git_last_modified_at = "2025-01-22 15:39:09"
    git_last_modified_by = "31545518+ssanchez80@users.noreply.github.com"
    git_modifiers        = "31545518+ssanchez80"
    git_org              = "ssanchez80"
    git_repo             = "prisma-cloud-devsecops-workshop"
    yor_name             = "dev_s3"
    yor_trace            = "67bb9e26-b02a-477b-8990-8c4649f6968a"
  }
}

resource "aws_s3_bucket_ownership_controls" "dev_s3" {
  bucket = aws_s3_bucket.dev_s3.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}
