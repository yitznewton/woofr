5.times do
  user = User.create(
    username: Faker::Internet.user_name
  )

  5.times do
    Bark.create(
      user: user,
      body: Faker::Hacker.say_something_smart,
      barked_at: Faker::Time.between(2.weeks.ago, Time.now)
    )
  end
end
