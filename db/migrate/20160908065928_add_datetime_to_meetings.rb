class AddDatetimeToMeetings < ActiveRecord::Migration[5.0]
  def change
    add_column :meetings, :datetime, :datetime
    remove_column :meetings, :date
    remove_column :meetings, :time
  end
end
