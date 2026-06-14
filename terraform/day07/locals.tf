locals {
    services = [
        "frontend",
        "backend",
        "database"
    ]

    instances = {
        dev = "t2.micro",
        prod = "t3.medium"
    }
}