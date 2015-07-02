require 'rails_helper'

describe 'the add new skill path' do
  it 'visits the new skill page' do
    visit root_path
    click_on 'Add Skills'
    expect(page).to have_content "Add Skills"
  end

  it 'adds a new skill' do
    visit root_path
    click_on 'Add Skills'
    fill_in 'skill_name', :with => 'Ruby'
    fill_in 'skill_description', :with => 'classes and objects'
    click_on 'Create Skill'
    expect(page).to have_content "Ruby"
  end

end
