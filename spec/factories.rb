FactoryGirl.define do

  factory(:user) do
    name("testname")
    sequence(:email) { |n| "test#{n}@test.com" }
    password("88888888")
    password_confirmation("88888888")
  end

  factory(:post) do
    name('Salt')
    content('If salt disappears, so will we.')
    user
  end

  factory(:comment) do
    content('Doomed.')
    question
    user
  end

end
