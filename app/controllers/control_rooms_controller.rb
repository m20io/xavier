class ControlRoomsController < ApplicationController
  def show
    @mutants = Mutant.all
  end
end
