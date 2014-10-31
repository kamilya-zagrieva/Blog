class User <ActiveRecord::Base
	has_many:Post
	validates :login, uniqueness: true
end