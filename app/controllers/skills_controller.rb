class SkillsController < ApplicationController

def index
  @profiles = Profile.all()
  @skills = Skill.all()
end

def new
  @skill = Skill.new()
end

end
