class CreateVideos < ActiveRecord::Migration
  def change
    create_table :videos do |t|
      t.string :url
      t.references :campaign, index: true

      t.timestamps
    end
  end
end
