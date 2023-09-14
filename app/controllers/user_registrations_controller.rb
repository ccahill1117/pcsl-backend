class UserRegistrationsController < ApplicationController
  before_action :set_user_registration, only: %i[ show update destroy ]
  before_action :authenticate_user!, only: %i[ create ]


  # GET /user_registrations/{season}
  def season
    @user_registrations = UserRegistration.where(seasons_id: 1).includes(:user)
    # binding.pry
    # render json: Web::UserRegistrationSerializer.new(@user_registrations)
    # render json: @user_registrations, each_serializer: Web::UserRegistrationSerializer
    render json: {
      data: ActiveModelSerializers::SerializableResource.new(@user_registrations, each_serializer: Web::UserRegistrationSerializer),
      message: ['ok we got the registrations'],
      status: 200,
      type: 'Success'
    }
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
      params.fetch(:registration, {}).permit(:regular, :is_captain, :division, :rank, :initials, :user_id, :seasons_id)
    end
end
