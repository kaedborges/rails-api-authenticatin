# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

Tudo.destroy_all
User.destroy_all

user1 = User.create!(email:"edvander@live.com", password:"123456", password_confirmation:"123456")

statuses = %w[started backlog done]

20.times do |index|
    Tudo.create(title: Faker::Movie.title,
                status: statuses[1 + rand(statuses.count)],
                is_completed: [true, false].sample
              )
end

puts "Created User: #{user1.email}"
puts "Created #{Tudo.count} Todo items"