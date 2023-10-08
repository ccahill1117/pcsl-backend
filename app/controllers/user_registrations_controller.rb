class UserRegistrationsController < ApplicationController
  before_action :set_user_registration, only: %i[ show update destroy ]
  before_action :authenticate_user!, only: %i[ create ]


  # GET /user_registrations/{season}
  def season
    user_registrations = UserRegistration.where(seasons_id: 1)
    render jsonapi: user_registrations, include: [:user, user_registrations: [:user]],
          fields: { users: [:id, :first_name, :last_name, :email],
                  user_registrations: [:id, :user_id, :seasons_id, :division, :rank, :has_paid, :is_captain, :regular, :user] }

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
