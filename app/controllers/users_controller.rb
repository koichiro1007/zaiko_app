class UsersController < ApplicationController
  before_action :move_to_root

  def show
    @user = User.find(params[:id])
    @stocks = @user.stocks
  end


  private
  def move_to_root
    redirect_to root_path unless user_signed_in?
  end

end
