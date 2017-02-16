class CreateStrats < ActiveRecord::Migration[5.0]
  def change
    create_table :strats do |t|
      t.string :name
      t.string :map_name
      t.text :description
      t.boolean :approved
      t.integer :failed
      t.integer :succeeded
      t.integer :flashbangs
      t.integer :molotovs
      t.integer :smokes
      t.integer :grenades
      t.string :team
      t.integer :user_id
      t.boolean :on_eco

      t.timestamps
    end
  end
end
