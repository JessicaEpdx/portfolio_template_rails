class CreateReferences < ActiveRecord::Migration
  def change
    create_table :references do |t|
      t.string :name
      t.string :phone
      t.string :address
      t.string :employer
      t.string :job_title
    end
  end
end
