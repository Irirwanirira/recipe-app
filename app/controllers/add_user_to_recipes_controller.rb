class AddUserToRecipesController < ApplicationController
  before_action :set_add_user_to_recipe, only: %i[ show edit update destroy ]

  # GET /add_user_to_recipes or /add_user_to_recipes.json
  def index
    @add_user_to_recipes = AddUserToRecipe.all
  end

  # GET /add_user_to_recipes/1 or /add_user_to_recipes/1.json
  def show
  end

  # GET /add_user_to_recipes/new
  def new
    @add_user_to_recipe = AddUserToRecipe.new
  end

  # GET /add_user_to_recipes/1/edit
  def edit
  end

  # POST /add_user_to_recipes or /add_user_to_recipes.json
  def create
    @add_user_to_recipe = AddUserToRecipe.new(add_user_to_recipe_params)

    respond_to do |format|
      if @add_user_to_recipe.save
        format.html { redirect_to add_user_to_recipe_url(@add_user_to_recipe), notice: "Add user to recipe was successfully created." }
        format.json { render :show, status: :created, location: @add_user_to_recipe }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @add_user_to_recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /add_user_to_recipes/1 or /add_user_to_recipes/1.json
  def update
    respond_to do |format|
      if @add_user_to_recipe.update(add_user_to_recipe_params)
        format.html { redirect_to add_user_to_recipe_url(@add_user_to_recipe), notice: "Add user to recipe was successfully updated." }
        format.json { render :show, status: :ok, location: @add_user_to_recipe }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @add_user_to_recipe.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /add_user_to_recipes/1 or /add_user_to_recipes/1.json
  def destroy
    @add_user_to_recipe.destroy

    respond_to do |format|
      format.html { redirect_to add_user_to_recipes_url, notice: "Add user to recipe was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_add_user_to_recipe
      @add_user_to_recipe = AddUserToRecipe.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def add_user_to_recipe_params
      params.require(:add_user_to_recipe).permit(:user_id_id)
    end
end
