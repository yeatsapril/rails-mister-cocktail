class DosesController < ApplicationController
  before_action :set_dose_cocktail, only: %i[new index show create]
  before_action :set_dose, only: %i[destroy edit update]

  def index
    @doses = @cocktail.doses
  end

  def show; end

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.cocktail = @cocktail

    if @dose.save
      redirect_to @cocktail
    else
      render 'cocktails/show'
    end
  end

  def edit; end

  def update
    if @dose.update(dose_params)
      redirect_to ingredients_path
    else
      render :edit
    end
  end

  def destroy
    @dose.destroy

    redirect_to @dose.cocktail
  end

  private

  def dose_params
    params.require(:dose).permit(:ingredient_id, :description)
  end

  def set_dose_cocktail
    @cocktail = Cocktail.find(params[:cocktail_id])
  end

  def set_dose
    @dose = Dose.find(params[:id])
  end
end
