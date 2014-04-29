class ControlRoomsController < ApplicationController
  def show
    @mutants = Mutant.all
    @teams = Team.order(:name)
  end
end
