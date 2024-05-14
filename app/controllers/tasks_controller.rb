class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task_new = Task.new(task_params)
    @task_new.save
    redirect_to tasks_path
  end

  private

def task_params
  params.require(:task).permit(:title, :details)
end
end
