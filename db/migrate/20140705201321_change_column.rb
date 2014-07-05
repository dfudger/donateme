class ChangeColumn < ActiveRecord::Migration
  def change
    change_column :campaigns, :body, :text
  end
end
