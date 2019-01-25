data "aws_ecr_repository" "ecr_repository" {
  name = "mywebsite"
}


resource "aws_ecs_task_definition" "mywebsite" {
  family = "mywebsite"

  container_definitions = <<DEFINITION
[
  {
    "image": "${data.aws_ecr_repository.ecr_repository.repository_url}:1.0",
    "cpu": 128,
    "memory": 128,
    "memoryReservation": 64,
    "name": "website",
    "portMappings": [
        {
            "containerPort": 80,
            "hostPort": 80
        }
    ]
  }
]
DEFINITION
}
