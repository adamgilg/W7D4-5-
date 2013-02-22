class CreateUserProducts < ActiveRecord::Migration
  def change
    create_table :user_products do |t|
      t.integer :product_id
      t.integer :user_id

      t.timestamps
    end
  end
end
