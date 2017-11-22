class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end
  # => array d'objet tasks
#[<task7827387283>, <task7827387686> ]
#le @tasks est l'argument envoyé à la vue index.html.erb

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    @task.save!
    redirect_to task_path(@task.id)
  end

  def edit
   @task = Task.find(params[:id])
  end

  def update
    @task.update(task_params)
    @task.save!
    redirect_to '/tasks'
  end

  def destroy
  end
end

private

def task_params
  params.require(:task).permit(:name, :description)
end
