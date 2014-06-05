class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :users, :type, :group
  end
end
