FactoryGirl.define do
  factory(:user) do
    username('bob')
    email('bob@gmail.com')
    password('password')
  end

  # factory(:question) do
  #   content('why is the sky blue?')
  # end
  #
  # factory(:response) do
  #   content('people are dumb')
  # end
end
