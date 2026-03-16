output "public-ip" {
    value = [for instance in aws_instance.ansible-ec2: {
        ip: instance.public_ip
        type: instance.instance_type
    } ]
}
