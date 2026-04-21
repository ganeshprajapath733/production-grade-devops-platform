output "vpc_id" {
  value = aws_vpc.main_vpc.id
}

output "subnet_id" {
  value = aws_subnet.public_subnet.id
}

output "security_group_id" {
  value = aws_security_group.ec2_sg.id
}

output "ec2_public_ip" {
  value = aws_instance.app_server.public_ip
}

output "ecr_repo_url" {
  value = aws_ecr_repository.app_repo.repository_url
}

output "cloudwatch_alarm_name" {
  value = aws_cloudwatch_metric_alarm.high_cpu_alarm.alarm_name
}