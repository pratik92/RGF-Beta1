class AddAdminUserIdToProfiles < ActiveRecord::Migration
  def change
    add_column :profiles, :admin_user_id, :integer

  end
end
