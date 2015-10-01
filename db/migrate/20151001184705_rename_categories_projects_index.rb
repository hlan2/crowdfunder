class RenameCategoriesProjectsIndex < ActiveRecord::Migration
  def change
  	rename_table :categories_project_indices, :categorys_projects
  end
end
