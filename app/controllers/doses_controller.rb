class DosesController < ApplicationController
  before_action :set_dose_ingredient, only: %i[new index show create]
  before_action :set_dose, only: %i[destroy edit update]

  def index
    @doses = @ingredient.doses
  end

  def show; end

  def new
    @dose = Dose.new
  end

  def create
    @dose = Dose.new(dose_params)
    @dose.ingredient = @ingredient
    @dose.save
        raise

    if @dose.save
      redirect_to ingredients_path
    else
      render :new
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

    redirect_to @dose.ingredient
  end

  private

  def dose_params
    params.require(:dose).permit(:description)
  end

  def set_dose_ingredient
    @ingredient = Ingredient.find(params['ingredient_id'])
  end

  def set_dose
    @dose = Dose.find(params['id'])
  end
end
