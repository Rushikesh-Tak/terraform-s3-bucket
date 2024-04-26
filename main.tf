resource "aws_s3_bucket" "terraform-bucket" {
    bucket = "My-terraform-tfstate-file-bucket-1"
    tags = {
        Name = "first-bucket"
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