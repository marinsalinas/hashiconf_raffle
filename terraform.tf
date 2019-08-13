locals {
  participants = [
      "Gonzalo Lopez",
      "Panchito",
      "Oscar",
      "Isaac Ma",
      "Pedro",
      "Monse",
  ]
  certified = [
      "Gonzalo Lopez",
      "Panchito",
      "Oscar",
  ]
}

resource "random_integer" "rand" {
  min     = 0
  max     = "${length(concat(local.participants,local.certified))}"
}
output "winner" {
  value = "${element(concat(local.participants,local.certified),random_integer.rand.result)}"
}

output "all-Participants" {
  value = "${concat(local.participants,local.certified)}"
}

output "max" {
  value = "${length(concat(local.participants,local.certified))}"
}
