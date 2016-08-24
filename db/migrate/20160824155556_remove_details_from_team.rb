class RemoveDetailsFromTeam < ActiveRecord::Migration[5.0]
  def change
    remove_column :teams, :last_name
    remove_column :teams, :first_name
    remove_column :teams, :title
    remove_column :teams, :rate
    remove_column :teams, :currency_sign
    remove_column :teams, :currency
  end
end
