class CreateBuds < ActiveRecord::Migration[6.0]
  def change
    create_table :buds do |t|
      t.integer :session_id

      t.timestamps
    end
  end
end
