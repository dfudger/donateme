class AddCampaignIdColumnToSchools < ActiveRecord::Migration
  def change
    add_column :schools, :campaign_id, :integer
  end
end
