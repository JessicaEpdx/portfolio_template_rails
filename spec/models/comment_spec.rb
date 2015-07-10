require 'rails_helper'

describe Comment do
  it { should validate_presence_of :content}
  it { should validate_presence_of :title}
  it { should belong_to :post}
end
