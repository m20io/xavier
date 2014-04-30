class TeamsController < ApplicationController
  def new
    @team = Team.new
  end

  def create
    @team = Team.new(team_params)
    if @team.save
      flash[:notice] = "Team #{@team.name} created."
      redirect_to root_url
    else
      render :new
    end
  end

  def destroy
    team = Team.find(params[:id])
    flash[:notice] = "Team '#{team.name}' has been dissolved."
    team.delete
    redirect_to root_url
  end

  private
  def team_params
    params.require(:team).permit(:name)
  end
end
