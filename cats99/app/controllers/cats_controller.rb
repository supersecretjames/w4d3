class CatsController < ApplicationController

  def new
    @cat = Cat.new
  end

  def index
    @cats = Cat.all
  end

  def show
    @cat = Cat.includes(:color, :location).find(params[:id])
  end

  def create
    @cat = Cat.create!(params[:cat])
    #@cat.color_id = Color.find_or_create_by_name(params[:cat][:color_id]).id
    redirect_to cat_path(@cat)
  end

end
