class CostsController < ApplicationController
  def index
    @costs = Cost.all
  end

  def new
    @cost = Cost.new
  end

  def create
    Cost.create(cost_params)
    redirect_to root_path
  end

  private

  def cost_params
    params.require(:cost).permit(:item, :description, :price)
  end

end
