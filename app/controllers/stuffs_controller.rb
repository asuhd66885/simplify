class StuffsController < ApplicationController
  def index
    @stuffs = Stuff.all.order(created_at: :desc)

  end
  def create
    @stuff = Stuff.new(stuff_params)
    if @stuff.save
      redirect_to user_path(current_user) 
    else
      render :new
    end
  end
  def show
    @stuffs = Stuff.where(user_id: current_user.id)
  end
  
  def new
    @stuff = Stuff.new
  end
  def destroy
   @stuff = Stuff.find(params[:id])
    @stuff.destroy
    redirect_to root_path
  end
  def edit
    @stuff = Stuff.find(params[:id])
  end
  def update
     @stuff = Stuff.find(params[:id])
     @stuff.update(stuff_params)
     redirect_to user_path(current_user)
  end
  private

  def stuff_params
    params.require(:stuff).permit(:name,:info,:category_id,:image).merge(user_id: current_user.id)
  end
end
