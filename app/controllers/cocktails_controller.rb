class CocktailsController < ApplicationController
  def index
    @cocktails = Cocktail.all
  end

  def show; end

  def new
  end

  def create
  end

  def edit; end

  def update
  end

  def destroy
  end

  private

  def cocktail_params
    params.require(:cocktail).permit(:name)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params['id'])
  end
end
