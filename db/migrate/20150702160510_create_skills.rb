class CreateSkills < ActiveRecord::Migration
  def change
    create_table :skills do |t|
      t.string :name
      t.string :description
    end
    create_table :projects do |t|
      t.string :name
      t.string :description
      t.string :url
      t.integer :skill_id
    end
  end
end
