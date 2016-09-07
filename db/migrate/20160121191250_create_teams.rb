class CreateTeams < ActiveRecord::Migration[5.0]
  def change
    create_table :teams do |t|
      t.text :description
      t.string :company_name
      t.string :color

      t.timestamps null: false
    end
  end
end
