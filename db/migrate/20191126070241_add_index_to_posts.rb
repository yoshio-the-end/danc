class AddIndexToPosts < ActiveRecord::Migration[5.2]
  def change
    add_index :posts, :content, length: 200
  end
end
