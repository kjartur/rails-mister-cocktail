class DosesController < ApplicationController
  def create
    @dose = Dose.new(dose_params)
    @cocktail = Cocktail.find(params[:id])
    @dose.cocktail = @cocktail
    if @dose.save
      redirect_to cocktail_path(@cocktail)
    else
      render "cocktails/show"
    end
  end

  def destroy
  end

  private

  def cocktail_params
    params.require(:dose).permit(:description, :indgredient_id)
  end

end
