class CreateReceipts < ActiveRecord::Migration[5.2]
  def change
    create_table :receipts do |t|
      t.integer :user_id
      t.integer :category_id
      t.string :merchant
      t.decimal :price, precision: 9, scale: 2
      t.string :image
      t.datetime :policy_exp_date
      t.integer :priority

      t.timestamps
    end
  end
end
