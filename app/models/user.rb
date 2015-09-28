class User < ActiveRecord::Base
	has_many :owned_projects, class_name: ‘Project’ #project creation
	has_many :backed_projects, class_name: ‘Project’ #project backing
	has_many :pledges
end
