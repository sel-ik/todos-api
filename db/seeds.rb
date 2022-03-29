# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(name: 'foobar', email: 'foo@bar.com', password: 'foobar')

50.times do
  todo = Todo.create(title: Faker::Lorem.word, created_by: User.first.id)
  2.times do
    todo.items.create(name: Faker::Lorem.word, done: false)
  end
end
