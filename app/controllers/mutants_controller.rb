class MutantsController < ApplicationController
  def new
    @mutant = Mutant.new
  end

  def create
    @mutant = Mutant.new mutant_params
    if @mutant.save
      flash[:notice] = "mutant recorded for #{@mutant.mutant_name} created"
      redirect_to root_url
    else
      render :new
    end
  end

  def destroy
    @mutant = Mutant.find(params[:id])
    @mutant.delete
    flash[:notice] = "#{@mutant.mutant_name} is no longer a X-Men."
    redirect_to root_url
  end

  private 

  def mutant_params
    params.require(:mutant).permit(:mutant_name, :special_abilities)
  end
end
