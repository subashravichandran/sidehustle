class Api::V1::UsersController < ApplicationController
  def index
    render json: User.all.pluck(:name, :dob)
  end
end
