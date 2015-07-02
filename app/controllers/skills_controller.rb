class SkillsController < ApplicationController

def index
  @profiles = Profile.all()
  @skills = Skill.all()
end

def new
  @skill = Skill.new()
end

def create
  @skill = Skill.new(skill_params)
  if @skill.save
    redirect_to root_path
  else
    render :new
  end
end

def show
  @skill = Skill.find(params[:id])
end

def edit
  @skill = Skill.find(params[:id])
end

def update
  @skill = Skill.find(params[:id])
  if @skill.update(skill_params)
    redirect_to skill_path(@skill)
  else
    render :edit
  end
end

def destroy
  @skill = Skill.find(params[:id])
  @skill.projects.each do |project|
    project.destroy()
  end
  @skill.destroy()
  redirect_to root_path
end

private
  def skill_params
    params.require(:skill).permit(:name, :description)
  end

end
