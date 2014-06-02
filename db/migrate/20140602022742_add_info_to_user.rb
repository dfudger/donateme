class AddInfoToUser < ActiveRecord::Migration
  def change
    add_column :users, :type, :int
    add_column :users, :name, :string
    add_column :users, :city, :string
    add_column :users, :school, :string
  end
end
