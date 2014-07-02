class AddSIsPublishedColumnToCampaigns < ActiveRecord::Migration
  def change
    add_column :campaigns, :isPublished, :boolean
  end
end
