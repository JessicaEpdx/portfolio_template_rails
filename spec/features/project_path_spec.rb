require 'rails_helper'

describe 'the project path' do
  it 'visits individual project page and displays description' do
    skill = Skill.create({name: 'Ruby', description: 'Im so skilled'})
    project = skill.projects.create({name: 'CatBox', description: 'Social Media site for cats', url:'www.github.com', image:"http://www.jessicaengel.com/wp-content/themes/JessTheme/images/catbox.png"})
    visit skill_path(skill)
    click_on 'CatBox'
    expect(page).to have_content "Social Media site for cats"
  end

end
