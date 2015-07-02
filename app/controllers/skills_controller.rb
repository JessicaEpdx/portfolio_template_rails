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

private
  def skill_params
    params.require(:skill).permit(:name, :description)
  end

end
