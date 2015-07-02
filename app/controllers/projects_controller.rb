class ProjectsController < ApplicationController

def new
  @skill = Skill.find(params[:skill_id])
  @project = @skill.projects.new()
end

private
  def project_params
    params.require(:project).permit(:name, :description, :url)
  end

end
