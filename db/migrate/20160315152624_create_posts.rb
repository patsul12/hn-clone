class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.string :title
      t.string :content
      t.datetime :post_date

      t.timestamps null: false
    end
  end
end
