terraform {
    backend "s3" {
        region = "us-west-1"
        backet = "remote-exec-nurjan"
        key = "remote.state"
    }
}