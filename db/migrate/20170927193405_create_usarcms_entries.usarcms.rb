# This migration comes from usarcms (originally 20170927193104)
class CreateUsarcmsEntries < ActiveRecord::Migration[5.1]
  def change
    create_table :usarcms_entries do |t|
      t.string :type, index: true
      t.json :payload
      t.integer :user_id, index: true

      t.timestamps null: false
    end
  end
end
