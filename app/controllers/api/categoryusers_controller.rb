class Api::CategoryusersController < ApplicationController

  def index
    @categoryuser = CategoryUser.all
    render "index.json.jbuilder"
  end

  def show
    @categoryuser = CategoryUser.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def update
    @categoryuser = CategoryUser.find_by(id: params[:id])
    @categoryuser.spending_cap = params[:spending_cap] || @categoryuser.spending_cap
    if @categoryuser.save
      render "show.json.jbuilder"
    else render json: {errors: @categoryuser.errors.full_messages}, status: :unprocessed_entity
    end
  end
end
