class DeleteOderlistListsId < ActiveRecord::Migration
  def change
  	remove_column :orders, :orderlists_id
  end
end
