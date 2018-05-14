class Ag::CountriesController < ApplicationController
  before_action :set_ag_country, only: [:show, :edit, :update, :destroy]

  # GET /ag/countries
  # GET /ag/countries.json
  def index
    @ag_countries = Ag::Country.all
  end

  # GET /ag/countries/1
  # GET /ag/countries/1.json
  def show
  end

  # GET /ag/countries/new
  def new
    @ag_country = Ag::Country.new
  end

  # GET /ag/countries/1/edit
  def edit
  end

  # POST /ag/countries
  # POST /ag/countries.json
  def create
    @ag_country = Ag::Country.new(ag_country_params)

    respond_to do |format|
      if @ag_country.save
        format.html { redirect_to @ag_country, notice: 'Country was successfully created.' }
        format.json { render :show, status: :created, location: @ag_country }
      else
        format.html { render :new }
        format.json { render json: @ag_country.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ag/countries/1
  # PATCH/PUT /ag/countries/1.json
  def update
    respond_to do |format|
      if @ag_country.update(ag_country_params)
        format.html { redirect_to @ag_country, notice: 'Country was successfully updated.' }
        format.json { render :show, status: :ok, location: @ag_country }
      else
        format.html { render :edit }
        format.json { render json: @ag_country.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ag/countries/1
  # DELETE /ag/countries/1.json
  def destroy
    @ag_country.destroy
    respond_to do |format|
      format.html { redirect_to ag_countries_url, notice: 'Country was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ag_country
      @ag_country = Ag::Country.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ag_country_params
      params.require(:ag_country).permit(:name, :iso)
    end
end
