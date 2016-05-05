class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.integer :post_id
      t.string :email
      t.text :comment

      t.timestamps null: false
    end
  end
end