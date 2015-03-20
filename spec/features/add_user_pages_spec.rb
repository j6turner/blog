require 'rails_helper'

describe "add user" do

  it "adds a new user" do
    visit users_path
    click_on 'Add User'
    save_and_open_page
    fill_in 'Name', :with => 'Nina Simone'
    click_on 'Create User'
    expect(page).to have_content 'Users'
  end

  it "throws error when name is absent" do
    visit new_user_path
    click_on 'Create User'
    expect(page).to have_content 'errors'
  end

end
