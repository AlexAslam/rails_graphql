class User < ActiveRecord::Base
	has_many :comments, :dependent => :restrict_with_error
	has_many :posts, :dependent => :restrict_with_error
end
