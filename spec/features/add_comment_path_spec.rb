require 'rails_helper'

describe 'add comments path' do
  it 'displays the add comment form on posts page', js: true do
    user = FactoryGirl.create(:user, :admin => true)
    post = FactoryGirl.create(:post)
    login_as(user, :scope => :user)
    visit posts_path
    click_on 'Add Comment'
    expect(page).to have_content("What do you think?")
  end
end
