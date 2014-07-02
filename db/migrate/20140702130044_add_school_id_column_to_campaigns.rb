class AddSchoolIdColumnToCampaigns < ActiveRecord::Migration
  def change
    add_column :campaigns, :school_id, :integer
  end
end
