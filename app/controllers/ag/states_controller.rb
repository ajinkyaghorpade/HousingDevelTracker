class Ag::StatesController < ApplicationController
  before_action :set_ag_state, only: [:show, :edit, :update, :destroy]

  # GET /ag/states
  # GET /ag/states.json
  def index
    @ag_states = Ag::State.all
  end

  # GET /ag/states/1
  # GET /ag/states/1.json
  def show
  end

  # GET /ag/states/new
  def new
    @ag_state = Ag::State.new
  end

  # GET /ag/states/1/edit
  def edit
  end

  # POST /ag/states
  # POST /ag/states.json
  def create
    @ag_state = Ag::State.new(ag_state_params)

    respond_to do |format|
      if @ag_state.save
        format.html { redirect_to @ag_state, notice: 'State was successfully created.' }
        format.json { render :show, status: :created, location: @ag_state }
      else
        format.html { render :new }
        format.json { render json: @ag_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ag/states/1
  # PATCH/PUT /ag/states/1.json
  def update
    respond_to do |format|
      if @ag_state.update(ag_state_params)
        format.html { redirect_to @ag_state, notice: 'State was successfully updated.' }
        format.json { render :show, status: :ok, location: @ag_state }
      else
        format.html { render :edit }
        format.json { render json: @ag_state.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ag/states/1
  # DELETE /ag/states/1.json
  def destroy
    @ag_state.destroy
    respond_to do |format|
      format.html { redirect_to ag_states_url, notice: 'State was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ag_state
      @ag_state = Ag::State.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ag_state_params
      params.require(:ag_state).permit(:name, :country_id, :iso)
    end
end
