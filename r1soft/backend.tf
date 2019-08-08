terraform {
    backend "s3" {
        region = "us-west-1"
        bucket = "r1soft-terraform-nurjan"
        key = "r1soft/r1soft.state"
    }
}