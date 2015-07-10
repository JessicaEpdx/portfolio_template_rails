class AddTimestampsToPostsAgain < ActiveRecord::Migration
  def change
    add_column(:posts, :updated_at, :datetime)
  end
end
