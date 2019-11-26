class TasksController < ApplicationController

  before_action :find_task, only: [:show, :update, :edit, :delete]
  
  def new
    @task = Task.new
  end
  
  def create
    @task = Task.create(params.require(:task).permit(:title, :details))
    @task.save

    redirect_to task_path(@task)
  end
  
  def find_task
    @task = Task.find(params[:id])
  end
  
  def index
    @tasks = Task.all
  end
  
  
  def show
    
  end

  def edit
    
  end

  def update
    @task.update(params.require(:task).permit(:title, :details, :completed))
    @task.save

    redirect_to task_path(@task)
  end

  def delete
    @task.destroy

    redirect_to index_path
  end
  

end
