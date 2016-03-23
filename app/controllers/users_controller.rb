class UsersController < ApplicationController
  before_action :authenticate_user!
  # before_action :current_user, only: [:create, :destroy]

def new
  @user = User.new
end

def create

end

def show
  @user = User.find(params[:id])
  @questions = Question.where(user_id: current_user.id)

  # this is to be able to allow the user to see or show her own created questions
end

def edit
  @user = User.find(params[:id])
end

def update
  @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      # Handle a successful update.
      sign_in(@user, :bypass => true)
      redirect_to user_path
    else
      render 'edit'
    end
  end

def destroy
  @question = User.find(params[:id])
  @question.destroy
  redirect_to users_path
end

private

def user_params
  params.require(:user).permit(:first_name, :last_name, :user_name, :email, :password, :password_confirmation)
end


end
