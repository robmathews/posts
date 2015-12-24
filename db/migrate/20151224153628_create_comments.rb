class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :text
      t.integer :post_id
      t.date :posted_at

      t.timestamps null: false
    end
  end
end
