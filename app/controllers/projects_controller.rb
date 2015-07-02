class ProjectsController < ApplicationController

def new
  @skill = Skill.find(params[:skill_id])
  @project = @skill.projects.new()
end

def create
  @skill = Skill.find(params[:skill_id])
  @project = @skill.projects.new(project_params)
  if @project.save
    redirect_to skill_path(@skill)
  else
    render :new
  end
end

def show
  @project = Project.find(params[:id])
  @skill = Skill.find(params[:skill_id])
end

def edit
  @project = Project.find(params[:id])
  @skill = Skill.find(params[:skill_id])
end

private
  def project_params
    params.require(:project).permit(:name, :description, :url)
  end

end
