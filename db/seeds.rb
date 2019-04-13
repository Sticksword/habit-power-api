# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

u = User.create({
  first_name: 'Michael',
  last_name: 'Chen',
  date_of_birth: '10-02-1994'.to_date,
  occupation: 'Software Engineer',
  about: 'Hi there!',
  company: 'Square',
  school: 'UVA'
})

UserCredential.create({
  email: 'michael@gmail.com',
  password: 'password',
  user: u
})

u2 = User.create({
  first_name: 'Diana',
  last_name: 'Lee',
  date_of_birth: '15-03-1995'.to_date,
  occupation: 'Journalist',
  about: 'Hello!',
  school: 'USC'
})

UserCredential.create({
  email: 'diana@gmail.com',
  password: 'password',
  user: u2
})

u3 = User.create({
  first_name: 'Alexander',
  last_name: 'Hamilton',
  date_of_birth: '10-02-1754'.to_date,
  occupation: 'Founding Father',
  about: 'Hi there!',
  company: 'United States'
})

UserCredential.create({
  email: 'alexander@gmail.com',
  password: 'password',
  user: u3
})

u4 = User.create({
  first_name: 'Adeel',
  last_name: 'Ahmad',
  date_of_birth: '05-05-1994'.to_date,
  occupation: 'Software Engineer',
  about: 'Nyeh!',
  company: 'Google',
  school: 'UVA'
})

UserCredential.create({
  email: 'adeel@gmail.com',
  password: 'password',
  user: u4
})

o4 = Objective.create({
  title: 'title',
  description: 'description',
  score: 95,
  length: 30,
  user: u4
})

body_json = [
  {
    question: 'What behaviors or habits did you have that positively impacted you?',
    answer: 'I wrote code pretty much everyday, from implementing algorithms to creating side projects. Don’t feel overwhelmed by the new things you could build or the amount of code you have to write. It’s not as foreign as you’d imagine. You can think of it as writing everyday, although I’m no writer.'
  }, {
    question: 'What did you do when you felt unfocused or overwhelmed?',
    answer: "I went to get coffee. The walk to the coffee shop calmed my mind. Stepping away gives me the energy to come up with a new plan of attack.

I often talked out my problems with friends. I'm not afraid to ask for help. I would ask for opinions and bounce ideas around."
  }, {
    question: 'What do you still struggle with?',
    answer: 'Keeping up with all the new technologies!'
  }, {
    question: 'What is something you love to eat?',
    answer: "I love eating chicken katsu. There's this store down Geary called Volcano. I eat there at least once per week."
  }
]

SuccessStory.create({
  body_json: body_json.to_json,
  objective: o4,
  user: u4
})
