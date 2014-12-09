class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)

    respond_to do |format|
      if @user.save
        format.html { redirect_to users_path, notice: 'User was successfully created.' }
        format.json { render :index, status: :created, notice: 'User was successfully created.' }
      else
        format.html { render :new }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

def show

end

def destroy
    @user = User.find(params[:id])
    @user.delete
    flash[:notice] = "User was successfully deleted."
    redirect_to users_path
  end

private

def user_params
  params.require(:user).permit(
  :name,
  :email,
  :last_name
  )
end

end
