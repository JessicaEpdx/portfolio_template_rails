class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :email
      t.string :linkedin
      t.string :github
      t.string :description
      t.string :image
      t.boolean :admin, :default => false
    end
    drop_table :profiles
  end
end
