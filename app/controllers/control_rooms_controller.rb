class ControlRoomsController < ApplicationController
  def show
    @mutants = Mutant.all
    @teams = Team.order(:name)
    @tasks = Task.order(:due_date)
  end
end
