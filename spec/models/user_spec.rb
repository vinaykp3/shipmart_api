require 'rails_helper'

RSpec.describe User, type: :model do
  	it { should have_many(:products) }
	it { should have_many(:product_transactions) }

	describe "User purchased products" do
		it "should return products" do
			user= FactoryBot.create(:user)
			product= FactoryBot.create(:product)
			transaction = FactoryBot.create(:product_transaction, user_id: user.id, product_id: product.id)
			products = Product.purchased(user.id)
			expect(products.first.name).to eq(product.name)
			expect(products.first.user.name).to eq(user.name)
		end
	end
end
