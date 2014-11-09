class User <ActiveRecord::Base
	has_many :posts
	validates :login, uniqueness: true
end