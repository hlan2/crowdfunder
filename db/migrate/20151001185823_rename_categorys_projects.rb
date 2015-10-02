class RenameCategorysProjects < ActiveRecord::Migration
  def change
  	rename_table :categorys_projects, :categories_projects
  end
end
