class CreatePosts < ActiveRecord::Migration[5.0]
  def change
    create_table :posts do |t|
      t.string :image
      t.text :text
      t.string :tag
      t.integer :location_id
      t.integer :user_id

      t.timestamps
    end
  end
end
