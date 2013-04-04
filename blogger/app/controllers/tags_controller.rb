class TagsController < ApplicationController
  before_filter :require_login, only: [:destroy]
  # REV Looks good ^
  def index
    @tags = Tag.all
  end

  def show
    @tag = Tag.find(params[:id])
  end
end
