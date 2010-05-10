class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create!(params[:task])
    flash[:notice] = "New task created."
    redirect_to tasks_path
  end

end
