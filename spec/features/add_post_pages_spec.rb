require 'rails_helper'

describe 'add post' do

  it 'adds post' do
    user = FactoryGirl.create(:user)
    visit log_in_path
    fill_in 'Email', :with => user.email
    fill_in 'Password', :with => user.password
    click_on "Log In"
    visit user_path
    click_on "Post Your Thoughts"
    fill_in 'Name', :with => 'Salt'
    fill_in 'Content', :with => 'If salt disappears, so will we.'
    click_on 'Post'
    expect(page).to have_content 'Published.'
  end

  it 'alerts user if validation fails' do
    user = FactoryGirl.create(:user)
    visit user_path
    click_on "Post Your Thoughts"
    visit new_post_path
    fill_in 'Name', :with => 'Salt'
    click_on 'Post'
    expect(page).to have_content 'Post not submitted. Try again.'
  end

end
