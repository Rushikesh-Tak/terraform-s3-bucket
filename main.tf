resource "aws_s3_bucket" "terraform-bucket" {
    bucket = "my-terraform-tfstate-file-bucket-1"
    tags = {
        Name = "my-terraform-tfstate-file-bucket-1"
        Env = "Dev"
        Owner = "Rushikesh"
    }
  
}

resource "aws_s3_bucket_versioning" "my-bucket-versioning" {
  bucket = aws_s3_bucket.terraform-bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}