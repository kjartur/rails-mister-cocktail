class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
    @ingredients = Ingredient.all
  end

  def create
    # create cocktail instance
    @cocktail = Cocktail.find(params[:cocktail_id])
    # create doses instance with ingredient instance???
    @dose = Dose.new(doses_params)
    # tell doses instance that it belongs to cocktail instance
    @dose.cocktail = @cocktail
    # check if doses instance was saved
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  def destroy
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.find(params[:id])
    @dose.delete
    redirect_to cocktail_path(@cocktail)
  end

  private

  def doses_params
    params.require(:dose).permit(:description, :ingredient_id)
  end
end
