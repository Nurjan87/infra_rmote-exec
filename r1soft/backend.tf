terraform {
    backend "s3" {
        region = "us-west-1"
        bucket = "remote-exec-nurjan"
        key = "r1soft/r1soft.state"
    }
}