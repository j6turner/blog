class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  validates :name, :presence => true
  validates :content, :presence => true
  validates :user_id, :presence => true
end
