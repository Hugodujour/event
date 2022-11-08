class UsersController < ApplicationController

	def index
		@users = User.all
	end

	def show
	end

	def new
		@user = User.new
	end

	def edit
	end

	def create
		@user = User.new(user_params)

		if @user.save
			redirect_to @user, notice: 'User was successfully gneugneugneu'
		else
			dlash[:danger] = 'Something went wrong'
			render :new
		end
	end

	private

	def set_user
		@user = User.find(params[:id])
	end

	def user_params
		params.require(:user).permit(:email, :password, :password_confirmation, :first_name, :last_name, :description)
	end

end










end
