require 'rails_helper'

describe 'the home page path' do
  Profile.create({name:"Jessica Engel", email: "Jessicaepdx@gmail.com", description:"I'm at Epicodus!"})
  it 'visits the home page' do
    visit root_path
    expect(page).to have_content "Jessica Engel"
  end
end
