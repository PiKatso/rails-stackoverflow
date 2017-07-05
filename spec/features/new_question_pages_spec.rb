require 'rails_helper'

describe "add a question" do

  it "follows path of adding a question" do
    # user = FactoryGirl.build(:user)
    visit root_path
    click_on 'New Question'
    fill_in 'question_content', :with => 'do pigs have wings?'
    click_on 'Create Question'
    expect(page).to have_content 'do pigs have wings?'
  end
end
