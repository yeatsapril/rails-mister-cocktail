class IngredientsController < ApplicationController
  before_action :set_ingredient, only: %i[show edit update destroy]

  def index
    @ingredients = Ingredient.all
  end

  def show; end

  def new
    @ingredient = Ingredient.new
  end

  def create
    @ingredient = Ingredient.new(ingredient_params)
    if @ingredient.save
      redirect_to ingredients_path
    else
      render :new
    end
  end

  def edit; end

  def update; end

  def destroy; end

  private

  def set_ingredient
    @ingredient = Ingredient.find(params['id'])
  end

  def ingredient_params
    params.require(:ingredient).permit(:name)
  end
end
