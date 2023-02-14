class AddUserToInventoriesController < ApplicationController
  before_action :set_add_user_to_inventory, only: %i[ show edit update destroy ]

  # GET /add_user_to_inventories or /add_user_to_inventories.json
  def index
    @add_user_to_inventories = AddUserToInventory.all
  end

  # GET /add_user_to_inventories/1 or /add_user_to_inventories/1.json
  def show
  end

  # GET /add_user_to_inventories/new
  def new
    @add_user_to_inventory = AddUserToInventory.new
  end

  # GET /add_user_to_inventories/1/edit
  def edit
  end

  # POST /add_user_to_inventories or /add_user_to_inventories.json
  def create
    @add_user_to_inventory = AddUserToInventory.new(add_user_to_inventory_params)

    respond_to do |format|
      if @add_user_to_inventory.save
        format.html { redirect_to add_user_to_inventory_url(@add_user_to_inventory), notice: "Add user to inventory was successfully created." }
        format.json { render :show, status: :created, location: @add_user_to_inventory }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @add_user_to_inventory.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_user_to_inventories/1 or /add_user_to_inventories/1.json
  def update
    respond_to do |format|
      if @add_user_to_inventory.update(add_user_to_inventory_params)
        format.html { redirect_to add_user_to_inventory_url(@add_user_to_inventory), notice: "Add user to inventory was successfully updated." }
        format.json { render :show, status: :ok, location: @add_user_to_inventory }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @add_user_to_inventory.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_user_to_inventories/1 or /add_user_to_inventories/1.json
  def destroy
    @add_user_to_inventory.destroy

    respond_to do |format|
      format.html { redirect_to add_user_to_inventories_url, notice: "Add user to inventory was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_user_to_inventory
      @add_user_to_inventory = AddUserToInventory.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def add_user_to_inventory_params
      params.require(:add_user_to_inventory).permit(:user_id_id)
    end
end
