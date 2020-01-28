class CreateUserProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :user_profiles do |t|
      t.string :birthday
      t.string :gender
      t.string :profile
      t.string :document
      t.string :car_model
      t.string :name_car
      t.string :color_car
      t.string :board_car
      t.string :details
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
