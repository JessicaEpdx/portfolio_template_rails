require 'rails_helper'

describe 'the edit project path' do
  it 'visits the edit project page' do
    user = FactoryGirl.create(:user, :admin => true)
    login_as(user, :scope => :user)
    skill = FactoryGirl.create(:skill)
    project = FactoryGirl.create(:project)
    visit skill_project_path(skill, project)
    click_on 'Edit Project'
    expect(page).to have_content project.name
  end

  it 'edits a new skill' do
user = FactoryGirl.create(:user, :admin => true)
    visit '/users/sign_in'
    login_as(user, :scope => :user)
    skill = FactoryGirl.create(:skill)
    project = FactoryGirl.create(:project)
    visit edit_skill_project_path(skill, project)
    fill_in 'project_name', :with => 'CATBOX!'
    fill_in 'project_description', :with => 'Social Media site for cats'
    click_on 'Update Project'
    expect(page).to have_content "CATBOX!"
  end

  it 'errors when projects are empty' do
user = FactoryGirl.create(:user, :admin => true)
    visit '/users/sign_in'
    login_as(user, :scope => :user)
    skill = FactoryGirl.create(:skill)
    project = FactoryGirl.create(:project)
    visit edit_skill_project_path(skill, project)
    fill_in 'project_name', :with => ''
    fill_in 'project_description', :with => ''
    click_on 'Update Project'
    expect(page).to have_content "Name can't be blank"
  end

end
