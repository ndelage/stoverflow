
NUMBER_USERS = 1000
NUMBER_QUESTIONS = 30
NUMBER_ANSWERS = NUMBER_QUESTIONS * 3

NUMBER_USERS.times do
  User.create(:handle => Faker::Internet.user_name,
              :email => Faker::Internet.safe_email,
              :password => '123456')
end
users = User.all

NUMBER_QUESTIONS.times do
  Question.create(:user_id => users.sample.id,
                  :title => Faker::Company.catch_phrase,
                  :content => Faker::Company.bs)
end
questions = Question.all

NUMBER_ANSWERS.times do
  Answer.create(:content => Faker::Company.bs,
                :question_id => questions.sample.id)
end
answers = Answer.all

# Vote for questions
users.each do |user|
  questions.each do |question|
    Vote.create(:user_id => user.id,
                :votable_id => question.id,
                # :votable_type => ,
                :value => [-1,0,1,1,1].sample)
  end
end

# Vote for answers
users.each do |user|
  answers.each do |answer|
    Vote.create(:user_id => user.id,
                :votable_id => answer.id,
                # :votable_type => ,
                :value => [-1,0,1,1,1].sample)
  end
end