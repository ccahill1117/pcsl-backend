class UserRegistrationsController < ApplicationController
  before_action :set_user_registration, only: %i[ show update destroy ]

  # GET /user_registrations
  def index
    @user_registrations = UserRegistration.all

    render json: @user_registrations
  end

  # GET /user_registrations/1
  def show
    render json: @user_registration
  end

  # POST /user_registrations
  def create
    @user_registration = UserRegistration.new(user_registration_params)

    if @user_registration.save
      render json: @user_registration, status: :created, location: @user_registration
    else
      render json: @user_registration.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /user_registrations/1
  def update
    if @user_registration.update(user_registration_params)
      render json: @user_registration
    else
      render json: @user_registration.errors, status: :unprocessable_entity
    end
  end

  # DELETE /user_registrations/1
  def destroy
    @user_registration.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_user_registration
      @user_registration = UserRegistration.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def user_registration_params
      params.fetch(:user_registration, {})
    end
end