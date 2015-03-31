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
    expect(page).to have_content '!ERROR! The form is incomplete.'
  end

  it "gives error when no email is entered" do
    visit new_user_path
    fill_in 'Email', :with => ''
    click_on 'Sign Up'
    expect(page).to have_content '!ERROR! The form is incomplete.'
  end

  it "gives error when no password is entered" do
    visit new_user_path
    fill_in 'Password', :with => ''
    click_on 'Sign Up'
    expect(page).to have_content '!ERROR! The form is incomplete.'
  end

  it "gives error when password is not confirmed" do
    visit new_user_path
    fill_in 'Password confirmation', :with => ''
    click_on 'Sign Up'
    expect(page).to have_content '!ERROR! The form is incomplete.'
  end

end
