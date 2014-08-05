class HomesController < ApplicationController
	before_filter :check_loged_in_user
	def show
		
	end

	private
	def check_loged_in_user
		if user_signed_in?
			redirect_to products_path
		end
	end
end