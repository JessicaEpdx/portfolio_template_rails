require 'rails_helper'

describe 'add reccomendation path' do
  it 'displays the add recommendation form', js: true do
    user = FactoryGirl.create(:user, :admin => true)
    post = FactoryGirl.create(:post)
    login_as(user, :scope => :user)
    visit root_path
    click_on 'Recommendations'
    click_on 'What do you like?!'
    expect(page).to have_content("Close Form")
  end
end
