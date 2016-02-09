class AddColumnToOrders < ActiveRecord::Migration
  def change
  	add_column :orders, :status,:string , :default => "N/A"
  end
end
