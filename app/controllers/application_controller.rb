class ApplicationController < ActionController::API
  # include ActionController::MimeResponds
  # GET / 
  def index
    render json: { success: 'PCSL is online', version: `git rev-parse --short HEAD`, v: 'chris version' }
  end
  respond_to :json
end
