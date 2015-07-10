require 'rails_helper'

describe 'the new project path' do
  it 'visits the new project path' do
    skill = FactoryGirl.create(:skill)
    visit skill_path(skill)
    click_on 'Add Project'
    expect(page).to have_content "Add Projects to" + " " + skill.name
  end

  it 'adds a new project' do
    skill = FactoryGirl.create(:skill)
    visit skill_path(skill)
    click_on 'Add Project'
    fill_in 'project_name', :with => 'CatBox'
    fill_in 'project_description', :with => 'Social Media site for cats built with Ruby'
    click_on 'Create Project'
    expect(page).to have_content "CatBox"
  end

  it 'errors when projects are empty' do
    skill = FactoryGirl.create(:skill)
    visit new_skill_project_path(skill)
    click_button 'Create Project'
    expect(page).to have_content "Name can't be blank"
  end

end
