class CreateRewards < ActiveRecord::Migration
  def change
    create_table :rewards do |t|

      t.timestamps null: false
      t.text :name
      t.text :description
      t.integer :backer_limit
      t.timestamps null: false

    end
  end
end
