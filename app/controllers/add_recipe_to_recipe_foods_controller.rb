class AddRecipeToRecipeFoodsController < ApplicationController
  before_action :set_add_recipe_to_recipe_food, only: %i[ show edit update destroy ]

  # GET /add_recipe_to_recipe_foods or /add_recipe_to_recipe_foods.json
  def index
    @add_recipe_to_recipe_foods = AddRecipeToRecipeFood.all
  end

  # GET /add_recipe_to_recipe_foods/1 or /add_recipe_to_recipe_foods/1.json
  def show
  end

  # GET /add_recipe_to_recipe_foods/new
  def new
    @add_recipe_to_recipe_food = AddRecipeToRecipeFood.new
  end

  # GET /add_recipe_to_recipe_foods/1/edit
  def edit
  end

  # POST /add_recipe_to_recipe_foods or /add_recipe_to_recipe_foods.json
  def create
    @add_recipe_to_recipe_food = AddRecipeToRecipeFood.new(add_recipe_to_recipe_food_params)

    respond_to do |format|
      if @add_recipe_to_recipe_food.save
        format.html { redirect_to add_recipe_to_recipe_food_url(@add_recipe_to_recipe_food), notice: "Add recipe to recipe food was successfully created." }
        format.json { render :show, status: :created, location: @add_recipe_to_recipe_food }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @add_recipe_to_recipe_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_recipe_to_recipe_foods/1 or /add_recipe_to_recipe_foods/1.json
  def update
    respond_to do |format|
      if @add_recipe_to_recipe_food.update(add_recipe_to_recipe_food_params)
        format.html { redirect_to add_recipe_to_recipe_food_url(@add_recipe_to_recipe_food), notice: "Add recipe to recipe food was successfully updated." }
        format.json { render :show, status: :ok, location: @add_recipe_to_recipe_food }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @add_recipe_to_recipe_food.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_recipe_to_recipe_foods/1 or /add_recipe_to_recipe_foods/1.json
  def destroy
    @add_recipe_to_recipe_food.destroy

    respond_to do |format|
      format.html { redirect_to add_recipe_to_recipe_foods_url, notice: "Add recipe to recipe food was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_recipe_to_recipe_food
      @add_recipe_to_recipe_food = AddRecipeToRecipeFood.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def add_recipe_to_recipe_food_params
      params.require(:add_recipe_to_recipe_food).permit(:recipe_id_id)
    end
end
