class Recommendation < ActiveRecord::Base
  validates_presence_of :url
  validates_presence_of :title
  validates_presence_of :description

end
