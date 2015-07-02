require 'rails_helper'

describe 'the home page path' do
  it 'visits the home page' do
    visit root_path
    expect(page).to have_content "Jessica Engel"
  end

end
