class TasksController < ApplicationController
  def new
    @task = Task.new
    @teams = Team.all
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      flash[:notice] = "Task #{@task.description} created."
      redirect_to root_url
    else
      @teams = Team.all
      render :new
    end
  end

  def destroy
    @task = Task.find(params[:id])
    flash[:notice] = "Task #{@task.description} has been removed."
    @task.delete
    redirect_to root_url
  end

  def update
    @task = Task.find(params[:id])
    if params[:commit] == 'complete'
      @task.update_attribute(:completed, true)
      flash[:notice] = "Task #{@task.description} is completed."
    else
      @task.update_attributes!(task_team)
      if @task.team_name.present?
        flash[:notice] = "#{@task.description} is assigned to #{@task.team_name}"
      else
        flash[:notice] = "#{@task.description} not longer assinged to any team"
      end
    end
    redirect_to root_url
  end

  private
  def task_team
    params.require(:task).permit(:team_id)
  end

  def task_params
    params.require(:task).permit(:description, :due_date, :team_id)
  end
end
