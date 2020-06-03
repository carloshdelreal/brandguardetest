class Api::V1::ChainController < ApplicationController
  before_action :set_user, only: %i[index]

  def index
    render json: @chain
  end

  private

  def set_user
    @chain = Chain.all
  end
end