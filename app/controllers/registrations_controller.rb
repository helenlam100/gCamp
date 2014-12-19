class RegistrationsController < ApplicationController

  def new
    @user = User.new
  end

  def create
    @user = User.new(params.require(:user).permit(:name, :last_name, :email, :password, :password_confirmation))
    if @user.save
      session[:user_id] = @user.id
      redirect_to root_path
    else
      render :new
    end
  end

end


# create_table "users", force: true do |t|
#   t.string   "name"
#   t.string   "email"
#   t.datetime "created_at"
#   t.datetime "updated_at"
#   t.string   "last_name"
#   t.string   "password_digest"
# end
