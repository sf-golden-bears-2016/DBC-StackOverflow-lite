User.create(email: 'bobbysags@gmail.com', name: 'Bob Saget', password: '123')

# Create 20 Users using Faker data
20.times do
  User.create(email: Faker::Internet.email, name: Faker::Name.name, password: Faker::Internet.password)
end


# Create 100 fake responses

# 100.times do
#   Response.create(text: Faker::Hipster.paragraph, )
# end
