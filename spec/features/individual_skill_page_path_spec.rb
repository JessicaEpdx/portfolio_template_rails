require 'rails_helper'

describe 'the individual skill page path' do
  it 'will show individual skill page when name is clicked on home page' do
    skill = FactoryGirl.create(:skill)
    visit root_path
    click_on "New Skill"
    expect(page).to have_content "I get it"
  end

end
