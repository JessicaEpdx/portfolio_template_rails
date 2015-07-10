require 'rails_helper'

describe 'the add new skill path' do
  it 'visits the new skill page' do
    user = FactoryGirl.create(:user, :admin => true)
    visit '/users/sign_in'
    fill_in 'user_email', :with => 'NewUser@somewhere.com'
    fill_in 'user_password', :with => 'newuser1'
    visit new_skill_path
    expect(page).to have_content "Show off your skills!"
  end

  it 'adds a new skill' do
    user = FactoryGirl.create(:user, admin: true)
    visit root_path
    visit new_skill_path
    fill_in 'skill_name', :with => 'Ruby'
    fill_in 'skill_description', :with => 'classes and objects'
    click_on 'Create Skill'
    expect(page).to have_content "Ruby"
  end

  it 'errors when skills are empty' do
    user = FactoryGirl.create(:user, admin: true)
    login_as(user, :scope => :user)
    visit new_skill_path
    click_button 'Create Skill'
    expect(page).to have_content "Name can't be blank"
  end

end
