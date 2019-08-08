terraform {
    backend "s3" {
        region = "us-west-1"
        bucket = "remote-exec-nurjan"
        key = "remote.state"
    }
}