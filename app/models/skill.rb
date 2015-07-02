class Skill < ActiveRecord::Base
  has_many :projects

  validates_presence_of :name
  validates_presence_of :description
end
