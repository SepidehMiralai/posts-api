class Api::PingsController < ApplicationController

  def show
    render json: { message: "success", status: 200 } 
  end

end