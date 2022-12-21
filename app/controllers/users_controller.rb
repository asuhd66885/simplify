class UsersController < ApplicationController
  def edit
  end
  def update
    if current_user.update(user_params)
      redirect_to root_path
    else
      render :edit
    end
  end
  def new
  end
  def index
  end
  def show
    @stuffs = Stuff.where(user_id: current_user.id)
    @stuffs = Stuff.all.order(created_at: :desc)
  end
  def destroy
    stuff = Stuff.find(params[:id])
     stuff.destroy
   end
  private
  def user_params
    params.require(:user).permit(:name, :email)
  end
end
