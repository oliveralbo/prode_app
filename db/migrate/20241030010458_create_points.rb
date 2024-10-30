class CreatePoints < ActiveRecord::Migration[7.2]
  def change
    create_table :points, id: :uuid do |t|
      t.references :user, null: false, foreign_key: true, type: :uuid
      t.references :championship, null: false, foreign_key: true, type: :uuid
      t.integer :points

      t.timestamps
    end
  end
end
