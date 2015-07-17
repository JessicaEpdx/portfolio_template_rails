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

  it 'creates a new comment and ajax loads in onto the page', js: true do
    user = FactoryGirl.create(:user, :admin => true)
    post = FactoryGirl.create(:post)
    login_as(user, :scope => :user)
    visit posts_path
    click_on 'Add Comment'
    fill_in 'comment_title', :with => "New Comment"
    fill_in 'comment_content', :with => "I have so much to say"
    click_on "Create Comment"
    expect(page).to have_content("I have so much to say")
  end
end
