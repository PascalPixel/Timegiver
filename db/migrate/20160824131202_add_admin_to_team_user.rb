class AddAdminToTeamUser < ActiveRecord::Migration[5.0]
  def change
    add_column :team_users, :admin, :boolean
  end
end
