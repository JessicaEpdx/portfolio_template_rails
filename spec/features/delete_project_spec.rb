require 'rails_helper'

describe 'the delete project path' do
  it 'deletes a project' do
    skill = FactoryGirl.create(:skill)
    project = FactoryGirl.create(:project)
    visit skill_project_path(skill, project)
    click_on 'Delete Project'
    expect(page).to have_content "I get it"
  end

end
