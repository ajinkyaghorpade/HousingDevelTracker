class Ag::ApartmentsController < ApplicationController
  before_action :set_ag_apartment, only: [:show, :edit, :update, :destroy]

  # GET /ag/apartments
  # GET /ag/apartments.json
  def index
    @ag_apartments = Ag::Apartment.all
  end

  # GET /ag/apartments/1
  # GET /ag/apartments/1.json
  def show
  end

  # GET /ag/apartments/new
  def new
    @ag_apartment = Ag::Apartment.new
  end

  # GET /ag/apartments/1/edit
  def edit
  end

  # POST /ag/apartments
  # POST /ag/apartments.json
  def create
    @ag_apartment = Ag::Apartment.new(ag_apartment_params)

    respond_to do |format|
      if @ag_apartment.save
        format.html { redirect_to @ag_apartment, notice: 'Apartment was successfully created.' }
        format.json { render :show, status: :created, location: @ag_apartment }
      else
        format.html { render :new }
        format.json { render json: @ag_apartment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ag/apartments/1
  # PATCH/PUT /ag/apartments/1.json
  def update
    respond_to do |format|
      if @ag_apartment.update(ag_apartment_params)
        format.html { redirect_to @ag_apartment, notice: 'Apartment was successfully updated.' }
        format.json { render :show, status: :ok, location: @ag_apartment }
      else
        format.html { render :edit }
        format.json { render json: @ag_apartment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ag/apartments/1
  # DELETE /ag/apartments/1.json
  def destroy
    @ag_apartment.destroy
    respond_to do |format|
      format.html { redirect_to ag_apartments_url, notice: 'Apartment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ag_apartment
      @ag_apartment = Ag::Apartment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ag_apartment_params
      params.require(:ag_apartment).permit(:unit_num, :num_bedrooms, :num_bathrooms, :has_kitchen, :has_living_room, :sq_footage, :pb_housing_devel)
    end
end
