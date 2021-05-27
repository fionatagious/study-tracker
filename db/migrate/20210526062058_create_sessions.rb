class CreateSessions < ActiveRecord::Migration[6.0]
  def change
    create_table :sessions do |t|
      t.string :language
      t.string :project
      t.integer :minutes
      t.string :buddies

      t.timestamps
    end
  end
end
