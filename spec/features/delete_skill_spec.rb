require 'rails_helper'

describe 'the delete skill path' do
  it 'deletes a skill' do
    user = FactoryGirl.create(:user, :admin => true)
    login_as(user, :scope => :user)
    skill = FactoryGirl.create(:skill)
    visit skill_path(skill)
    click_on 'Delete Skill'
    visit root_path
    expect(page).to_not have_content("New Skill")
  end

  it 'deletes projects connected to deleted skill' do
    user = FactoryGirl.create(:user, :admin => true)
    login_as(user, :scope => :user)
    skill = FactoryGirl.create(:skill)
    project = skill.projects.create({name: "New Project", description:"Description"})
    visit skill_path(skill)
    click_on 'Delete Skill'
    visit projects_path
    expect(page).to_not have_content("New Project")
  end

end
