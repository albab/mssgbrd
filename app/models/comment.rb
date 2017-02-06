class Comment < ApplicationRecord
	belongs_to :user
	belongs_to :post
	before_save :generate_color
	def generate_color
		self.color = "#" + SecureRandom.hex(3)
	end
end