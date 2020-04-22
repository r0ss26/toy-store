class ToysController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @toys = Toy.all.order("id ASC")
  end

  def create
    @toy = Toy.create(name: params[:name],
                      description: params[:description],
                      date: Date.today,
                      user_id: params[:user_id],
                      manufacturer_id: params[:manufacturer_id])
    redirect_to show_toys_path
  end

  def edit
    @toy = Toy.find_by_id(params[:id])
  end

  def update
    @toy = Toy.find_by_id(params[:id])
    @toy.name = params[:name]
    @toy.description = params[:description]
    @toy.manufacturer_id = params[:manufacturer_id]
    @toy.save
  end

  def show
    @toy = Toy.find_by_id(params[:id])
  end

  def delete
    Toy.find_by_id(params[:id]).destroy
    redirect_to show_toys_path
  end

  def new
  end
end