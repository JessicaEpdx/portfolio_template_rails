class Profile < ActiveRecord::Base

  validates_presence_of :name
  validates_presence_of :email
  validates_presence_of :description


end
