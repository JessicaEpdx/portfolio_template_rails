require 'rails_helper'

describe 'the individual skill page path' do
  it 'will show individual skill page when name is clicked on home page' do
    Skill.create(name: "Ruby", description: "I'm learning so much Ruby")
    visit root_path
    click_on "Ruby"
    expect(page).to have_content "I'm learning so much Ruby"
  end

end
