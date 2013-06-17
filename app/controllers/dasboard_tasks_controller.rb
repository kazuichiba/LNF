class DashboardTasksController < ApplicationController
  
  def index
    @taskss = Tasks.all

    respond_to do |format|
      format.html 
      format.json { render json: @tasks }
    end
  end

  
  def show
    puts "the params are #{params.inspect}"
    @tasks = Tasks.find(params[:id])

    respond_to do |format|
      format.html 
      format.json { render json: @task }
    end
  end

  
  def new
    @tasks = Tasks.new

    respond_to do |format|
      format.html 
      format.json { render json: @task }
    end
  end

  def edit
    @tasks = Tasks.find(params[:id])
  end

  
  def create
    @tasks = Tasks.new(params[:task])

    respond_to do |format|
      if @task.save
        format.html { redirect_to @task, notice: 'Event was successfully created.' }
        format.json { render json: @task, status: :created, location: @task }
      else
        format.html { render action: "new" }
        format.json { render json: @task.errors, status: :unprocessable_entity }
      end
    end
  end

  
  def update
    @event = Tasks.find(params[:id])

    respond_to do |format|
      if @task.update_attributes(params[:task])
        format.html { redirect_to @event, notice: 'Task was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @event.errors, status: :unprocessable_entity }
      end
    end
  end

 
  def destroy
      @event = Tasks.find(params[:id])
      @event.destroy
      respond_to do |format|
      format.html { redirect_to tasks_url }
      format.json { head :no_content }
    end
  end
end
