class HomeController < ApplicationController
  def index
    render json: {key: [:value_1, :value_2, :value_3]}
  end
end