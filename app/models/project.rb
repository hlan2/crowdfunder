class Project < ActiveRecord::Base
	belongs_to :user
	has_many :rewards
	has_many :pledges
	has_many :users, through: :pledges
	accepts_nested_attributes_for :rewards
end
