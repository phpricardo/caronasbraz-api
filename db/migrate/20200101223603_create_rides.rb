class CreateRides < ActiveRecord::Migration[6.0]
  def change
    create_table :rides do |t|
      t.string :origin
      t.string :destiny
      t.string :departure_time
      t.integer :vacancies
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
