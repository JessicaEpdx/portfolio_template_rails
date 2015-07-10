require 'rails_helper'

describe 'the project path' do
  it 'visits individual project page and displays description' do
    skill = FactoryGirl.create(:skill)
    project = FactoryGirl.create(:project)
    visit skill_project_path(skill, project)
    expect(page).to have_content project.description
  end

end
