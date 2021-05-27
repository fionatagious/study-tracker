class AddMinutesToSessions < ActiveRecord::Migration[6.0]
  def change
    add_column :sessions, :minutes, :integer
  end
end
