User.create(email: 'bobbysags@gmail.com', name: 'Bob Saget', password: '123')
Question.create(title: "AJAX?!? Like, what!?", text: "Woah this is a really good question!!", user_id: 1)
Answer.create(question_id: 1, user_id: 1, text: "This is an Answer to a Question", favorite: 1)
Response.create(text: "This is an Response to a Question", responseable_id: 1, responseable_type: "question")
Response.create(text: "This is an Response to an Answer", responseable_id: 1, responseable_type: "answer")
Vote.create(user_id: 1, voteable_id: 1, voteable_type: "question")
Vote.create(user_id: 1, voteable_id: 1, voteable_type: "answer")
Vote.create(user_id: 1, voteable_id: 1, voteable_type: "response")
# Create 20 Users using Faker data
# 20.times do
#   User.create(email: Faker::Internet.email, name: Faker::Name.name, password: Faker::Internet.password)
# end


# # Create 100 fake responses

# 100.times do
#   Response.create(text: Faker::Hipster.paragraph, responseable_id: rand(1..100), responseable_type: ["answer", "question"].sample)
# end

# 100.times do
#   Answer.create(question_id: rand(1..100), user_id: rand(1..21), text: Faker::Hipster.paragraph, favorite: 0)
# end

# 100.times do
#   Question.create(title: Faker::Name.title, text: Faker::Hipster.paragraph, user_id: rand(1..21))
# end

# 100.times do
#   Vote.create(user_id: rand(1..21), voteable_id: rand(1..100), voteable_type: ["answer", "question", "response"].sample)
# end


