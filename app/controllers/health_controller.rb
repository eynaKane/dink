class HealthController < ApplicationController
  def index
    render json: 'DINK is up! :)'
  end
end
