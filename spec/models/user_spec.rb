require 'rails_helper'

describe User do
  it { should validate_presence_of :username}
  it { should validate_presence_of :email}
   it 'will have an admin column set to false' do
      user = FactoryGirl.create(:user)
      expect(user.admin).to eq(false)
    end

    it 'will specify admins if admin is true' do
      user = FactoryGirl.create(:user, :admin => true)
      expect(user.admin).to eq(true)
    end
end
