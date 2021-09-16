class StocksController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @stock = Stock.includes(:user).order("product_name")
  end

  def new
    @stock = Stock.new
  end

  def create
    Stock.create(stock_params)
  end

  def show
    @stock = Stock.find(params[:id])
  end

  def edit
    @stock = Stock.find(params[:id])
  end

  def update
    @stock = Stock.find(params[:id]) #updateアクション後個別ページに推移させるための定義
    stock = Stock.find(params[:id])
    stock.update(stock_params)
  end

  def destroy
    stock = Stock.find(params[:id])
    stock.destroy
  end



  private
  def stock_params
    params.require(:stock).permit(:product_name, :number, :expiration_year, :expiration_month, :lot, :status, :opening_year, :opening_month, :notes, :unit).merge(user_id: current_user.id)
  end

  def move_to_index
    redirect_to action: :index unless user_signed_in?
  end

end
