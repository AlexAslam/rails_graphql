class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments, :dependent => :restrict_with_error
end
