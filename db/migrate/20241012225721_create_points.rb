class CreatePoints < ActiveRecord::Migration[7.2]
  def change
    create_table :points do |t|
      t.references :user, null: false, foreign_key: true
      t.references :championship, null: false, foreign_key: true
      t.integer :points

      t.timestamps
    end
  end
end
