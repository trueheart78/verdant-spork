class CreateHeartRates < ActiveRecord::Migration
  def change
    create_table :heart_rates do |t|
      t.string :name
      t.integer :age
      t.integer :resting_pulse

      t.timestamps null: false
    end
  end
end
