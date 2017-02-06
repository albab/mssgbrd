# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

@user = User.create(email: "alex@alexbabi.ch", password: "qwerty1234", password_confirmation: "qwerty1234", first_name: "Alex", last_name: "Babich")
@user.save!
@post1 = Post.create(title: "What exactly is airline food?", body: "Seriously, what is this stuff? yada-yada-yada...", user_id: @user.id)
@post2 = Post.create(title: "What's on your bucket list?", body: "Eat Maine lobsters, visit Tokyo, yada-yada-yada...", user_id: @user.id)
@post3 = Post.create(title: "Things that rhyme with lump", body: "chump, bump, thwump", user_id: @user.id)

@post1.save!
@post2.save!
@post3.save!