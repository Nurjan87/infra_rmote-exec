resource "aws_security_group" "r1soft" {
  name        = "r1soft"
  description = "Allow inbound traffic"
  vpc_id      = "${var.vpc}"

  ingress {
    # TLS (change to whatever ports you need)
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    # Please restrict your ingress to only necessary IPs and ports.
    # Opening to 0.0.0.0/0 can lead to security vulnerabilities.
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    # TLS (change to whatever ports you need)
    from_port   = 8443
    to_port     = 8443
    protocol    = "tcp"
    # Please restrict your ingress to only necessary IPs and ports.
    # Opening to 0.0.0.0/0 can lead to security vulnerabilities.
    cidr_blocks = ["0.0.0.0/0"]
  }
  egress{
      from_port  = 0
      to_port    = 0
      protocol   = "-1"
      cidr_blocks = ["0.0.0.0/0"]
  }
   tags = {
        Name =  "${var.Name}.public"
        Dept = "${var.Env}"
        Group = "${var.Created_by}"
        Created_by = "${var.Dept}"
    }
}