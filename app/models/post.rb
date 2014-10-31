class Post < ActiveRecord::Base
	belongs_to :user
	has_many :comments

	after_create :put_message, if: :one_of_the_first
	validates :title, length: {minimum: 2, maximum: 20}
	private

	def put_message
		puts "Post create"

	end
	
	def one_of_the_first

	end
end