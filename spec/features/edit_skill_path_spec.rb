require 'rails_helper'

describe 'the edit skill path' do
  it 'visits the edit skill page' do
    Skill.create({name: 'Ruby', description: 'Im so skilled'})
    visit root_path
    click_on 'Ruby'
    click_on 'Edit Skill'
    expect(page).to have_content "Edit Ruby"
  end

  it 'edits a new skill' do
    Skill.create({name: 'Ruby', description: 'Im so skilled'})
    visit root_path
    click_on 'Ruby'
    click_on 'Edit Skill'
    fill_in 'skill_name', :with => 'Ruby Programming Language'
    fill_in 'skill_description', :with => 'classes and objects'
    click_on 'Update Skill'
    expect(page).to have_content "Ruby Programming Language"
  end

end
