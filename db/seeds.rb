require "faker"

# User.create(
#   first_name: "jim",
#   last_name: "neville",
#   email: "jim@test.com",
#   password: "password",
#   password_confirmation: "password",
#   admin: true,
# )

# User.create(
#   first_name: "gwen",
#   last_name: "rogers",
#   email: "gwen@test.com",
#   password: "password",
#   password_confirmation: "password",
# )

11.times do
  first_name = Faker::Name.first_name
  users = User.new(
    first_name: first_name,
    last_name: Faker::Name.last_name,
    email: first_name + "@test.com",
    password: "password",
    password_confirmation: "password",
  )
  users.save
end
