class AddRecommenderToRecommendations < ActiveRecord::Migration
  def change
    add_column :recommendations, :recommender, :string
  end
end
