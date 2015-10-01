class Project < ActiveRecord::Base
	belongs_to :user
	has_many :rewards
	has_many :pledges, through: :rewards
	has_many :users, through: :pledges
	has_and_belongs_to_many :categories, class_name: "Category"
	accepts_nested_attributes_for :rewards
end
