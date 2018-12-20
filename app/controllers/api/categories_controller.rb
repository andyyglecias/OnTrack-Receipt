class Api::CategoriesController < ApplicationController

  def index
    @categories = Category.all
    render "index.json.jbuilder"
    # render json: {message: 'categories'}
  end

  def show
    @category = Category.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def create
    @category = Category.new(
       name: params["input_new_name"]
       )
    @category.save
    render "show.json.jbuilder"
  end

  def update
    @category = Category.find_by(id: params[:id])
    @category.name = params[:name] || @category.name
    @category.save
    render "show.json.jbuilder"
  end

  def destroy
    @category = Category.find_by(id: params[:id])
    @category.destroy
    render json: {message: "Receipt successfully destroyed!"}
  end

end
