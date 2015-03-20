class Post < ActiveRecord::Base
  validates :user_id, :presence => true
  validates :name, :presnece => true
end
