class HomeController < ApplicationController
  def index
    render json: {key: :value}
  end
end