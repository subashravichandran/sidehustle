class RenderController < ApplicationController
  def dashboard
    render json: { message: "Action successful" }
  end
end
