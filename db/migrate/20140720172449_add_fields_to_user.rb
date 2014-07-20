class AddFieldsToUser < ActiveRecord::Migration
  def change
      change_column :users, :group, :int, :default => 0
      rename_column :users, :city, :location
      add_column :users, :hometown, :string
  end
end
