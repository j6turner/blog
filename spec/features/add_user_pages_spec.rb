require 'rails_helper'

describe "add user" do

  it "adds a new user" do
    visit users_path
    click_on 'Create User'
    fill_in 'Name', :with => 'Nina Simone'
    click_on 'Create User'
    expect(page).to have_content 'The Blog'
  end

  it "gives error when no name is entered" do
    visit new_user_path
    fill_in 'Name', :with => nil
    click_on 'Create User'
    save_and_open_page
    expect(page).to have_content 'Become a User'
  end

end
