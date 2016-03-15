class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :content
      t.datetime :post_date
      t.integer :post_id
      t.integer :author_id

      t.timestamps null: false
    end
  end
end
