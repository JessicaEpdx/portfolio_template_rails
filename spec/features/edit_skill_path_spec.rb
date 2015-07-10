require 'rails_helper'

describe 'the edit skill path' do
  it 'visits the edit skill page' do
    user = FactoryGirl.create(:user, :admin => true)
    login_as(user, :scope => :user)
    skill = FactoryGirl.create(:skill)
    visit skill_path(skill)
    click_on 'Edit Skill'
    expect(page).to have_content "Edit" + " " + skill.name
  end

  it 'edits a new skill' do
    user = FactoryGirl.create(:user, :admin => true)
    login_as(user, :scope => :user)
    skill = FactoryGirl.create(:skill)
    visit skill_path(skill)
    click_on 'Edit Skill'
    fill_in 'skill_name', :with => 'Ruby Programming Language'
    fill_in 'skill_description', :with => 'classes and objects'
    click_on 'Update Skill'
    expect(page).to have_content "Ruby Programming Language"
  end

  it 'errors when skills are empty' do
    user = FactoryGirl.create(:user, :admin => true)
    login_as(user, :scope => :user)
    skill = FactoryGirl.create(:skill)
    visit edit_skill_path(skill)
    fill_in 'skill_name', :with => ''
    fill_in 'skill_description', :with => ''
    click_on 'Update Skill'
    expect(page).to have_content "Name can't be blank"
  end
end
