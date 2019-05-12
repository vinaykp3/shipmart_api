FactoryBot.define do
	
	factory :user do
		name {"use1"}
		email {"user1@test.com"}
	end

	factory :product do
		name {"Product1"}
		description {"Product description"}
		price {"100"}
		association :user, factory: :user
	end

	factory :product_transaction do
		association :user, factory: :user
		association :product, factory: :product
	end
end