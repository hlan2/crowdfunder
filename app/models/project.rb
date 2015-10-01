class Project < ActiveRecord::Base
	belongs_to :user
	has_many :rewards
	has_many :pledges, through: :rewards
	has_many :users, through: :pledges
	has_and_belongs_to_many :categories, class_name: "Category"
	has_many :taggings
	has_many :tags, through: :taggings
	accepts_nested_attributes_for :rewards

	def all_tags=(names)
		self.tags = names.split(",").map do |name|
			Tag.where(name: name.strip).first_or_create!
		end
	end

	def all_tags
		self.tags.map(&:name).join(", ")
	end

	def self.tagged_with(name)
		Tag.find_by_name!(name).projects
	end
end
