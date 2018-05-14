class Ag::HouseholdApartmentsController < ApplicationController
  before_action :set_ag_household_apartment, only: [:show, :edit, :update, :destroy]

  # GET /ag/household_apartments
  # GET /ag/household_apartments.json
  def index
    @ag_household_apartments = Ag::HouseholdApartment.all
  end

  # GET /ag/household_apartments/1
  # GET /ag/household_apartments/1.json
  def show
  end

  # GET /ag/household_apartments/new
  def new
    @ag_household_apartment = Ag::HouseholdApartment.new
  end

  # GET /ag/household_apartments/1/edit
  def edit
  end

  # POST /ag/household_apartments
  # POST /ag/household_apartments.json
  def create
    @ag_household_apartment = Ag::HouseholdApartment.new(ag_household_apartment_params)

    respond_to do |format|
      if @ag_household_apartment.save
        format.html { redirect_to @ag_household_apartment, notice: 'Household apartment was successfully created.' }
        format.json { render :show, status: :created, location: @ag_household_apartment }
      else
        format.html { render :new }
        format.json { render json: @ag_household_apartment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ag/household_apartments/1
  # PATCH/PUT /ag/household_apartments/1.json
  def update
    respond_to do |format|
      if @ag_household_apartment.update(ag_household_apartment_params)
        format.html { redirect_to @ag_household_apartment, notice: 'Household apartment was successfully updated.' }
        format.json { render :show, status: :ok, location: @ag_household_apartment }
      else
        format.html { render :edit }
        format.json { render json: @ag_household_apartment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ag/household_apartments/1
  # DELETE /ag/household_apartments/1.json
  def destroy
    @ag_household_apartment.destroy
    respond_to do |format|
      format.html { redirect_to ag_household_apartments_url, notice: 'Household apartment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ag_household_apartment
      @ag_household_apartment = Ag::HouseholdApartment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ag_household_apartment_params
      params.require(:ag_household_apartment).permit(:moved_id, :moved_out, :cost, :ag_apartment_id, :ag_household_id, :ag_public_housing_devels_id)
    end
end
