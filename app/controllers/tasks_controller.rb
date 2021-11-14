class TasksController < ApplicationController
  def index
    @tasks = Task.all
    # @tasks = Task.where(visible=true) # Not totally sure of syntax here. For soft deletes
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    # redirect_to_tasks_path
    redirect_to tasks_path
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.update(task_params)
    redirect_to show_path(@task)
  end

  def destroy
    @task = Task.find(params[:id])
    @task.visible = false
    # can add a destroy at date to keep a record
    # redirect_back
  end

  private
  # Strong params
  def task_params
    params.require(:task).permit(:name, :details)
  end
end
