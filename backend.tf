#create s3 bucket

resource "aws_s3_bucket" "my_bucket" {
    bucket = "terraformstatedemo8907"
    versioning {
      enabled = true
  }
   server_side_encryption_configuration {
    rule {
    apply_server_side_encryption_by_default {
    sse_algorithm = "AES256"

}
} 
}
}



#create dynamoDB
resource "aws_dynamodb_table" "statelock" {
   name = "state-lock"
   billing_mode = "PAY_PER_REQUEST"
   hash_key         = "TestTableHashKey"


  attribute {
    name = "TestTableHashKey"
    type = "S"
}
}
