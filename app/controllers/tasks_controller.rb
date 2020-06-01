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
  end
  
  def update 
  end
  
  def destroy
  end
end
