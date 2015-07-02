require 'rails_helper'

describe 'the new project path' do
  it 'visits the new project path' do
    skill = Skill.create({name: 'Ruby', description: 'Im so skilled'})
    visit skill_path(skill)
    click_on 'Add Project'
    expect(page).to have_content "Add Projects to Ruby"
  end

  it 'adds a new project' do
    skill = Skill.create({name: 'Ruby', description: 'Im so skilled'})
    visit skill_path(skill)
    click_on 'Add Project'
    fill_in 'project_name', :with => 'CatBox'
    fill_in 'project_description', :with => 'Social Media site for cats built with Ruby'
    click_on 'Create Project'
    expect(page).to have_content "CatBox"
  end

end
