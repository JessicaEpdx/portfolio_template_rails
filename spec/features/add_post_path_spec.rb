require 'rails_helper'

describe 'add post path' do
  it 'goes to add post form' do
    user = FactoryGirl.create(:user, :admin => true)
    login_as(user, :scope => :user)
    visit new_post_path
    expect(page).to have_content "New Post"
  end

end
