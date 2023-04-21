# require "faker"

# User.create(
#   first_name: "jim",
#   last_name: "neville",
#   email: "jim@test.com",
#   password: "password",
#   password_confirmation: "password",
#   admin: true,
# )

# 12.times do
#   first_name = Faker::Name.unique.first_name
#   users = User.new(
#     first_name: first_name.downcase,
#     last_name: Faker::Name.last_name.downcase,
#     email: first_name.downcase + "@test.com",
#     password: "password",
#     password_confirmation: "password",
#   )
#   users.save
# end

# 6.times do
#   rig_name = Faker::GreekPhilosophers.unique.name
#   rigs = Rig.create!(
#     name: rig_name,
#   )
# end

# index = 1
# while index <= 6
#   rig_checklist = RigChecklist.new(
#     rig_id: index,
#   )
#   index = index + 1
#   rig_checklist.save
# end

# boolean_index = 1
# while boolean_index <= 6
#   boolean_checklist = BooleanChecklist.new(
#     rig_id: boolean_index,
#   )
#   boolean_index = boolean_index + 1
#   boolean_checklist.save
# end

# item_checklist_index = 1
# while item_checklist_index <= 6
#   item_checklist = ItemChecklist.new(
#     rig_id: item_checklist_index,
#   )
#   item_checklist_index = item_checklist_index + 1
#   item_checklist.save
# end

# Message.create!(
#   date: Time.now,
#   shift: "Second",
#   content: "Clean and well stocked. Weak AC.",
#   user_id: 6,
# )

# Item.create!(
#   name: "Bandage Scissors",
#   minimum: 2,
# )

# Manifest.create!(
#   item_id: 1,
#   rig_checklist_id: 1,
#   actual_count: 0,
# )
