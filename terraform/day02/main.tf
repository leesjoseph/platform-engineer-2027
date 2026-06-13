terraform {
  required_providers {
    random = {
      source = "hashicorp/random"
    }
  }
}

provider "random" {}

resource "random_pet" "example" {
  length = 2
}

resource "random_pet" "pet1" {
  length = 2
}

resource "random_pet" "pet2" {
  length = 2
}

resource "random_pet" "pet3" {
  length = 2
}

output "pet_name" {
  value = random_pet.example.id
}

output "pet_name1" {
  value = random_pet.pet1.id
}

output "pet_name2" {
  value = random_pet.pet2.id
}

output "pet_name3" {
  value = random_pet.pet3.id
}