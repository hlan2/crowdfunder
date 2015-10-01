module ProjectsHelper

	def is_owner?(project)
		project.user == current_user
	end

	def tag_links(tags)
		tags.split(",").map{|tag| link_to tag.strip, tag_path(tag.strip)}.join(",")
	end

end
