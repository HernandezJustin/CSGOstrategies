class CreateMapSubmissions < ActiveRecord::Migration[5.0]
  def change
    create_table :map_submissions do |t|
      t.integer :user_id
      t.integer :strat_id

      t.timestamps
    end
  end
end
