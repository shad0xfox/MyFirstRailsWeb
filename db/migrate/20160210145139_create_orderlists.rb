class CreateOrderlists < ActiveRecord::Migration
  def change
    create_table :orderlists do |t|
    	t.references :users
    	t.datetime :order_time
      t.timestamps null: false
    end
  end

end
