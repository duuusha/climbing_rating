class CreateClimbingGyms < ActiveRecord::Migration[6.0]
  def change
    create_table :climbing_gyms do |t|
      t.string :name
      t.string :web_address
      t.boolean :is_indoor
      t.boolean :is_public
      t.boolean :has_lead
      t.boolean :has_speed
      t.boolean :has_bouldering
      t.boolean :has_moonboard
      t.boolean :has_tensionboard
      t.boolean :has_kilterboard
      t.references :city, null: false, foreign_key: true

      t.timestamps
    end
  end
end
