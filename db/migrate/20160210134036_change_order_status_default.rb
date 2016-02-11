class ChangeOrderStatusDefault < ActiveRecord::Migration
  def change
  	change_column_default :orders, :status, "In cart"
  end
end
