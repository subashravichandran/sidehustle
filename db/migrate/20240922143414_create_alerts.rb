class CreateAlerts < ActiveRecord::Migration[7.1]
  def change
    create_table :alerts do |t|
      t.string :content
      t.datetime :trigger_at
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
