class CreateCategoriesProjectIndex < ActiveRecord::Migration
  def change
    create_table :categories_project_indices do |t|
    	t.belongs_to :project, index: true
    	t.belongs_to :category, index: true
    end
  end
end
