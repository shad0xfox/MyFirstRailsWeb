class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :image
      t.string :name
      t.integer :amount
      t.timestamps null: false
    end

  end
end
