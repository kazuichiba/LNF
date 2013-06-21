class TasksController < ApplicationController
  
  def index
    @task = Task.update(params[:id])
  end

  def new
    @task = Task.new
  end
  
  def update
    @task = Task.find(params[:id])
    if @task.update_attributes(params[:task])
     redirect_to dashboard_path, notice: 'Task was successfully updated.'   
   end
 end
 
 def show
  @task = Task.find(params[:id])
end

def create
  @task = Task.new(params[:task])

  if @task.save
   redirect_to dashboard_path, notice: 'Task was successfully created.' 
 else
   render action: "new" 
    end          
  end
end