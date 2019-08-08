resource "aws_key_pair" "developer" {
    key_name = "developer"
    public_key = "${file("~/.ssh/id_rsa.pub")}"
}