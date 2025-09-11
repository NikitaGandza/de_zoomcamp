provider "aws" {
  region = var.region
}


resource "aws_s3_bucket" "data_lake_bucket" {
  bucket = "nikita-de-zoomcamp-data-lake"
}

resource "aws_s3_bucket_versioning" "nikita-de-zoomcamp-data-lake-versioning" {
  bucket = aws_s3_bucket.data_lake_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}