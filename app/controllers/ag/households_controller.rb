class Ag::HouseholdsController < ApplicationController
  before_action :set_ag_household, only: [:show, :edit, :update, :destroy]

  # GET /ag/households
  # GET /ag/households.json
  def index
    @ag_households = Ag::Household.all
  end

  # GET /ag/households/1
  # GET /ag/households/1.json
  def show
  end

  # GET /ag/households/new
  def new
    @ag_household = Ag::Household.new
  end

  # GET /ag/households/1/edit
  def edit
  end

  # POST /ag/households
  # POST /ag/households.json
  def create
    @ag_household = Ag::Household.new(ag_household_params)

    respond_to do |format|
      if @ag_household.save
        format.html { redirect_to @ag_household, notice: 'Household was successfully created.' }
        format.json { render :show, status: :created, location: @ag_household }
      else
        format.html { render :new }
        format.json { render json: @ag_household.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ag/households/1
  # PATCH/PUT /ag/households/1.json
  def update
    respond_to do |format|
      if @ag_household.update(ag_household_params)
        format.html { redirect_to @ag_household, notice: 'Household was successfully updated.' }
        format.json { render :show, status: :ok, location: @ag_household }
      else
        format.html { render :edit }
        format.json { render json: @ag_household.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ag/households/1
  # DELETE /ag/households/1.json
  def destroy
    @ag_household.destroy
    respond_to do |format|
      format.html { redirect_to ag_households_url, notice: 'Household was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ag_household
      @ag_household = Ag::Household.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ag_household_params
      params.require(:ag_household).permit(:owned, :subsidized)
    end
end
