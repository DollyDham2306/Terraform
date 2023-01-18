locals {
  bucket_name1 = "mytest-cnl-12345"
  bucket_name2 = "mytest-cnl-123452023"
  env          = "dev"
}

resource "aws_s3_bucket" "mytest_bucket1" {
  bucket = local.bucket_name1
  acl    = "public-read-write"

  tags = {
    Name        = local.bucket_name1
    Environment = local.env
  }


}
resource "aws_s3_bucket" "mytest_bucket2" {
  bucket = local.bucket_name2

  acl = "public-read-write"

  tags = {
    Name        = local.bucket_name2
    Environment = local.env
  }
}





