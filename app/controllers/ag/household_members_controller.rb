class Ag::HouseholdMembersController < ApplicationController
  before_action :set_ag_household_member, only: [:show, :edit, :update, :destroy]

  # GET /ag/household_members
  # GET /ag/household_members.json
  def index
    @ag_household_members = Ag::HouseholdMember.all
  end

  # GET /ag/household_members/1
  # GET /ag/household_members/1.json
  def show
  end

  # GET /ag/household_members/new
  def new
    @ag_household_member = Ag::HouseholdMember.new
  end

  # GET /ag/household_members/1/edit
  def edit
  end

  # POST /ag/household_members
  # POST /ag/household_members.json
  def create
    @ag_household_member = Ag::HouseholdMember.new(ag_household_member_params)

    respond_to do |format|
      if @ag_household_member.save
        format.html { redirect_to @ag_household_member, notice: 'Household member was successfully created.' }
        format.json { render :show, status: :created, location: @ag_household_member }
      else
        format.html { render :new }
        format.json { render json: @ag_household_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ag/household_members/1
  # PATCH/PUT /ag/household_members/1.json
  def update
    respond_to do |format|
      if @ag_household_member.update(ag_household_member_params)
        format.html { redirect_to @ag_household_member, notice: 'Household member was successfully updated.' }
        format.json { render :show, status: :ok, location: @ag_household_member }
      else
        format.html { render :edit }
        format.json { render json: @ag_household_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ag/household_members/1
  # DELETE /ag/household_members/1.json
  def destroy
    @ag_household_member.destroy
    respond_to do |format|
      format.html { redirect_to ag_household_members_url, notice: 'Household member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ag_household_member
      @ag_household_member = Ag::HouseholdMember.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ag_household_member_params
      params.require(:ag_household_member).permit(:ag_household_id, :ag_resident_id, :head)
    end
end
