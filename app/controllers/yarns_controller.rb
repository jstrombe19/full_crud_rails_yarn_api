class YarnsController < ApplicationController

  def index
    @yarns = Yarn.all 
    render json: @yarns 
  end

  def show
    @yarn = Yarn.find(params[:id])
    render json: @yarn 
  end

  def create
    @yarn = Yarn.create(
      color: params[:color],
      weight: params[:weight],
      fiber: params[:fiber],
      price: params[:price]
    )
    render json: @yarn
  end

  def update
    @yarn = Yarn.find(params[:id])
    @yarn.update(
      color: params[:color],
      weight: params[:weight],
      fiber: params[:fiber],
      price: params[:price]
    )
    render json: @yarn
  end

  def destroy
    @yarns = Yarn.all
    @yarn = Yarn.find(params[:id])
    @yarn.destroy 
    render json: @yarns
  end

end
