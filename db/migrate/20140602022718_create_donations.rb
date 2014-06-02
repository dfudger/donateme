class CreateDonations < ActiveRecord::Migration
  def change
    create_table :donations do |t|
      t.integer :amount
      t.references :user, index: true
      t.references :campaign, index: true

      t.timestamps
    end
  end
end
