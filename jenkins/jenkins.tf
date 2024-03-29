resource "aws_instance" "jenkins"{
    ami = "${var.ami}"
    instance_type = "${var.instance_type}"
    key_name = "${aws_key_pair.developer.id}"
    associate_public_ip_address = true
    security_groups = ["${aws_security_group.jenkins.name}"]

    provisioner "remote-exec" {
        connection {
            host = "${self.public_ip}"
            type = "ssh"
            user = "${var.user}"
            private_key = "${file("~/.ssh/id_rsa")}"
        }
         inline = [
      "sudo yum update -y",
      "sudo yum install wget unzip",
      "wget https://releases.hashicorp.com/terraform/0.11.13/terraform_0.11.13_linux_amd64.zip",
      "sudo unzip ./terraform_0.11.13_linux_amd64.zip -d /usr/local/bin/",
    ]

    }
}