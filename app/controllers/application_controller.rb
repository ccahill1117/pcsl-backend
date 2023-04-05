class ApplicationController < ActionController::API
  # GET / 
  def index
    render json: { success: 'it worked', version: `git rev-parse --short HEAD`, v: 'chris version' }
  end
end
