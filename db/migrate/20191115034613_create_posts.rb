class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :title
      t.string :address
      t.text :content, limit: 16777215    
      t.timestamps
    end
  end
end
