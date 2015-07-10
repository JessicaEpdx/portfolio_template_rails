class ProjectsController < ApplicationController

def index
  @projects = Project.all
end

def new
  @skill = Skill.find(params[:skill_id])
  @project = @skill.projects.new()
end

def create
  @skill = Skill.find(params[:skill_id])
  @project = @skill.projects.new(project_params)
  if @project.save
    flash[:notice] = "You've added a project!"
    redirect_to skill_path(@skill)
  else
    flash[:alert] = "Oops! Try Again"
    render :new
  end
end

def show
  @skill = Skill.find(params[:skill_id])
  @project = Project.find(params[:id])
end

def edit
  @skill = Skill.find(params[:skill_id])
  @project = Project.find(params[:id])
end

def update
  @skill = Skill.find(params[:skill_id])
  @project = Project.find(params[:id])
  if @project.update(project_params)
    flash[:notice] = "You've edited" + " " + @project.name
    redirect_to skill_project_path(@skill, @project)
  else
    render :new
  end
end

def destroy
  @skill = Skill.find(params[:skill_id])
  @project = Project.find(params[:id])
  @project.destroy()
  redirect_to skill_path(@skill)
end

private
  def project_params
    params.require(:project).permit(:name, :description, :url, :image_url)
  end

end
