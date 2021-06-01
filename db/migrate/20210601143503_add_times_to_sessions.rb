class AddTimesToSessions < ActiveRecord::Migration[6.0]
  def change
    add_column :sessions, :start_time, :timestamp
    add_column :sessions, :end_time, :timestamp
  end
end
