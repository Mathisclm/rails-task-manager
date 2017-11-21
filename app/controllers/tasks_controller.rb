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
    @task = Task.new(params.require(:task).permit(:name, :description))
    @task.save!
    redirect_to '/tasks'
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
