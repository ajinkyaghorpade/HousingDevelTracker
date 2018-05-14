class Ag::ResidentsController < ApplicationController
  before_action :set_ag_resident, only: [:show, :edit, :update, :destroy]

  # GET /ag/residents
  # GET /ag/residents.json
  def index
    @ag_residents = Ag::Resident.all
  end

  # GET /ag/residents/1
  # GET /ag/residents/1.json
  def show
  end

  # GET /ag/residents/new
  def new
    @ag_resident = Ag::Resident.new
  end

  # GET /ag/residents/1/edit
  def edit
  end

  # POST /ag/residents
  # POST /ag/residents.json
  def create
    @ag_resident = Ag::Resident.new(ag_resident_params)

    respond_to do |format|
      if @ag_resident.save
        format.html { redirect_to @ag_resident, notice: 'Resident was successfully created.' }
        format.json { render :show, status: :created, location: @ag_resident }
      else
        format.html { render :new }
        format.json { render json: @ag_resident.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ag/residents/1
  # PATCH/PUT /ag/residents/1.json
  def update
    respond_to do |format|
      if @ag_resident.update(ag_resident_params)
        format.html { redirect_to @ag_resident, notice: 'Resident was successfully updated.' }
        format.json { render :show, status: :ok, location: @ag_resident }
      else
        format.html { render :edit }
        format.json { render json: @ag_resident.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ag/residents/1
  # DELETE /ag/residents/1.json
  def destroy
    @ag_resident.destroy
    respond_to do |format|
      format.html { redirect_to ag_residents_url, notice: 'Resident was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ag_resident
      @ag_resident = Ag::Resident.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ag_resident_params
      params.require(:ag_resident).permit(:name, :dob, :gender)
    end
end
