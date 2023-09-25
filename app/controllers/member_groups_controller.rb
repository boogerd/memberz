class MemberGroupsController < ApplicationController
  before_action :set_member_group, only: %i[ show edit update destroy ]

  # GET /member_groups or /member_groups.json
  def index
    @member_groups = MemberGroup.all
  end

  # GET /member_groups/1 or /member_groups/1.json
  def show
  end

  # GET /member_groups/new
  def new
    @member_group = MemberGroup.new
  end

  # GET /member_groups/1/edit
  def edit
  end

  # POST /member_groups or /member_groups.json
  def create
    @member_group = MemberGroup.new(member_group_params)
    @member_group.Organisation = Organisation.First

    respond_to do |format|
      if @member_group.save
        format.html { redirect_to member_group_url(@member_group), notice: "Member group was successfully created." }
        format.json { render :show, status: :created, location: @member_group }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @member_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /member_groups/1 or /member_groups/1.json
  def update
    respond_to do |format|
      if @member_group.update(member_group_params)
        format.html { redirect_to member_group_url(@member_group), notice: "Member group was successfully updated." }
        format.json { render :show, status: :ok, location: @member_group }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @member_group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /member_groups/1 or /member_groups/1.json
  def destroy
    @member_group.destroy

    respond_to do |format|
      format.html { redirect_to member_groups_url, notice: "Member group was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_member_group
      @member_group = MemberGroup.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def member_group_params
      params.require(:member_group).permit(:name, :description, :price, :organisation_id)
    end
end
