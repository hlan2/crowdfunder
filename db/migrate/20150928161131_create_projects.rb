class CreateProjects < ActiveRecord::Migration
  def change
    
    create_table :projects do |t|

    t.timestamps null: false
    t.string :name
    t.text :description
    t.datetime :start_at
    t.datetime :end_at
    t.integer :funding_goal
    t.timestamps null: false #this adds "created_at" and "updated_at"
    end
  end
end
