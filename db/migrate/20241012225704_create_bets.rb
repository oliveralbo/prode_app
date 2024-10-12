class CreateBets < ActiveRecord::Migration[7.2]
  def change
    create_table :bets do |t|
      t.references :user, null: false, foreign_key: true
      t.references :match, null: false, foreign_key: true
      t.integer :home_score
      t.integer :away_score

      t.timestamps
    end
  end
end
