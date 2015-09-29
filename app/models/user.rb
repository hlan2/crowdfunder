class User < ActiveRecord::Base
	has_secure_password
	has_many :projects
	# has_many :owned_projects #, class_name: ‘project’ #project creation
	# has_many :backed_projects #, class_name: ‘project’ #project backing
	has_many :pledges
end
