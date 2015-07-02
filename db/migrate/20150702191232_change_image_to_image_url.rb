class ChangeImageToImageUrl < ActiveRecord::Migration
  def change
    remove_column :projects, :image
    add_column :projects, :image_url, :string
  end
end
