require 'rails_helper'

RSpec.describe UserPurchase do
	describe "User purchase data" do
		it "should return the purchase details" do
			user= FactoryBot.create(:user)
			product= FactoryBot.create(:product)
			transaction = FactoryBot.create(:product_transaction, user_id: user.id, product_id: product.id)
			products = UserPurchase.new(user).data
			expect(products.first[:name]).to eq(product.name)
		end
	end
end