class CocktailsController < ApplicationController
  before_action :set_cocktail, only: %i[show destroy]
  before_action :set_cocktail_dose, only: %i[edit update]
  def index
    @cocktails = Cocktail.all
  end

  def show
    @dose = Dose.new
  end

  def new
    @cocktail = Cocktail.new
  end

  def create
    @cocktail = Cocktail.new(cocktail_params)

    if @cocktail.save
      redirect_to @cocktail
    else
      render :new
    end
  end

  def edit; end

  def update
    if @cocktail.update(cocktail_params)
      redirect_to @cocktail
    else
      render :edit
    end
  end

  def destroy
    @cocktail.destroy

    redirect_to cocktails_path
  end

  private

  def set_cocktail_dose
    @dose = Dose.find(params[:id])
    @cocktail = @dose.cocktail
  end

  def cocktail_params
    params.require(:cocktail).permit(:name, :photo)
  end

  def set_cocktail
    @cocktail = Cocktail.find(params[:id])
  end
end
