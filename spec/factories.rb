FactoryGirl.define do
  factory(:user) do
    username('bob')
    email('bob@gmail.com')
    password('password')
  end
end
