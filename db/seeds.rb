
#Subject Table
Subject.destroy_all
EducationLevel.destroy_all
Question.destroy_all
Answer.destroy_all
User.destroy_all



[
  { subject_name: "English"},
  { subject_name: "Math"},
  { subject_name: "Science"},
].each do |subject|
  Subject.create( subject)
end


[
  { edu_level: "Primary 4"},
  { edu_level: "Primary 5"},
  { edu_level: "Primary 6"},
].each do |education_level|
  EducationLevel.create(education_level)
end


[
  { title: "How to solve this question?",
    questions_content: "Cliche dreamcatcher ugh, semiotics pop-up PBR&B viral. Mlkshk cornhole messenger bag, chicharrones keffiyeh quinoa whatever disrupt street art. Literally brooklyn mixtape intelligentsia XOXO chartreuse.",
    user_id: 1,
    num_of_views: 5,
    level_id: 1,
    subject_id: 2
  },


  { title: "How to find the ratio?",
    questions_content: "Pug crucifix cornhole offal. Godard everyday carry affogato, shoreditch scenester plaid selfies. Intelligentsia cronut ramps bitters, disrupt tacos mustache leggings franzen thundercats everyday carry twee post-ironic.",
    user_id: 1,
    num_of_views:10,
    level_id: 2,
    subject_id: 3
    }

].each do |question|
  Question.create(question)
end


[
  { answers_content: "Butcher shabby chic meggings jean shorts yuccie humblebrag. Tattooed church-key normcore vice man braid, bitters aesthetic. ",
    user_id: 2,
    question_id: 1,
    num_of_votes: 10 },


  { answers_content: "Pug crucifix cornhole offal. Godard everyday carry affogato, shoreditch scenester plaid selfies. ",
    user_id: 2,
    question_id: 1,
    num_of_votes: 100 }

].each do |answer|
  Answer.create(answer)
end


[
  { first_name: "Diana",
    last_name: "Lim",
    user_name: "Diana",
    email: "diana@ymail.com",
    password: "123!!!12",
    password_confirmation: "123!!!12" },

  { first_name: "Stella",
    last_name: "Fong",
    user_name: "Stell",
    email: "stella@ymail.com",
    password: "123!!!12",
    password_confirmation: "123!!!12" }

].each do |user|
  User.create(user)
end
