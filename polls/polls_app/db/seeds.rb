# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Poll.destroy_all
Question.destroy_all
AnswerChoice.destroy_all
Response.destroy_all
ApplicationRecord.connection.reset_pk_sequence!('users')
ApplicationRecord.connection.reset_pk_sequence!('polls')
ApplicationRecord.connection.reset_pk_sequence!('questions')
ApplicationRecord.connection.reset_pk_sequence!('answer_choices')
ApplicationRecord.connection.reset_pk_sequence!('responses')

User.create!(username: 'brad')
User.create!(username: 'parth')
User.create!(username: 'snakes')
User.create!(username: 'gamestop')
User.create!(username: 'amc')
User.create!(username: 'david')

Poll.create!(title:"Stocks", author_id:2)
Poll.create!(title:"AA interview questions", author_id:6)
Poll.create!(title:"College Football", author_id:1)
Poll.create!(title:"Empty", author_id:3)


Question.create!(question:"What stocks should I buy?", poll_id:1)
Question.create!(question:"Who won the CFP this year?", poll_id:3)
Question.create!(question:"Why are you so bad at coding?", poll_id:2)
Question.create!(question:"Why is GME stock so high?", poll_id:1)
Question.create!(question:"Hisssssssss?", poll_id:2)
Question.create!(question:"What????", poll_id:2)
Question.create!(question:"Who???", poll_id:2)


AnswerChoice.create!(answer: "GME", question_id: 1)
AnswerChoice.create!(answer: "AMC", question_id: 1)
AnswerChoice.create!(answer: "Don't buy", question_id: 1)
AnswerChoice.create!(answer: "Alabama", question_id: 2)
AnswerChoice.create!(answer: "Ohio State", question_id: 2)
AnswerChoice.create!(answer: "Clemson", question_id: 2)
AnswerChoice.create!(answer: "Lack of sleep", question_id: 3)
AnswerChoice.create!(answer: "Ignorance", question_id: 3)
AnswerChoice.create!(answer: "Other", question_id: 3)
AnswerChoice.create!(answer: "Reddit", question_id: 4)
AnswerChoice.create!(answer: "Corruption", question_id: 4)
AnswerChoice.create!(answer: "All of the above", question_id: 4)
AnswerChoice.create!(answer: "Hissssssss", question_id: 5)

Response.create!(responder_id:2, answer_id:3)
Response.create!(responder_id:1, answer_id:4)
Response.create!(responder_id:6, answer_id:8)
Response.create!(responder_id:3, answer_id:13)
Response.create!(responder_id:2, answer_id:12)
