class RenameColumnOfOrderlist < ActiveRecord::Migration
  def change
  	rename_column :orderlists, :users_id, :user_id
  end
end
