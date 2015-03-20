class Post < ActiveRecord::Base
  validates :user_id, :presence => true
  validates :name, :presence => true
  validates :content, :presence => true
end
