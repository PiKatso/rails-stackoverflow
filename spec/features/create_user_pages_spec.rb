require 'rails_helper'

describe "create user process/path" do
  it "it creates user" do
    visit root_path
    click_link 'Sign up'
    fill_in 'user_username', :with => 'cathy'
    fill_in 'user_email', :with => 'cathy@gmail.com'
    fill_in 'user_password', :with => 'password'
    fill_in 'user_password_confirmation', :with => 'password'
    click_on 'Sign Up'
    expect(page).to have_content 'cathy'
  end
end
