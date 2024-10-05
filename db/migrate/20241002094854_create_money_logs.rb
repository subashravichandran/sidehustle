class CreateMoneyLogs < ActiveRecord::Migration[7.1]
  def change
    create_table :money_logs do |t|
      t.float :income
      t.jsonb :expenses

      t.timestamps
    end
  end
end
