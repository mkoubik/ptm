class TasksController < ApplicationController
  def index
    @tasks = Task.unfinished
  end

  def finished
    @tasks = Task.finished
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create!(params[:task])
    flash[:notice] = "New task created."
    redirect_to tasks_path
  end

  def destroy
    task = Task.find(params[:id])
    task.delete
    flash[:notice] = "Task deleted."
    redirect_to tasks_path
  end

  def finish
    task = Task.find(params[:id])
    task.finish
    flash[:notice] = "Task finished."
    redirect_to tasks_path
  end

end
