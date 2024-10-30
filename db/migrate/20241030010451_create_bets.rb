class CreateBets < ActiveRecord::Migration[7.2]
  def change
    create_table :bets, id: :uuid do |t|
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.references :match, null: false, foreign_key: true, type: :uuid
      t.integer :home_score
      t.integer :away_score

      t.timestamps
    end
  end
end
