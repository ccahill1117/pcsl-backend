class DropdownOptionsController < ApplicationController
  before_action :set_dropdown_option, only: %i[ show update destroy ]

  # GET /dropdown_options
  def index
    @dropdown_options = DropdownOption.all

    render json: @dropdown_options
  end

  # GET /dropdown_options/1
  def show
    render json: @dropdown_option
  end

  # POST /dropdown_options
  def create
    @dropdown_option = DropdownOption.new(dropdown_option_params)

    if @dropdown_option.save
      render json: @dropdown_option, status: :created, location: @dropdown_option
    else
      render json: @dropdown_option.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /dropdown_options/1
  def update
    if @dropdown_option.update(dropdown_option_params)
      render json: @dropdown_option
    else
      render json: @dropdown_option.errors, status: :unprocessable_entity
    end
  end

  # DELETE /dropdown_options/1
  def destroy
    @dropdown_option.destroy
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_dropdown_option
      @dropdown_option = DropdownOption.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def dropdown_option_params
      params.fetch(:dropdown_option, {})
    end
end
