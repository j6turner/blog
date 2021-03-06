require 'rails_helper'

describe Post do
  it { should validate_presence_of :user_id }
  it { should validate_presence_of :name }
  it { should validate_presence_of :content }
end
