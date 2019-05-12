class User < ApplicationRecord

	has_many :products
	has_many :product_transactions

end
