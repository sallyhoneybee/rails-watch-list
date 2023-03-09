class ListsController < ApplicationController
  def index
    @lists = List.all
  end

  def show
    @list = List.find(params[:id])
  end

  def new
    @movies = Movies.all
    @list = List.new

  def create
    @list = List.new(list_params)
    @movies = Movies.find(params[:movie_id])
    if @list.save
      redirect to list_path(@list)
    else
      render :new, status: :unprocessable_entity
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end