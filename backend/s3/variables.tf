variable "bucket_name" {
  description = "Name of the bucket"
  type        = string
}

variable "sse_algorithm" {
  description = "Algorithm for sse"
  type        = string
  //Use 256-bit Advanced Encryption Standard
  default = "AES256"
}

variable "dynamodb_name" {
  description = "Dynamo db name"
  type        = string
}

variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}
