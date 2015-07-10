require 'rails_helper'

describe 'the home page path' do
  it 'visits the home page' do
    skill = FactoryGirl.create(:user, admin: true)
    visit root_path
    expect(page).to have_content "New User"
  end
end
