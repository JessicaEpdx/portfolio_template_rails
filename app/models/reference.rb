class Reference < ActiveRecord::Base

validates_presence_of :employer
validates_presence_of :name
validates_presence_of :phone
validates_presence_of :address
validates_presence_of :email
validates_presence_of :job_title



end
