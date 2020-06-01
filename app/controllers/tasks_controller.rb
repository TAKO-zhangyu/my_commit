class TasksController < ApplicationController

  def tasks 
  end
  
  def index 
    @tasks  = Task.order('limit_date').all
    @status = ['todo', 'doing', 'done']
  end
  
  def show
  end 
  
  def store
    task = Task.new
    task.task       = params[:task]
    task.state      = params[:state]
    task.limit_date = params[:limit_date]
    task.save
    redirect_to '/tasks', notice: 'タスクを作成しました。'
  end
  
  def update 
  end
  
  def destroy
  end
end
