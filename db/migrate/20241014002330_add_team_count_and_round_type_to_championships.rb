class AddTeamCountAndRoundTypeToChampionships < ActiveRecord::Migration[7.2]
  def change
    add_column :championships, :team_count, :integer
    add_column :championships, :round_type, :string
  end
end
