class CreateMeetings < ActiveRecord::Migration[5.0]
  def change
    create_table :meetings do |t|
      t.integer :team_id
      t.string :title
      t.text :description
      t.date :date
      t.time :time
      t.timestamps
    end
  end
end
