require 'rails_helper'

describe "add user" do

  it "adds a new user" do
    visit root_path
    click_on 'Become a Blogger'
    fill_in 'Name', :with => 'testname'
    fill_in 'Email', :with => 'test@test.com'
    fill_in 'Password', :with => 'testword'
    fill_in 'Password confirmation', :with => 'testword'
    click_on 'Sign Up'
    expect(page).to have_content 'Your user name has been established.'
  end

  it "gives error when no name is entered" do
    visit new_user_path
    fill_in 'Name', :with => ''
    click_on 'Sign Up'
    save_and_open_page
    expect(page).to have_content '!ERROR! Please establish a user name.'
  end

end
