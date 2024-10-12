class CreateMatches < ActiveRecord::Migration[7.2]
  def change
    create_table :matches do |t|
      t.references :championship, null: false, foreign_key: true
      t.string :home_team
      t.string :away_team
      t.datetime :date

      t.timestamps
    end
  end
end
