class CreateChampionships < ActiveRecord::Migration[7.2]
  def change
    create_table :championships do |t|
      t.string :name
      t.date :start_date

      t.timestamps
    end
  end
end
