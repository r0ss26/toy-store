class ToysController < ApplicationController
  skip_before_action :verify_authenticity_token

  def index
    @toys = Toy.all.order("id ASC")
  end

  def create
    @toy = Toy.create(name: params[:name],
                      description: params[:description],
                      date: Date.today,
                      user: params[:user])
    redirect_to show_toys_path
  end

  def edit
    @toy = Toy.find_by_id(params[:id])
  end

  def update
    @toy = Toy.find_by_id(params[:id])
    @toy.description = params[:description]
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