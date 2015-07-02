class ProjectsController < ApplicationController

def new
end

private
  def project_params
    params.require(:project).permit(:name, :description, :url)
  end

end
