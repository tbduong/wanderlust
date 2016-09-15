class RemoveLocationIdFromPosts < ActiveRecord::Migration[5.0]
  def change
    remove_column :posts, :location_id, :integer
  end
end
