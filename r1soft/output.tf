output "link" {
    value =  "${aws_route53_record.jenkins2.name}:8443"
}