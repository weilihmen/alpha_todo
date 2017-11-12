class TasksController < ApplicationController

def index
  today=Time.now.strftime("%m-%d-%Y")
	@tasks = Task.all
	@undonetasks = Task.where.not(done: true).where("deadline>?",Date.yesterday)
  @donetasks = Task.where(done: true)
  @failtasks = Task.where(done: false).where("deadline<?",Date.today)
end

def new
	@newtask = Task.new
end

def create
  @newtask = Task.new(task_params)
  if @newtask.save
    redirect_to tasks_path, notice: "succeed!"
  else
    render :new
  end
end

def edit  
  @task=Task.find(params[:id])
end

def update
	@task=Task.find(params[:id])
	@task.update(task_params)
	redirect_to tasks_path
end

def destroy
  @task = Task.find(params[:id])
  @task.destroy
  redirect_to tasks_path
end

def done
  @task = Task.find(params[:id])
  @task.update_attribute(:done,true)
  redirect_to tasks_path
end

private
def task_params
	params.require(:task).permit(:name, :deadline, :note, :done)
end

end