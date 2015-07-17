require 'rails_helper'

describe Reference do
  it { should validate_presence_of :name}
  it { should validate_presence_of :employer}
  it { should validate_presence_of :email}
  it { should validate_presence_of :phone}
  it { should validate_presence_of :address}
  it { should validate_presence_of :job_title}
end
