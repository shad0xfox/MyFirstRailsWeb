class Change < ActiveRecord::Migration
  def change
  	change_column( :products, :amount ,:integer )
  	change_column( :products, :price ,:integer )
  end
end
