project_name = "platform"
environment = "dev"
instance_count = 2
enabled = true
regions = [
    "ap-northeast-2",
    "us-east-1"
]

tags = {
    Owner = "platform"
    Env = "dev"
}

server = {
  cpu    = 2
  memory = 4
}