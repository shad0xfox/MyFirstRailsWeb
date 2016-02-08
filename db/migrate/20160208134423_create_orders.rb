class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.references :user
      t.references :product
      t.timestamps null: false
    end
  end
end
