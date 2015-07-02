require 'rails_helper'

describe 'the delete skill path' do
  it 'deletes a skill' do
    Skill.create({name: 'Ruby', description: 'Im so skilled'})
    visit root_path
    click_on 'Ruby'
    click_on 'Delete Skill'
    expect(page).to have_content "Skills"
  end

end
