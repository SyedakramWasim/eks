terraform {
  backend "s3" {
    bucket         = "eks-s3-bucket1"     # 🔁 Replace with your bucket name
    key            = "eks/terraform.tfstate"          # Path inside the bucket
    region         = "us-east-1"                      # AWS region
    encrypt        = true                             # Encrypt state file with SSE
    dynamodb_table = "terraform-locks"                # (Optional) For state locking
  }
}
