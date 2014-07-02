class AddSIsAcceptedColumnToUsers < ActiveRecord::Migration
  def change
    add_column :users, :isAccepted, :boolean
  end
end
