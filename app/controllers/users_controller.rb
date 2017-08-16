class UsersController < ApplicationController

	def new
		@user = User.new
	end	

	def create
		if params[:user][:password] != params[:user][:password_confirmation]
			redirect_to controller: 'users', action: 'new'
		else
			@user = User.new(user_params)
			@user.save
			session[:user_id] = @user.id
			redirect_to root_path
		end
	end


	private

	def user_params
		params.require(:user).permit(:name, :password, :password_confirmation)
	end

end
