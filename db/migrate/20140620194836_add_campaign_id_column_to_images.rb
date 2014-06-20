class AddCampaignIdColumnToImages < ActiveRecord::Migration
  def change
    add_column :images, :campaign_id, :integer
  end
end
