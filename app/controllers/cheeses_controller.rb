class CheesesController < ApplicationController

  def index
    cheeses = Cheese.all
    render json: cheeses
  end

  def show
    # find a cheese using the id from teh URL
        # byebug
        cheese = Cheese.find_by(id: params[:id])
        render json: cheese
    #send a json response using cheese object
  end

end
