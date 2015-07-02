require 'rails_helper'

describe 'the edit project path' do
  it 'visits the edit project page' do
    skill = Skill.create({name: 'Ruby', description: 'Im so skilled'})
    project = skill.projects.create({name: 'CatBox', description: 'Social Media site for cats', url:'www.github.com', image:"http://www.jessicaengel.com/wp-content/themes/JessTheme/images/catbox.png"})
    visit skill_project_path(skill, project)
    click_on 'Edit Project'
    expect(page).to have_content "Edit CatBox"
  end

  it 'edits a new skill' do
    skill = Skill.create({name: 'Ruby', description: 'Im so skilled'})
    project = skill.projects.create({name: 'CatBox', description: 'Social Media site for cats', url:'www.github.com', image:"http://www.jessicaengel.com/wp-content/themes/JessTheme/images/catbox.png"})
    visit edit_skill_project_path(skill, project)
    fill_in 'project_name', :with => 'CATBOX!'
    fill_in 'project_description', :with => 'Social Media site for cats'
    click_on 'Update Project'
    expect(page).to have_content "CATBOX!"
  end

end
