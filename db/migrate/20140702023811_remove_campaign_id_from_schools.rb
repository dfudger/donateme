class RemoveCampaignIdFromSchools < ActiveRecord::Migration
  def change
    remove_column :schools, :campaign_id, :integer
  end
end
