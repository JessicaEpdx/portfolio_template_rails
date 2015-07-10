require 'rails_helper'

describe 'the home page profile display path' do
  it 'visits the home page and displays profile' do
    skill = FactoryGirl.create(:profile)
    visit root_path
    expect(page).to have_content "New User"
  end

end
