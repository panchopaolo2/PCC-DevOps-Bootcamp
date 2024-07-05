
resource "local_file" "pet" {
  filename = "./pets.txt"
  content  = "We love pets!"
}

# resource "random_pet" "my-pet" {
# prefix= "Mrs"
# separator = "."
# length = "3"
# }
output "pet-name" {
value = local_file.pet.id
description = "Record the value of pet ID generated by the random_pet resource"
}