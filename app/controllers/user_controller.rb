class UserController < ApplicationController
  
  def purchases
  	response_hash = base_response
  	errors, purchase_data = UserPurchase.new(params[:email]).data
  	if !errors.blank?
  		response_hash[:errors] << errors
  	else
  		response_hash[:data] = purchase_data
  	end
  	render json: response_hash
  end

  private

  def base_response
  	{message: 'Success', data: [], status: 200, errors: []}
  end
end
