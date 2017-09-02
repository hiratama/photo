class UsersController < ApplicationController

def new
  @user = User.new
end

def show
  @user = User.where(id: params[:id])
  redirect_to root_path if @user.empty?

end

def create
  @user = User.new(user_params)
  if @user.save
    log_in @user
    redirect_to ideas_path
  else
    render 'new'
  end
end


private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                      :password_confirmation)
  end

end
