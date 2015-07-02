require 'rails_helper'

describe 'the delete project path' do
  it 'deletes a project' do
    skill = Skill.create({name: 'Ruby', description: 'Im so skilled'})
    project = skill.projects.create({name: 'CatBox', description: 'Social Media site for cats', url:'www.github.com', image:"http://www.jessicaengel.com/wp-content/themes/JessTheme/images/catbox.png"})
    visit skill_project_path(skill, project)
    click_on 'Delete Project'
    expect(page).to have_content "Im so skilled"
  end

end
