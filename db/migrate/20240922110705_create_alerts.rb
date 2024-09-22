class CreateAlerts < ActiveRecord::Migration[7.1]
  def change
    create_table :alerts do |t|
      t.integer :user_id
      t.string :content
      t.datetime :trigger_at

      t.timestamps
    end
  end
end
