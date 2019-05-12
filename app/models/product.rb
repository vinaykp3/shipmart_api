class Product < ApplicationRecord
	belongs_to :user
	has_many :product_transactions

	def self.purchased(user_id)
		self.joins(:product_transactions).where("product_transactions.user_id = ?", user_id)
	end
end
