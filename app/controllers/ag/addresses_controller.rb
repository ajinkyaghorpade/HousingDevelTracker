class Ag::AddressesController < ApplicationController
  before_action :set_ag_address, only: [:show, :edit, :update, :destroy]

  # GET /ag/addresses
  # GET /ag/addresses.json
  def index
    @ag_addresses = Ag::Address.all
  end

  # GET /ag/addresses/1
  # GET /ag/addresses/1.json
  def show
  end

  # GET /ag/addresses/new
  def new
    @ag_address = Ag::Address.new
  end

  # GET /ag/addresses/1/edit
  def edit
  end

  # POST /ag/addresses
  # POST /ag/addresses.json
  def create
    @ag_address = Ag::Address.new(ag_address_params)

    respond_to do |format|
      if @ag_address.save
        format.html { redirect_to @ag_address, notice: 'Address was successfully created.' }
        format.json { render :show, status: :created, location: @ag_address }
      else
        format.html { render :new }
        format.json { render json: @ag_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ag/addresses/1
  # PATCH/PUT /ag/addresses/1.json
  def update
    respond_to do |format|
      if @ag_address.update(ag_address_params)
        format.html { redirect_to @ag_address, notice: 'Address was successfully updated.' }
        format.json { render :show, status: :ok, location: @ag_address }
      else
        format.html { render :edit }
        format.json { render json: @ag_address.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ag/addresses/1
  # DELETE /ag/addresses/1.json
  def destroy
    @ag_address.destroy
    respond_to do |format|
      format.html { redirect_to ag_addresses_url, notice: 'Address was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ag_address
      @ag_address = Ag::Address.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ag_address_params
      params.require(:ag_address).permit(:project_name, :street_name, :city, :state, :zip_code, :country)
    end
end
