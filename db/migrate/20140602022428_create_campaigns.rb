class CreateCampaigns < ActiveRecord::Migration
  def change
    create_table :campaigns do |t|
      t.integer :goal
      t.datetime :start
      t.datetime :end
      t.decimal :gpa
      t.string :title
      t.string :body
      t.references :user, index: true

      t.timestamps
    end
  end
end
