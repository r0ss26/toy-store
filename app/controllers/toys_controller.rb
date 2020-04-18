class ToysController < ApplicationController
  def index
    @toys = Toy.all
  end

  def show
    @toy = Toy.find_by_id(params[:id])
  end

  def delete
    Toy.find_by_name(params[:toy]).destroy
    redirect_to show_toys_path
  end

  def update
    @toy = Toy.find_by_name(params[:toy]).destroy

  end
end