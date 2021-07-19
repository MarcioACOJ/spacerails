class CreateAlienPowers < ActiveRecord::Migration[6.1]
  def change
    create_table :alien_powers do |t|
      t.references :alien, null: false, foreign_key: true
      t.references :power, null: false, foreign_key: true

      t.timestamps
    end
  end
end
