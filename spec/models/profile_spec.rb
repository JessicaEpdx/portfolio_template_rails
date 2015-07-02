require 'rails_helper'

describe Profile do
  it { should validate_presence_of :name}
  it { should validate_presence_of :email}
  it { should validate_presence_of :description}

end
