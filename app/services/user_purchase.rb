class UserPurchase

	def initialize(user_email)
		@user_email = user_email
	end

	def data
		return [I18n.t("user.email_blank"), ''] if @user_email.blank?
		@user = User.find_by(email: @user_email)
		return [I18n.t("user.not_found"), ''] if !@user
		products = purchased_products
		data = products.collect{|product| product_data(product) }
		return ['', data]
	end

	def product_data(product)
		{name: product.name, description: product.description, price: product.price}
	end

	def purchased_products
		Product.purchased(@user.id)
	end

	def user
		
		
		[true, @user]
	end

end