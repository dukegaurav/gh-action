variable "bucket_prefix" {
  type        = string
  description = "Prefix for the bucket."
  default     = "sdfsdf"
}

variable "region" {
  type        = string
  description = "region where the bucket will be created."
  default     = "asia-south1"
}