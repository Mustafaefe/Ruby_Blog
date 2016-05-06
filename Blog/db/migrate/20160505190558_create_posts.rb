class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.text :text

      t.timestamps null: false
    end

    create_table :comments do |t|
      t.belongs_to :post, index:true
      t.integer :post_id
      t.string :email
      t.text :comment

      t.timestamps null: false
    end

  end
end
