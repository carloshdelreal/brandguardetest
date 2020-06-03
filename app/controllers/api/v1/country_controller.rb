class Api::V1::CountryController < ApplicationController
  before_action :set_user, only: %i[index]

  def index
    render json: @country
  end

  private

  def set_user
    @country = Country.all
  end
end