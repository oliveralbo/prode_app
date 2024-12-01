ActiveAdmin.register Match do
  permit_params :home_team_id, :away_team_id, :date, :home_score, :away_score, :championship_id

  index do
    selectable_column
    id_column
    column :championship
    column :home_team
    column :away_team
    column :date
    column :home_score
    column :away_score
    actions
  end

  form do |f|
    f.inputs do
      f.input :championship, as: :select, collection: Championship.all
      f.input :home_team, as: :select, collection: Team.all
      f.input :away_team, as: :select, collection: Team.all
      f.input :date, as: :datepicker
      f.input :home_score
      f.input :away_score
    end
    f.actions
  end
end
