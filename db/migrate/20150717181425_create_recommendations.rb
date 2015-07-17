class CreateRecommendations < ActiveRecord::Migration
  def change
    create_table :recommendations do |t|
      t.string :url
      t.string :title
      t.string :description
      t.string :image
    end
  end
end
