class CreateChampionships < ActiveRecord::Migration[7.2]
  def change
    create_table :championships, id: :uuid do |t|
      t.string :name
      t.date :start_date
      t.integer :team_count
      t.string :round_type

      t.timestamps
    end
  end
end
