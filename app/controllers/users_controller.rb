class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
    flash[:notice] = "Successful account creation!"
    session[:user_id] = @user.id
      redirect_to  "/"
    else
      flash[:alert] = "Account creation failed!"
      render '/signup'
    end
  end

  # def edit
  #   @user = User.find(params[:id])
  # end

  # def update
  #   @user= User.find(params[:id])
  #   if @user.update(user_params)
  #     flash[:notice] = "User successfully updated!"
  #     redirect_to users_path
  #   else
  #     render :edit
  #   end
  # end

  def destroy
    @user = User.find(params[:id])
    if @user.destroy
      flash[:notice] = "User successfully removed!"
      redirect_to users_path
    end
  end

private
  def user_params
    # Use strict parameters, replace placeholder info below with your class' actual attributes
    params.require(:user).permit(:username, :email, :password, :password_confirmation)
  end
end
