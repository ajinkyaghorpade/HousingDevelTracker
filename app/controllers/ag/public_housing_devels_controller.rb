class Ag::PublicHousingDevelsController < ApplicationController
  before_action :set_ag_public_housing_devel, only: [:show, :edit, :update, :destroy]

  # GET /ag/public_housing_devels
  # GET /ag/public_housing_devels.json
  def index
    @ag_public_housing_devels = Ag::PublicHousingDevel.all
  end

  # GET /ag/public_housing_devels/1
  # GET /ag/public_housing_devels/1.json
  def show
  end

  # GET /ag/public_housing_devels/new
  def new
    @ag_public_housing_devel = Ag::PublicHousingDevel.new
  end

  # GET /ag/public_housing_devels/1/edit
  def edit
  end

  # POST /ag/public_housing_devels
  # POST /ag/public_housing_devels.json
  def create
    @ag_public_housing_devel = Ag::PublicHousingDevel.new(ag_public_housing_devel_params)

    respond_to do |format|
      if @ag_public_housing_devel.save
        format.html { redirect_to @ag_public_housing_devel, notice: 'Public housing devel was successfully created.' }
        format.json { render :show, status: :created, location: @ag_public_housing_devel }
      else
        format.html { render :new }
        format.json { render json: @ag_public_housing_devel.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ag/public_housing_devels/1
  # PATCH/PUT /ag/public_housing_devels/1.json
  def update
    respond_to do |format|
      if @ag_public_housing_devel.update(ag_public_housing_devel_params)
        format.html { redirect_to @ag_public_housing_devel, notice: 'Public housing devel was successfully updated.' }
        format.json { render :show, status: :ok, location: @ag_public_housing_devel }
      else
        format.html { render :edit }
        format.json { render json: @ag_public_housing_devel.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ag/public_housing_devels/1
  # DELETE /ag/public_housing_devels/1.json
  def destroy
    @ag_public_housing_devel.destroy
    respond_to do |format|
      format.html { redirect_to ag_public_housing_devels_url, notice: 'Public housing devel was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ag_public_housing_devel
      @ag_public_housing_devel = Ag::PublicHousingDevel.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ag_public_housing_devel_params
      params.fetch(:ag_public_housing_devel, {}).permit(:name, :ag_address_id, :open_date, :height, :last_renov_date )
    end
end
