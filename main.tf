terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
  }
}

resource "random_pet" "noop_test" {
  length = 2
}

output "pet_name" {
  value = random_pet.noop_test.id
}
