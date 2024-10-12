class AddChampionshipToUsers < ActiveRecord::Migration[7.2]
  def change
    add_reference :users, :championship, null: false, foreign_key: true
  end
end
