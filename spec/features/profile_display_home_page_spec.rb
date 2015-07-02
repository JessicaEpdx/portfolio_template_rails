require 'rails_helper'

describe 'the home page profile display path' do
  it 'visits the home page and displays profile' do
    Profile.create(name: "Jessica Engel", description: "I'm great!")
    visit root_path
    expect(page).to have_content "Jessica Engel"
  end

end
